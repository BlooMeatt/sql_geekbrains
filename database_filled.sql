CREATE DATABASE vk;

USE vk;

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `city_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название города',
  `country_id` int(11) NOT NULL COMMENT 'Идентификатор страны',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (1, 'Hahnberg', 1, '2012-04-05 03:24:29', '1974-11-02 03:15:11');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (2, 'East Suzanne', 2, '1996-01-07 01:12:24', '2003-01-08 05:01:54');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (3, 'Lake Veronaberg', 3, '2006-09-11 18:41:03', '1985-02-17 18:39:34');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (4, 'Katelynnview', 4, '2018-12-07 20:35:31', '1980-03-24 01:17:05');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (5, 'Hillsville', 5, '1995-12-10 07:51:14', '2005-08-08 05:00:30');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (6, 'East Annieshire', 6, '2008-03-04 03:58:02', '1986-01-10 11:57:21');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (7, 'Bahringerbury', 7, '1977-04-11 18:49:51', '1981-09-07 22:50:18');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (8, 'Mitchellmouth', 8, '1981-11-13 17:31:26', '1976-08-07 20:18:53');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (9, 'Whiteside', 9, '2002-03-17 20:32:50', '1970-09-08 17:22:15');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (10, 'Cleoraside', 10, '1976-10-19 15:39:52', '1972-04-21 03:41:32');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (11, 'Port Altheafurt', 11, '2019-07-10 17:18:10', '1983-09-18 01:33:57');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (12, 'Torpstad', 12, '2004-06-22 11:19:36', '1974-01-27 07:56:44');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (13, 'Titoborough', 13, '1985-01-02 17:27:37', '2010-04-01 13:57:07');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (14, 'West Cindyhaven', 14, '2005-03-16 16:50:44', '1996-03-07 22:13:27');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (15, 'West Trycia', 15, '2018-01-13 03:04:08', '1987-10-02 00:52:28');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (16, 'West Gusland', 16, '2015-07-06 11:42:49', '1970-08-13 23:52:38');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (17, 'Brakuston', 17, '1971-05-05 02:18:29', '1993-10-26 17:40:20');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (18, 'Beerhaven', 18, '1977-08-23 22:12:12', '1988-06-18 01:47:23');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (19, 'New Kareemview', 19, '1979-01-04 13:11:38', '2014-05-05 05:11:55');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (20, 'Ceasarstad', 20, '2002-01-03 10:38:17', '1990-08-21 02:16:46');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (21, 'Jennieburgh', 21, '1985-07-02 04:56:00', '1979-01-15 10:56:29');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (22, 'Carolinechester', 22, '2005-08-31 15:18:20', '2015-10-25 09:39:45');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (23, 'South Lesleymouth', 23, '2018-05-10 22:14:50', '2008-05-19 04:21:23');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (24, 'East Maryam', 24, '1974-04-27 08:07:47', '1978-09-30 02:15:10');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (25, 'Port Athenahaven', 25, '1985-12-22 02:54:52', '2020-05-15 16:14:33');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (26, 'Port Alessandro', 26, '2015-09-15 09:56:28', '1970-01-04 15:16:05');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (27, 'Strosinhaven', 27, '1989-07-09 14:32:46', '2008-02-25 04:57:59');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (28, 'Port Kellen', 28, '1984-02-22 01:16:19', '1976-11-25 02:47:12');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (29, 'Shemarside', 29, '1993-06-23 05:39:08', '2006-02-12 10:46:01');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (30, 'New Lucianotown', 30, '2009-10-18 05:16:28', '1999-04-12 02:24:14');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (31, 'New Estherchester', 31, '1983-11-03 04:37:56', '1993-02-08 13:09:05');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (32, 'Port Reggie', 32, '2002-01-30 22:28:01', '1972-01-17 17:59:25');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (33, 'Lueilwitzburgh', 33, '1986-01-12 01:18:12', '1987-01-23 12:18:49');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (34, 'Port Camilaburgh', 34, '2005-04-06 04:50:44', '2006-09-09 04:07:18');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (35, 'Lake Jerrodborough', 35, '1999-01-10 04:09:34', '2015-09-20 15:51:42');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (36, 'Bartellbury', 36, '1986-06-07 16:58:02', '1970-10-15 18:40:54');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (37, 'Framimouth', 37, '1995-10-22 11:20:24', '1992-11-10 06:33:35');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (38, 'East Devon', 38, '2016-07-28 22:55:54', '2020-02-26 09:52:24');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (39, 'Hilbertville', 39, '1983-07-18 09:21:18', '1983-07-26 07:20:35');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (40, 'Port Marceloborough', 40, '2010-03-19 15:27:46', '1983-04-11 08:42:23');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (41, 'Harberbury', 41, '2018-05-21 20:00:56', '2020-05-13 17:22:53');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (42, 'East Kamren', 42, '2004-12-30 00:25:12', '2006-01-15 04:32:48');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (43, 'West Monroeborough', 43, '1972-12-14 00:07:41', '1970-02-26 10:59:57');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (44, 'Harberborough', 44, '2009-06-09 10:27:41', '1995-02-27 20:42:15');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (45, 'Shermanmouth', 45, '2005-02-25 06:18:57', '1978-04-15 07:53:15');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (46, 'South Leanna', 46, '2006-02-19 14:46:26', '1982-06-14 21:26:58');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (47, 'Lake Cassie', 47, '1977-10-11 04:36:46', '2019-02-23 19:57:13');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (48, 'Hirtheport', 48, '2001-03-21 06:47:06', '2000-02-14 03:55:42');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (49, 'Lake Sabryna', 49, '1993-06-22 08:57:11', '1971-05-09 21:47:26');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (50, 'New Maudieburgh', 50, '1977-02-16 06:36:23', '1991-05-18 17:59:08');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (51, 'Satterfieldview', 51, '1993-03-22 16:31:37', '2007-06-11 23:33:00');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (52, 'Flatleyburgh', 52, '1984-12-08 23:25:12', '2018-07-25 23:02:42');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (53, 'Adelineborough', 53, '2008-11-18 00:44:46', '1983-07-20 08:17:18');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (54, 'Spinkamouth', 54, '1973-12-31 04:19:50', '2011-06-28 07:23:08');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (55, 'Port Linneastad', 55, '1975-01-19 13:50:13', '2018-04-18 11:23:09');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (56, 'West Catalinaberg', 56, '2010-09-30 13:31:19', '1979-08-16 03:14:38');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (57, 'Raynorburgh', 57, '1973-08-07 06:19:11', '1992-03-14 01:48:05');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (58, 'Hodkiewiczburgh', 58, '1977-10-24 06:18:37', '2013-09-23 03:20:07');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (59, 'Port Kaelynville', 59, '1996-10-09 01:45:41', '1990-07-03 08:32:46');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (60, 'Concepcionport', 60, '2006-04-06 04:01:16', '1986-11-27 07:18:23');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (61, 'New Bertaside', 61, '2000-09-10 22:55:42', '1975-10-03 16:00:44');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (62, 'Luigifort', 62, '1999-08-12 09:53:41', '2013-04-18 10:40:54');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (63, 'Blancaborough', 63, '2009-09-09 19:25:57', '1992-12-07 10:00:41');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (64, 'West Gastonmouth', 64, '1971-04-23 12:21:15', '1973-06-20 19:23:13');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (65, 'Arlenemouth', 65, '1979-06-12 17:31:23', '2006-04-03 16:06:09');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (66, 'Aidanland', 66, '1985-02-21 15:36:31', '2015-07-27 00:32:54');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (67, 'Lake Nellamouth', 67, '2012-03-18 13:48:36', '2018-03-27 03:02:09');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (68, 'Rebekahborough', 68, '1983-05-21 19:44:04', '1974-08-18 02:38:50');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (69, 'Abigailberg', 69, '2012-12-11 00:19:39', '1973-02-23 03:48:01');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (70, 'South Maribelshire', 70, '1989-04-15 17:37:17', '1981-09-05 00:30:27');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (71, 'Luciusfort', 71, '1981-08-11 05:52:29', '1986-02-27 03:18:07');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (72, 'South Berylland', 72, '1971-10-24 14:04:47', '2019-02-22 17:06:04');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (73, 'Britneymouth', 73, '1991-10-07 11:10:14', '1974-04-11 02:40:52');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (74, 'Lake Aryanna', 74, '2000-09-22 19:19:34', '1978-07-14 21:50:40');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (75, 'West Burley', 75, '2007-09-14 03:01:49', '1986-03-28 08:32:31');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (76, 'Stokesburgh', 76, '2012-11-29 05:52:41', '2016-06-02 21:56:15');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (77, 'Roryland', 77, '2018-02-05 08:05:45', '1994-05-11 14:08:13');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (78, 'Sengerfort', 78, '1999-05-22 06:12:51', '1991-05-22 23:47:29');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (79, 'Boehmchester', 79, '1992-08-05 20:25:57', '1993-12-01 15:30:42');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (80, 'North Humberto', 80, '2014-03-26 18:52:29', '2019-05-02 12:20:24');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (81, 'Mosheton', 81, '1998-03-08 16:01:09', '2011-03-29 05:03:59');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (82, 'South Darrellfurt', 82, '1983-12-06 00:32:04', '2001-08-10 22:27:20');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (83, 'East Hilario', 83, '1982-11-23 19:35:34', '1990-01-05 13:35:44');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (84, 'Barrowsside', 84, '1975-06-15 15:13:44', '1985-04-06 00:49:55');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (85, 'Pamelastad', 85, '1998-09-09 13:21:04', '1971-11-05 07:27:59');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (86, 'Fletchershire', 86, '2016-10-26 10:43:42', '1970-07-14 18:00:06');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (87, 'North Orlo', 87, '1999-10-11 05:40:17', '2012-09-12 16:33:18');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (88, 'Port Talia', 88, '2004-03-06 07:03:43', '2016-11-22 08:23:36');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (89, 'New Reyestown', 89, '2012-02-16 11:32:06', '1984-08-17 10:03:11');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (90, 'Chelsieville', 90, '2008-07-09 14:32:40', '2013-01-30 11:36:38');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (91, 'Zoieville', 91, '1995-12-18 03:46:34', '2000-07-15 23:26:06');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (92, 'West Kayla', 92, '2006-07-29 02:18:24', '2014-05-29 08:25:17');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (93, 'West Jarredmouth', 93, '2002-07-27 11:38:14', '2010-10-01 02:37:52');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (94, 'Dianafort', 94, '1993-06-04 22:34:18', '2019-03-22 16:15:59');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (95, 'Caryview', 95, '1980-04-25 05:27:14', '1988-05-09 13:31:02');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (96, 'North Harveyborough', 96, '2018-01-30 13:47:06', '1985-01-19 16:03:42');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (97, 'Jakubowskistad', 97, '2018-04-18 01:32:22', '1986-11-16 16:47:12');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (98, 'Walshshire', 98, '1998-06-23 17:09:58', '1987-05-17 03:35:38');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (99, 'Kovacekfort', 99, '2016-05-13 06:00:48', '1987-01-10 05:18:40');
INSERT INTO `cities` (`id`, `city_name`, `country_id`, `created_at`, `updated_at`) VALUES (100, 'East Sophieton', 100, '1977-04-04 06:04:28', '1978-08-21 20:07:39');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'inventore', '2010-02-27 02:59:02', '2020-06-18 23:03:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'alias', '1985-06-13 05:49:51', '2020-09-19 00:08:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'vitae', '2002-06-03 03:58:42', '2000-02-17 18:49:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'numquam', '2016-03-08 21:13:14', '1982-04-21 23:05:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'id', '1996-08-05 09:49:47', '1999-10-14 07:09:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'laudantium', '2013-08-14 08:28:10', '1993-09-27 10:58:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'voluptatibus', '1980-01-04 04:28:51', '2001-11-09 11:36:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'soluta', '2015-08-14 22:51:03', '1998-01-23 20:55:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'aut', '2018-09-09 13:03:20', '2018-01-01 01:36:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'aperiam', '2007-01-03 23:05:49', '1990-12-08 07:48:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'eaque', '2016-03-10 23:48:29', '1980-01-25 03:08:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'ut', '2019-06-28 17:16:10', '2005-09-20 04:47:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'facilis', '1978-11-08 04:43:03', '1979-11-15 05:37:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'saepe', '2003-11-13 07:59:15', '1984-07-18 04:58:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'nulla', '2004-12-09 10:24:50', '1986-06-04 01:30:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'ipsam', '1970-05-03 03:29:15', '2003-01-04 13:09:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'rerum', '2020-06-13 22:43:55', '2003-08-30 19:38:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'quo', '1975-10-03 15:16:46', '2005-03-04 09:48:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'voluptatem', '2002-04-22 01:07:53', '1982-12-10 23:26:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'harum', '1988-09-01 14:44:55', '1984-11-09 08:19:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'quas', '2018-08-15 01:08:40', '1988-07-24 11:05:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'debitis', '1983-05-27 21:54:34', '1996-06-13 02:54:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'aliquid', '2009-01-20 12:47:54', '2010-03-14 11:27:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'qui', '2004-12-04 21:40:54', '1977-02-25 22:23:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'sed', '1987-02-17 13:04:01', '1979-09-29 08:26:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'voluptate', '2016-05-08 23:21:52', '2016-02-23 01:31:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'natus', '2007-11-18 02:41:49', '1977-07-12 01:25:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'a', '1981-01-17 07:05:18', '1987-10-20 11:16:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'ea', '2005-04-04 19:59:16', '1982-03-31 17:40:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'quam', '1972-09-03 10:09:10', '1976-08-24 08:49:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'nemo', '1986-10-15 04:11:43', '1980-12-10 20:42:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'voluptates', '2003-11-05 07:57:25', '2009-07-26 08:06:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'at', '2014-11-10 09:05:57', '2015-12-02 10:29:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'esse', '2010-11-11 00:16:00', '2011-05-20 07:01:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'consequatur', '1994-03-16 14:38:11', '1995-08-28 22:17:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'deleniti', '2006-04-04 22:34:23', '1984-11-18 14:48:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'magni', '2018-05-24 07:10:23', '1994-09-16 12:22:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'quos', '1972-01-29 09:26:38', '1982-04-22 11:01:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'optio', '1990-06-27 18:09:24', '2018-03-30 07:38:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'non', '2006-05-14 13:17:19', '1985-02-03 11:49:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'sunt', '2016-09-08 10:37:19', '1973-06-19 03:17:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'corporis', '1977-01-11 13:46:38', '1978-10-10 13:20:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'vel', '1990-11-27 20:15:36', '1989-02-01 19:07:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'nostrum', '1980-09-03 00:57:59', '2019-09-29 11:56:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'eos', '1990-09-30 18:07:38', '2013-12-14 07:32:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'blanditiis', '1993-08-08 11:06:37', '1976-01-11 14:20:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ducimus', '1993-12-27 04:50:54', '1970-01-05 10:49:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'dolorum', '2013-04-01 08:09:40', '1992-09-30 06:49:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'omnis', '1998-06-04 21:32:34', '2003-05-25 12:14:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'repellat', '1997-06-02 20:17:10', '2018-11-27 06:28:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'est', '1976-04-18 11:10:51', '2002-03-06 22:21:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'fuga', '2007-04-11 01:50:20', '1999-09-25 15:12:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'sit', '1984-08-27 17:22:02', '1992-07-23 07:46:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'sequi', '1992-11-08 01:46:45', '2018-10-19 19:27:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'quaerat', '1978-02-22 02:30:34', '2015-07-24 07:44:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'dolorem', '1985-02-19 17:41:39', '2007-11-17 03:43:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'quia', '2002-12-09 14:20:40', '1985-09-07 21:15:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'voluptatum', '2000-06-23 12:00:35', '1979-10-25 06:45:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'incidunt', '1984-12-03 18:43:16', '1999-03-14 17:39:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'sint', '2011-08-24 18:37:15', '2009-03-25 08:30:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'molestiae', '2017-12-28 16:44:22', '2001-01-24 16:07:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'commodi', '1997-03-09 18:34:57', '1980-03-16 00:46:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'illo', '1995-12-24 15:22:02', '1988-06-18 02:00:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'sapiente', '1979-02-25 04:02:24', '1980-02-11 11:01:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'aliquam', '2004-06-27 11:01:28', '2001-04-11 19:46:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'unde', '2020-07-17 06:20:55', '2001-11-06 00:53:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'rem', '2000-05-02 07:36:26', '2005-01-05 01:47:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'suscipit', '2017-10-12 15:29:22', '2018-08-04 17:57:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'eum', '2008-08-11 09:14:56', '1988-09-11 04:19:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'autem', '1979-07-03 22:53:25', '1972-02-08 19:56:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'odit', '1982-03-11 07:26:36', '2015-08-15 16:39:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'placeat', '1977-06-11 04:39:04', '2001-10-12 09:33:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'error', '1984-09-16 08:25:30', '2018-10-13 18:18:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'fugiat', '1977-10-06 06:30:12', '1991-11-11 03:57:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'dolores', '1981-07-01 07:24:08', '1977-12-12 09:49:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'tempora', '1996-10-31 16:05:35', '1977-08-21 12:00:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'nihil', '2015-06-30 17:00:08', '2019-02-22 13:52:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'ex', '1988-03-08 04:01:43', '1996-07-11 07:52:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'ipsa', '1978-06-24 10:26:59', '2001-09-04 02:17:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'cupiditate', '1982-03-14 09:10:11', '1998-10-10 19:46:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'et', '2003-10-06 00:02:09', '2019-10-05 12:37:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'necessitatibus', '1991-05-23 06:35:38', '2013-04-09 14:23:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'perspiciatis', '1976-02-11 05:00:56', '2009-08-16 23:45:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'explicabo', '1997-04-23 12:46:14', '1992-04-16 10:59:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'cum', '2006-12-09 19:49:03', '1999-10-13 03:38:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'doloremque', '1981-06-23 11:47:58', '2017-04-03 05:02:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'distinctio', '1990-02-15 21:48:08', '2016-02-27 15:36:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'eius', '2001-03-19 08:58:35', '1999-04-23 05:08:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'velit', '1988-10-29 11:23:11', '2002-03-31 01:34:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'beatae', '1980-04-17 06:03:50', '1999-12-20 00:41:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'excepturi', '1975-02-06 06:42:53', '2008-06-26 23:40:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ullam', '1975-12-03 20:28:44', '1982-03-07 13:43:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'perferendis', '1983-08-14 22:10:57', '2016-03-24 15:39:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'aspernatur', '2014-03-21 12:10:13', '1978-06-29 23:30:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'atque', '1992-04-20 10:38:33', '1991-06-03 04:52:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'totam', '2011-01-09 15:56:17', '1979-04-18 17:32:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'consequuntur', '1983-05-03 01:23:11', '2000-07-14 11:29:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'nobis', '1997-06-11 00:41:26', '2012-10-27 08:53:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'eveniet', '1970-12-12 00:42:30', '2006-08-05 05:26:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'assumenda', '1970-09-05 10:31:07', '1983-02-20 10:08:21');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 36, '1995-05-16 16:22:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1998-08-07 22:31:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '1975-04-10 09:39:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 11, '2019-08-19 07:21:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 35, '1979-11-13 11:44:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 45, '1972-08-03 04:32:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 64, '1988-06-12 15:05:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 28, '2008-10-05 10:28:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 78, '1983-04-18 12:14:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 69, '2005-07-07 13:15:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 7, '1979-04-11 15:11:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 56, '2000-12-28 03:05:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 85, '2016-11-14 20:20:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 88, '2005-03-21 23:54:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 58, '1978-11-14 21:32:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 60, '1993-06-14 03:46:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 77, '1991-05-04 18:21:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 19, '1997-11-23 04:41:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 39, '1990-03-05 23:11:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 62, '1973-08-17 16:17:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 64, '1992-07-18 16:55:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 12, '1996-04-20 09:44:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 28, '2015-10-10 21:59:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 89, '1987-11-07 03:49:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 7, '2014-10-06 01:25:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 69, '1976-04-18 07:12:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 8, '2009-03-03 06:14:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 33, '1993-02-02 23:42:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 90, '1986-10-14 12:28:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 73, '1982-08-03 01:28:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 11, '1978-06-09 06:38:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 43, '2008-05-05 20:06:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 20, '2016-12-17 21:04:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 39, '1991-07-13 07:14:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 78, '2009-11-10 18:13:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 39, '1978-01-21 17:28:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 58, '1995-12-21 00:39:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 98, '1995-05-06 12:16:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 58, '2013-07-03 17:16:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 62, '2010-11-23 09:40:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 1, '1981-09-17 09:18:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 86, '1988-04-19 23:06:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 30, '2005-08-06 20:49:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 98, '1985-03-29 15:47:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 59, '2018-08-30 15:36:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 68, '1993-09-05 22:40:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 2, '2019-03-24 20:12:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 13, '2010-11-03 19:20:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 34, '1998-08-30 23:11:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 62, '1997-12-16 23:35:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 83, '1982-09-16 01:16:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 34, '1990-04-18 14:26:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 32, '1993-11-10 15:11:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 63, '1983-11-30 03:43:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 99, '1972-12-16 01:23:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 47, '1993-10-13 02:38:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 3, '2008-03-19 00:13:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 11, '1976-08-13 14:40:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 38, '1982-03-17 03:41:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 66, '1985-03-31 20:54:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 69, '1970-03-06 15:46:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 16, '1986-08-29 06:50:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 1, '2006-07-16 15:06:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 10, '1993-11-22 08:59:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 44, '1993-10-12 13:38:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 71, '2018-03-05 02:39:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 50, '1972-04-17 20:47:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 61, '1980-08-08 05:57:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 25, '1970-11-21 14:59:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 87, '2001-02-16 09:16:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 30, '1971-11-28 09:11:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 94, '1989-03-18 11:02:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 84, '2019-05-23 18:03:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 59, '2010-10-19 18:38:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 6, '2005-12-21 07:26:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 93, '2006-02-07 14:54:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 23, '1998-11-21 02:34:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 76, '2018-08-20 07:39:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 36, '1978-10-31 09:07:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 40, '2017-02-04 05:18:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 28, '2015-03-26 23:25:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 31, '1980-02-28 19:24:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 54, '1994-10-08 01:26:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 19, '1991-07-20 14:56:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 21, '1983-08-22 19:18:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 32, '2003-08-01 11:41:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 79, '2006-04-09 20:16:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 18, '2009-05-12 23:17:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 29, '1976-10-23 15:45:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 93, '2012-09-05 14:32:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 29, '1982-09-17 05:51:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 95, '2017-03-13 21:00:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 23, '1978-10-31 03:45:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 16, '2002-12-13 20:59:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 19, '2009-09-11 16:49:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 90, '2006-04-21 18:57:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 30, '1987-02-05 21:06:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 71, '2013-12-16 17:24:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 74, '2012-09-25 02:08:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 55, '2018-08-20 04:12:55');


#
# TABLE STRUCTURE FOR: content
#

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(11) NOT NULL COMMENT 'Идентификатор пользователя',
  `message` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текствое сообщение',
  `media_id` int(11) DEFAULT NULL COMMENT 'Идентификатор медиафайла ',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (1, 1, 'Ullam sint blanditiis reiciendis hic consequuntur. Quod vel accusantium quas sit est nihil. Libero laborum ad qui aliquam ducimus.', 1, '2009-03-02 19:56:02', '2016-12-03 13:46:06');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (2, 2, 'Voluptatem nihil itaque nobis laudantium. Non iure totam suscipit nihil est blanditiis minima praesentium. Qui velit quis sunt temporibus voluptatibus. Et dicta vitae aut nihil.', 2, '1977-03-22 11:57:02', '2019-09-27 02:16:25');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (3, 3, 'Dolorem sit occaecati veniam non dolore rem ullam. Voluptatibus reiciendis aut ab asperiores numquam non dolor. Et in sit eos illum. Voluptas neque praesentium tempora qui ipsam.', 3, '2014-07-06 13:24:30', '2010-11-08 14:49:05');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (4, 4, 'Quaerat omnis recusandae iusto doloremque eveniet in minima blanditiis. Et vel alias autem vero dolore. Assumenda quo eligendi ducimus vitae.', 4, '1973-07-14 00:32:06', '1987-05-30 02:46:07');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (5, 5, 'Quis voluptatem voluptatem ut quidem hic est non. Saepe quasi doloremque ut dolorem vel corporis cumque. Mollitia non aut quia dolore dolore. Iste id aut necessitatibus iste.', 5, '1972-12-08 06:56:44', '1977-11-07 11:22:40');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (6, 6, 'Ab asperiores qui ad minima qui fuga et. Placeat ipsam tenetur ut praesentium dolorem.', 6, '2006-12-26 12:47:57', '1982-07-05 20:10:33');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (7, 7, 'Iusto illo qui non. Qui enim blanditiis quae aut minima totam officiis. Veniam dolor et quo quod qui. Et nihil facilis magnam necessitatibus voluptas.', 7, '1982-12-26 11:38:43', '2007-01-27 13:33:11');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (8, 8, 'Inventore incidunt dolores laborum. Aliquam ducimus nihil cupiditate quasi dignissimos. Voluptates minus illo voluptatem corporis. Nihil sunt aliquid quia dignissimos.', 8, '2017-07-20 21:37:26', '2010-10-31 01:35:11');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (9, 9, 'Modi est in qui voluptas et fuga quae. Ullam et eaque hic velit deserunt distinctio.', 9, '1987-06-24 21:30:15', '2005-04-25 04:04:03');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (10, 10, 'Unde animi voluptatem ut veniam tempore ut. Voluptatem enim aliquam esse. Accusantium sunt voluptatem non dolor corporis tenetur qui et.', 10, '1996-03-26 21:51:58', '1970-01-29 23:20:25');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (11, 11, 'Tenetur blanditiis aut aut voluptatem ut odit et consequatur. Id eos occaecati sint quod. Possimus sit autem commodi fugiat sit qui quaerat.', 11, '1999-05-10 20:03:40', '1994-09-18 14:18:50');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (12, 12, 'Nobis quos quidem sunt explicabo placeat magni. Consequatur voluptas aperiam quisquam minus voluptatem iure. Commodi qui non est porro repellendus.', 12, '2015-01-14 20:06:43', '1971-03-08 03:35:42');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (13, 13, 'Eos nobis quasi debitis vitae excepturi. Quis molestiae nobis vitae voluptatibus saepe sunt impedit quaerat. Aspernatur id animi omnis. Ex sapiente molestias consequatur eligendi voluptatibus dolor sed itaque.', 13, '2009-01-20 23:59:06', '2004-02-28 07:55:58');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (14, 14, 'Dolorem est animi voluptatem tempore. Saepe qui dolorum culpa aut occaecati natus dolorem quaerat. Error ad reiciendis quibusdam voluptatibus repudiandae. Vel asperiores voluptatem id dolore temporibus impedit eum est. Ea iusto dolorem ut consequatur iste.', 14, '1980-05-11 00:09:46', '2011-07-10 18:18:59');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (15, 15, 'Dicta dolore modi dolor repellat esse sunt natus. Impedit et quia possimus dolores.', 15, '2013-07-27 18:44:45', '1976-01-15 03:05:55');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (16, 16, 'A repudiandae et et error. Et autem ea adipisci tempore explicabo libero. Quos soluta ut vel pariatur sit aperiam recusandae quisquam.', 16, '2018-08-19 09:45:41', '1999-05-29 17:27:20');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (17, 17, 'Rerum provident provident rem et sunt iusto soluta. Voluptatem corrupti ipsum dignissimos libero assumenda id. Est necessitatibus amet qui sunt.', 17, '1989-09-17 11:09:56', '1972-03-15 02:58:07');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (18, 18, 'Explicabo ex iure et quis. Sapiente tenetur id aut natus.', 18, '1977-10-08 12:45:08', '1971-12-24 18:12:22');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (19, 19, 'Voluptatem minima eveniet ad est. Saepe placeat dolores soluta repudiandae et a ipsum rerum. Saepe vitae eum qui suscipit dolorum quia. Excepturi amet cumque quia voluptatem ab hic iure asperiores.', 19, '1973-02-01 00:55:14', '2005-11-09 00:14:46');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (20, 20, 'Voluptas reprehenderit veritatis dicta magni est. Illo quia et cupiditate dolor iste. Aut magni sunt temporibus est. Numquam repudiandae voluptas laborum vero.', 20, '2012-04-26 15:48:14', '1986-06-12 23:36:39');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (21, 21, 'Dolorum quia velit dolores sit quisquam debitis a molestiae. Cupiditate ducimus illum natus ipsum possimus autem vel consequatur. Aliquam est ad maiores. Consectetur adipisci quia quia id voluptates accusantium ab.', 21, '2012-01-08 18:52:57', '2013-12-19 07:13:54');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (22, 22, 'Velit atque dolor voluptas dignissimos sed at. Nisi ut suscipit vitae laboriosam velit quam vel. Unde sit autem velit illo dolor qui repellat. Cupiditate voluptatem numquam et ipsam adipisci deserunt. Recusandae qui adipisci rerum sequi officia.', 22, '1997-12-21 20:38:14', '1993-05-14 16:56:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (23, 23, 'Rerum vitae laboriosam ut laudantium sed. Itaque eos necessitatibus eos laborum voluptatem ducimus soluta. Explicabo nihil aliquid porro id impedit cum sint. Repellendus sint est facere.', 23, '2008-04-09 10:22:39', '1993-12-20 09:42:38');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (24, 24, 'Aut est est repellendus tempora. Et commodi facilis nisi. Eum aut itaque vel temporibus saepe.', 24, '1992-03-21 17:48:02', '2002-02-06 15:27:40');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (25, 25, 'Reprehenderit quaerat autem ipsa. Similique quod facere dolorum omnis ex placeat. Quos vel et fuga est laborum recusandae. Explicabo qui soluta voluptatem suscipit molestiae incidunt.', 25, '1989-07-18 07:04:56', '1985-04-28 04:08:46');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (26, 26, 'Similique esse magnam dignissimos et eos. Aut quasi voluptate vel quasi assumenda expedita. Exercitationem illo nobis quo laboriosam. Neque voluptas recusandae alias nam quo quae dolorem.', 26, '1984-09-25 05:26:38', '1995-01-25 10:42:36');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (27, 27, 'Id autem libero aliquid qui. Sapiente voluptas quasi autem perspiciatis cupiditate impedit. Quaerat ea nesciunt ad assumenda sed natus. Quos repellat aliquid adipisci alias.', 27, '1991-12-14 17:26:38', '2000-10-22 06:28:41');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (28, 28, 'Beatae nihil non aut voluptatem aperiam ducimus qui debitis. Ratione illo temporibus consequuntur et. Incidunt aut provident deleniti iste.', 28, '1990-09-29 11:48:38', '1979-07-16 23:52:05');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (29, 29, 'Aperiam culpa voluptatem odio voluptatem perspiciatis praesentium. Voluptas magnam quasi officia id explicabo occaecati iusto facilis. Illum aut et nostrum nobis ut beatae. Aut hic fugiat laboriosam consequatur aut quibusdam. Sed est quae labore possimus.', 29, '2001-04-26 01:54:47', '2005-03-29 11:38:35');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (30, 30, 'Et temporibus dicta sed et assumenda odio. Molestiae aut molestias nemo sed voluptatum beatae vitae. Maiores omnis facere iure perspiciatis.', 30, '1992-08-17 17:12:58', '1977-03-14 11:53:50');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (31, 31, 'Et esse aperiam error sequi. Commodi voluptatem eos ex. Facilis voluptatem aut corrupti corporis voluptatibus fuga. Beatae non enim quia quaerat accusamus debitis ea.', 31, '1989-06-20 15:58:06', '1978-06-15 05:59:22');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (32, 32, 'Quis qui molestiae facere unde voluptatem dolorem omnis repellendus. Voluptatum fuga ipsa ut sapiente fuga autem. Labore tenetur molestiae saepe dolore doloribus quia.', 32, '1984-08-11 11:03:53', '1972-04-22 05:12:07');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (33, 33, 'Animi ut aut quas dolores et non eum. Soluta nobis minus et ea eos soluta nam. Et ut aperiam alias veritatis labore et et. Omnis rerum provident officia sed quisquam deserunt.', 33, '1993-09-04 10:59:33', '1979-03-26 04:09:31');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (34, 34, 'Autem maxime numquam et enim cum. Rerum dolorem corrupti ad aut. Tempora sapiente quia delectus. Asperiores dolor optio autem officiis rerum est et consequatur.', 34, '2001-02-15 02:59:35', '1985-09-14 22:47:07');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (35, 35, 'Accusantium quo itaque sunt tempora. Tenetur quia omnis saepe in voluptates qui similique. Aliquid beatae quidem corrupti itaque aut facilis labore et. Vitae ipsam provident corrupti nihil nulla. Facilis ea iure rerum velit autem.', 35, '1987-12-07 15:49:56', '1982-09-17 05:24:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (36, 36, 'Saepe omnis quibusdam perspiciatis aut odit. Nostrum consequatur eligendi sint nemo aut. Voluptate facere optio perspiciatis adipisci et explicabo minima tempore. Aut saepe ipsam perspiciatis natus ratione in assumenda. Et sapiente perspiciatis quia.', 36, '1984-03-19 12:23:11', '1975-03-21 20:14:43');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (37, 37, 'Animi aliquid corrupti inventore omnis perferendis. Occaecati atque libero saepe delectus quia est. Modi blanditiis quos quasi ut voluptate dolor.', 37, '1991-05-14 06:53:05', '1993-05-14 01:05:48');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (38, 38, 'Non eum sit ut qui at. Reprehenderit vitae eum vel pariatur eos. Eius soluta molestiae a recusandae praesentium.', 38, '1985-03-12 19:05:55', '1994-01-02 08:26:40');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (39, 39, 'Et dolore iusto maxime consequatur qui. Doloremque accusamus est quia eaque rerum sapiente. Voluptates voluptates cumque distinctio delectus. Animi veritatis minus enim illum consequatur distinctio quia aut.', 39, '1993-08-22 12:11:31', '1998-08-14 11:42:38');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (40, 40, 'Voluptatem quisquam harum perspiciatis minima aut quia. Blanditiis aut voluptatibus qui dolores earum aut autem. Expedita molestias libero voluptatem non sint magnam.', 40, '2019-03-18 14:51:39', '2016-10-29 23:49:45');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (41, 41, 'Ut neque excepturi id velit voluptas. Est veritatis temporibus ab inventore ipsa nam. Assumenda labore nobis eveniet tenetur consequatur. Ipsum recusandae odit temporibus similique aliquid. Ratione quod id nostrum doloremque veniam.', 41, '1978-08-14 00:41:48', '1993-05-18 02:04:58');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (42, 42, 'Voluptatibus quis eos distinctio laboriosam ullam asperiores qui. Vero reprehenderit eos nemo placeat distinctio. Odit doloremque voluptates animi ut rerum repudiandae accusantium.', 42, '2013-09-25 17:44:25', '2019-03-04 13:22:56');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (43, 43, 'Et vero quasi et facilis. Ex ut ea laborum illum et. Laudantium odit nobis nobis eos explicabo facere.', 43, '1987-08-04 22:21:30', '1998-03-21 17:11:11');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (44, 44, 'Molestiae veritatis accusantium ullam nisi temporibus culpa ut. Fuga et iste soluta et voluptas. Magni et non dignissimos iste aliquid. Eos iste a consequatur nesciunt.', 44, '1996-05-21 06:26:32', '1982-10-01 23:58:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (45, 45, 'Voluptas dolore quibusdam perferendis et voluptas. Reiciendis magnam omnis architecto tenetur aut autem. Nulla maxime est excepturi exercitationem maiores quibusdam eaque nisi.', 45, '1970-06-14 14:26:31', '1984-05-25 03:48:25');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (46, 46, 'Commodi id quae enim ab. Aut recusandae libero ab sit ratione. Qui consectetur omnis ullam aut eaque. Laborum atque doloribus ex.', 46, '2018-06-01 02:39:06', '1980-10-28 16:17:43');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (47, 47, 'In aut sunt distinctio ipsam veritatis culpa. Sit fugiat sunt enim iste qui eligendi. Placeat et possimus dignissimos voluptas placeat quaerat. Voluptas rerum voluptas reprehenderit at tempora aut necessitatibus.', 47, '1979-10-30 12:38:32', '2017-08-01 17:41:19');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (48, 48, 'Ut natus veritatis totam aut ab aut harum. Iusto iusto officiis architecto nisi sit culpa sequi labore. Sit similique alias et quod fugiat vero voluptas.', 48, '2015-06-21 20:28:51', '1979-11-01 01:35:21');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (49, 49, 'Sequi qui veniam ut facere. Consequatur cupiditate fugit ut autem molestias reprehenderit aut. Voluptate voluptates iure dolorem sapiente nam animi corrupti pariatur. Ab facilis exercitationem deleniti.', 49, '1972-05-02 17:12:26', '1987-01-13 00:12:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (50, 50, 'Qui ut modi consectetur reiciendis ut assumenda quisquam error. Similique fuga neque quia recusandae voluptatum beatae distinctio. Est in ipsum consequatur cum.', 50, '1987-07-10 21:19:19', '1974-10-07 23:10:53');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (51, 51, 'Architecto error dolorem at ullam ea iure. Voluptas ipsum est sed in alias suscipit vel perspiciatis. Ut minima libero et asperiores facilis.', 51, '2003-03-27 11:07:27', '2002-01-13 21:28:13');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (52, 52, 'Et qui ut eum dolorum in cupiditate sint repellendus. Incidunt nihil ex modi facilis et. Quam illo eveniet voluptatem ut sit et. Aperiam accusamus dolores excepturi laborum non molestiae.', 52, '1991-01-07 20:31:40', '2017-08-16 13:10:36');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (53, 53, 'Aliquam esse vero necessitatibus. Eos unde debitis aut voluptas. Deserunt qui nisi maxime. Adipisci recusandae libero iste iure.', 53, '1998-01-09 11:23:58', '1980-01-16 05:58:45');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (54, 54, 'Aut neque nobis natus ea. Suscipit qui ab sit perferendis. Placeat corporis veniam dolor. Aperiam occaecati voluptates quia voluptatibus ut maiores ea.', 54, '1993-06-14 09:01:59', '1988-10-03 09:22:28');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (55, 55, 'Enim aut aliquam et provident suscipit. Corporis pariatur excepturi velit porro. Suscipit delectus reiciendis in.', 55, '2003-09-10 09:41:44', '1974-12-25 01:44:49');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (56, 56, 'Fuga magni ut et consequatur ut. In minus qui est qui qui commodi dolores rerum. Consequatur blanditiis velit labore corporis omnis aut neque. Necessitatibus porro quas omnis tempora saepe.', 56, '1983-10-26 00:32:31', '2008-06-26 07:33:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (57, 57, 'Commodi adipisci aliquam dolorem aut qui atque officiis. Consequatur voluptatem similique rerum dolorem rem. Nobis non vitae atque quidem inventore ipsa iure provident.', 57, '1972-02-12 23:56:45', '1983-12-02 02:18:16');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (58, 58, 'Nam molestiae architecto cum ullam facere quia et harum. Tenetur aut laborum molestiae asperiores exercitationem. Esse aspernatur in tempore nemo suscipit.', 58, '1981-07-02 14:53:46', '1997-02-03 04:17:47');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (59, 59, 'Harum quos amet illum hic nisi qui possimus. Eum porro aut id commodi est nostrum voluptas. Ut ipsa voluptatem ut ut praesentium molestiae est.', 59, '1998-09-22 06:02:40', '1981-02-19 15:14:57');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (60, 60, 'Illum autem voluptatibus quam neque officiis maiores. Ut dolor cum et nam aut. Architecto doloremque laborum esse voluptas quidem. Ea facilis iusto exercitationem.', 60, '1982-09-28 21:51:16', '1997-08-03 13:00:54');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (61, 61, 'Repellendus dolorem ipsa quos rerum commodi in. Id possimus dolores sit laboriosam.', 61, '1985-03-19 04:32:44', '1984-12-26 09:39:55');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (62, 62, 'Occaecati consequuntur vitae quas quibusdam. Sed aliquam nihil aut rem qui. Aliquam ut quasi error totam officiis debitis perspiciatis autem.', 62, '1987-01-25 19:52:59', '1974-06-01 04:23:10');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (63, 63, 'Sequi quasi eum placeat optio repellat vero. Porro qui vel provident repellendus consequatur aut. Ut velit eligendi voluptatem. Aut repudiandae quia animi quaerat id vitae.', 63, '1975-09-27 08:56:05', '2003-12-01 01:53:07');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (64, 64, 'Sit corrupti sed ipsa tenetur fugiat et voluptatum. Distinctio deserunt qui ipsum officia vero delectus tempora. Ea ea sit rem.', 64, '1993-01-04 16:42:43', '1986-08-15 01:55:36');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (65, 65, 'Quia quasi voluptas suscipit nostrum ducimus. Omnis ut itaque suscipit quidem. Quia eligendi occaecati ut quia at velit. Quia dolore facilis perspiciatis omnis ullam.', 65, '2017-08-08 21:20:40', '1998-12-13 12:29:30');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (66, 66, 'Dolor corporis quia quae sunt atque omnis. Laudantium et aliquam molestiae occaecati. Quos eos vero rerum enim quos optio.', 66, '1975-02-15 01:56:31', '1974-09-09 19:08:53');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (67, 67, 'Neque recusandae et id sed. Eum natus quia laboriosam totam. Sequi enim ut dolorem tenetur quibusdam. Reprehenderit enim est id eveniet odio. Perspiciatis omnis ab est qui earum perspiciatis facere.', 67, '1986-08-15 20:20:15', '2005-06-30 03:23:41');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (68, 68, 'Eos est voluptas veniam corrupti. Suscipit incidunt dolorem aspernatur animi labore reiciendis voluptatibus. Et qui distinctio sit dicta aliquam aut.', 68, '2017-06-16 04:54:00', '1972-01-08 18:39:27');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (69, 69, 'Aut quia voluptas culpa sint consequatur est eum. Molestiae repellendus quos aut veniam aut qui vitae. Et debitis sed nobis ut voluptatem. Nihil quo dolores quod quidem rerum ipsam soluta magni.', 69, '1973-08-01 14:18:51', '2003-10-11 05:21:15');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (70, 70, 'Expedita rerum tempore quia sit iure nostrum est. Repellat rerum et quo ad alias. Labore rerum molestiae est nesciunt similique voluptatem accusantium. Possimus similique enim vel commodi est reiciendis rerum.', 70, '1970-05-01 11:45:30', '2008-10-12 22:53:08');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (71, 71, 'Commodi molestiae natus neque dicta rerum. Aut consectetur voluptates voluptate voluptas. Deserunt consequuntur quis aperiam voluptatibus ducimus qui.', 71, '2007-02-28 03:03:37', '2006-05-27 22:04:43');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (72, 72, 'Voluptate aliquid deleniti eos molestiae et aut odit. Ducimus natus provident quo.', 72, '2013-06-06 14:00:51', '1998-03-25 15:41:27');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (73, 73, 'Perspiciatis et tempora molestiae quo iure. Perferendis ut laudantium tempore aut qui reprehenderit. Suscipit fuga sapiente sunt facere id sapiente labore. Qui et non hic neque aliquid qui.', 73, '2005-07-06 02:21:06', '2012-09-13 21:47:52');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (74, 74, 'Ratione animi doloremque suscipit sed fuga necessitatibus necessitatibus. Vel placeat quod omnis in. Et officia aliquid consequatur et sint suscipit voluptas. Aliquam autem voluptates repellendus sit voluptates et laudantium.', 74, '2014-10-05 03:13:29', '1986-03-30 10:06:35');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (75, 75, 'Suscipit quod numquam est provident non ut. Non est delectus eos laboriosam ut at quis neque. Ducimus est et laudantium odit ullam dolorem facere. Aliquam ratione qui voluptate. Quaerat animi et est non accusamus voluptatem quisquam.', 75, '1982-10-04 05:13:17', '2014-06-18 17:26:09');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (76, 76, 'Officia necessitatibus occaecati nihil non non necessitatibus corporis. Quibusdam iure quia suscipit dolores. Et corporis aliquam ut consequatur. Natus dicta reprehenderit non nostrum incidunt recusandae.', 76, '2019-03-31 20:20:40', '2007-12-18 12:34:16');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (77, 77, 'Illum quis qui optio adipisci aspernatur. Ut officiis voluptatibus fugiat esse excepturi exercitationem amet. Est nostrum sequi corrupti ut non officiis nesciunt delectus.', 77, '1990-05-22 10:32:54', '2007-07-13 07:10:34');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (78, 78, 'Sit ipsam tenetur nostrum sequi dolor excepturi facilis. Ut cum accusantium accusamus aut odio omnis totam asperiores. Illum perspiciatis est eveniet. Dignissimos repudiandae ut doloremque voluptate dolorem.', 78, '1979-05-21 15:48:34', '1973-03-27 07:22:55');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (79, 79, 'Consequatur tempora nam illum dolor autem et sit dignissimos. Autem quos qui minima recusandae sunt. Quis quasi ab eum ipsam eos accusamus. Quia facere et ut sint.', 79, '1976-11-21 11:30:17', '2010-11-10 22:27:24');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (80, 80, 'Neque nihil aut voluptatem ipsa voluptatem quis. Voluptatem inventore quos dignissimos quasi.', 80, '1997-04-01 04:14:52', '2014-09-01 20:09:30');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (81, 81, 'Fugiat id labore soluta sed dignissimos culpa omnis. Consequatur impedit soluta quo sunt. Animi sapiente debitis labore optio. Exercitationem quaerat sunt natus vel blanditiis numquam.', 81, '1972-02-01 20:11:14', '1984-10-28 18:40:13');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (82, 82, 'Sint asperiores explicabo adipisci rerum dolor non hic inventore. Sed accusantium qui ut at. Consequatur placeat nostrum est sed. Recusandae qui voluptates aut quos praesentium enim sit.', 82, '1995-03-30 04:13:26', '2001-08-21 09:23:59');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (83, 83, 'Soluta provident quam quod ipsam at. Quis et labore enim magnam qui ducimus aspernatur aut. Enim labore unde necessitatibus nihil iste possimus quia.', 83, '1992-01-11 23:26:25', '1999-08-30 22:58:33');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (84, 84, 'Incidunt amet quo labore est. Sequi nemo rem nostrum ipsam natus. Corporis mollitia illo et mollitia.', 84, '1970-04-17 04:11:23', '1998-01-12 10:45:59');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (85, 85, 'Tenetur deleniti natus necessitatibus ut cupiditate. Et fugiat perferendis ut porro ipsam. Consequatur deserunt reprehenderit voluptatibus consectetur officiis. Magni et in temporibus repellat voluptatem molestiae.', 85, '2009-07-09 09:37:40', '2006-11-27 10:21:00');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (86, 86, 'Nesciunt aut voluptatem minus officiis eveniet. Sunt quibusdam laudantium accusamus. Natus dignissimos error fugit non exercitationem aut.', 86, '1996-02-29 20:29:01', '1999-09-29 09:00:47');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (87, 87, 'Quidem dolores ipsam optio tempore. Eius perferendis sunt repellat quisquam ea. Mollitia asperiores eius et rerum sint.', 87, '1971-06-26 00:08:49', '2020-07-31 04:46:45');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (88, 88, 'Dolores at velit iste quae nobis. Voluptas saepe iure temporibus possimus neque. Culpa et nemo quidem qui sequi adipisci.', 88, '2017-09-30 18:18:12', '1973-05-13 13:54:58');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (89, 89, 'Dolorum odit sed perferendis voluptatibus accusamus quo. Velit ut et nihil vero. Fuga nisi maxime sapiente voluptate.', 89, '2004-03-25 21:08:48', '1992-07-22 23:45:05');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (90, 90, 'Dolorum omnis quia qui exercitationem laborum. Nesciunt qui ad occaecati voluptate. Exercitationem vero sit asperiores consectetur incidunt quam voluptatem.', 90, '1988-02-14 04:49:08', '1992-06-18 05:04:48');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (91, 91, 'Voluptas voluptas ipsa consequuntur tempore eligendi et voluptatem. Est et eaque optio labore.', 91, '1997-09-05 05:00:51', '2018-07-26 21:26:38');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (92, 92, 'Ipsam aut laudantium provident ipsum perferendis distinctio maiores. Ex natus ea sint aut natus quidem. Voluptates tempora maiores enim corporis atque.', 92, '1999-02-11 05:29:06', '2016-07-27 12:04:08');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (93, 93, 'Tempora rerum non ipsum voluptas minima sunt ut. Est neque culpa porro eum dignissimos. Vel est cum fuga quod nihil laborum. Error corporis consequuntur atque omnis quas quo.', 93, '2010-05-25 14:20:04', '1982-09-13 09:42:46');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (94, 94, 'Ipsum animi quas repudiandae ipsam ad quae et. Dolorem perferendis error repellendus repellendus sint voluptates. In unde eos numquam iste dolorem consequuntur. Sed qui magni aut repellendus dicta sequi.', 94, '2013-07-28 03:24:56', '2016-04-16 17:36:38');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (95, 95, 'Et corrupti quia sit veritatis debitis. Dicta quis et quod doloribus sit. Omnis perspiciatis accusantium sunt et dolorem repellat non.', 95, '1973-12-10 05:39:27', '2008-02-24 04:41:55');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (96, 96, 'Aut quo facere sunt. Aut ut voluptatibus qui voluptatem. Iusto autem deleniti libero.', 96, '2020-12-23 23:04:04', '1981-04-18 23:11:42');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (97, 97, 'Labore cum distinctio qui rem ratione. Voluptatem tenetur cumque necessitatibus sunt veritatis. Et voluptatum numquam explicabo non quasi. Odit ipsam libero facere autem id voluptas.', 97, '1977-12-12 10:47:13', '2010-01-02 12:13:16');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (98, 98, 'Nihil aut beatae sit incidunt dolorum voluptatem libero. Et est excepturi dolor earum amet minus voluptatem. Velit facilis quo ut optio rerum in ad.', 98, '2003-04-30 21:53:38', '1984-01-31 20:38:25');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (99, 99, 'Et ut laboriosam fuga architecto quidem. Tempora ut fugiat officiis nam impedit. Reiciendis quia voluptatem in est laborum.', 99, '2019-07-28 07:38:55', '1976-07-21 04:04:26');
INSERT INTO `content` (`id`, `user_id`, `message`, `media_id`, `created_at`, `updated_at`) VALUES (100, 100, 'Dolore necessitatibus et suscipit id. Placeat voluptas aliquam et velit autem accusantium sunt. Ut voluptas enim et est. Sed sed aspernatur dolores fugiat eos.', 100, '2012-09-15 08:48:01', '2019-09-10 15:25:22');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `country_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название страны',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (1, 'Barbados', '1979-07-17 08:29:19', '1989-08-06 21:31:02');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (2, 'Liechtenstein', '1984-02-05 12:27:08', '1999-05-05 13:09:50');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (3, 'Cuba', '2012-01-03 09:15:45', '1972-01-02 07:40:08');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (4, 'Egypt', '2017-11-29 12:25:55', '1991-06-08 22:40:44');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (5, 'Montserrat', '1984-11-02 03:36:43', '2015-01-01 01:41:05');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (6, 'Wallis and Futuna', '1989-11-27 13:38:13', '1970-06-19 10:47:14');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (7, 'Guinea-Bissau', '1993-05-02 06:55:19', '2020-11-08 16:36:31');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (8, 'Lao People\'s Democratic Republic', '1991-04-01 16:46:33', '1970-08-26 23:35:15');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (9, 'Ukraine', '2004-08-26 07:52:14', '1995-04-18 05:50:59');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (10, 'Malawi', '1970-06-17 06:44:58', '1970-03-01 17:29:26');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (11, 'Panama', '1974-11-17 16:05:35', '1992-12-31 01:17:32');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (12, 'Greece', '1987-07-20 03:28:46', '1999-03-10 07:28:23');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (13, 'Ireland', '1994-08-14 18:24:00', '1997-08-03 13:12:35');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (14, 'Guadeloupe', '1975-01-02 13:40:48', '1972-04-25 00:57:30');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (15, 'Niger', '2019-04-30 17:00:36', '2009-05-17 02:18:05');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (16, 'Togo', '1985-10-26 01:04:38', '1994-09-02 07:08:19');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (17, 'Korea', '2020-02-25 00:12:15', '2002-05-16 03:37:06');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (18, 'Botswana', '2004-09-11 10:47:52', '1989-05-05 01:42:42');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (19, 'Uganda', '2012-02-09 00:54:58', '1978-04-24 07:00:43');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (20, 'Grenada', '2015-03-08 11:04:19', '1984-03-04 14:08:02');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (21, 'Poland', '1993-12-29 13:50:58', '2004-05-12 02:30:50');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (22, 'Iraq', '1995-02-24 23:30:32', '1971-09-11 00:44:56');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (23, 'Macedonia', '2017-10-31 17:43:22', '1971-03-01 22:08:23');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (24, 'Bangladesh', '2018-04-04 09:39:44', '1997-03-03 13:40:26');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (25, 'Liechtenstein', '2002-03-27 12:05:00', '1976-12-29 09:52:42');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (26, 'Poland', '1976-02-04 16:46:47', '2010-02-24 19:19:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (27, 'Mauritius', '1984-08-30 16:51:59', '1993-09-08 13:14:21');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (28, 'Mayotte', '2006-09-28 02:39:41', '2001-03-13 23:06:36');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (29, 'Armenia', '2018-03-03 10:46:59', '1971-10-12 18:15:44');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (30, 'Luxembourg', '1970-10-31 02:49:08', '1992-09-23 19:45:59');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (31, 'Zambia', '2019-08-28 12:55:02', '2008-01-08 20:25:40');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (32, 'Heard Island and McDonald Islands', '1993-01-12 08:18:53', '1977-09-29 17:11:12');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (33, 'Sweden', '2006-06-06 07:25:26', '2005-10-31 17:35:15');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (34, 'Botswana', '2019-01-12 21:34:55', '1995-11-26 12:26:32');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (35, 'Norfolk Island', '2020-08-01 23:35:00', '2019-03-09 20:59:07');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (36, 'Thailand', '2002-02-15 18:07:27', '2014-11-30 06:03:29');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (37, 'Uganda', '2009-04-21 14:08:53', '2017-08-29 11:52:31');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (38, 'Ecuador', '1972-08-26 14:00:44', '2017-01-14 06:10:49');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (39, 'Burundi', '1992-08-13 13:12:56', '1991-07-04 05:36:55');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (40, 'Lesotho', '1989-11-09 02:10:17', '1986-11-27 09:06:45');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (41, 'Guadeloupe', '1972-04-19 00:36:28', '2001-04-03 10:45:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (42, 'Serbia', '2006-01-10 12:37:43', '2001-05-31 15:38:54');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (43, 'Turks and Caicos Islands', '2003-12-25 15:37:37', '1986-05-04 23:26:09');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (44, 'Tajikistan', '2007-07-13 18:42:35', '2007-10-24 15:27:02');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (45, 'Guyana', '1978-01-19 12:16:10', '2004-09-30 07:36:35');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (46, 'Croatia', '2002-07-05 20:51:12', '2013-10-20 22:05:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (47, 'Micronesia', '1980-06-19 03:37:01', '1981-09-01 00:44:31');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (48, 'Indonesia', '2020-10-05 16:25:18', '2002-08-10 17:24:03');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (49, 'Hong Kong', '1980-12-28 23:11:59', '2018-07-29 19:21:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (50, 'El Salvador', '1974-01-15 02:21:16', '1971-01-20 03:44:03');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (51, 'Isle of Man', '2000-05-15 02:46:46', '2003-09-04 15:21:51');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (52, 'Guam', '2003-06-25 14:50:47', '1979-12-17 10:45:32');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (53, 'Botswana', '2010-05-02 08:12:31', '1970-06-28 10:15:46');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (54, 'Guadeloupe', '1978-03-31 01:48:15', '1987-06-17 11:16:09');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (55, 'Puerto Rico', '1981-07-10 04:54:32', '1978-02-11 12:52:41');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (56, 'Andorra', '1972-04-03 07:56:04', '1983-11-24 22:42:54');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (57, 'Greenland', '1973-07-18 07:35:02', '1991-09-19 03:06:16');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (58, 'Christmas Island', '1983-04-15 07:51:44', '2009-10-06 12:38:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (59, 'Rwanda', '2019-11-30 07:37:18', '2018-08-07 11:23:20');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (60, 'Malaysia', '1982-05-04 17:50:21', '1982-10-07 00:15:16');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (61, 'Saint Vincent and the Grenadines', '1992-06-15 23:40:23', '2014-12-08 18:45:46');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (62, 'Saint Martin', '1973-03-02 08:35:06', '2018-09-10 11:08:25');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (63, 'Madagascar', '1978-11-27 21:32:24', '2011-10-20 06:23:42');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (64, 'Hong Kong', '1990-07-17 18:38:15', '1983-08-20 14:31:03');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (65, 'Azerbaijan', '2002-04-08 23:12:46', '1970-02-06 18:55:51');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (66, 'Antigua and Barbuda', '2007-04-14 12:29:25', '2020-07-08 14:36:58');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (67, 'Uganda', '2004-05-19 12:13:18', '2001-04-15 01:49:45');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (68, 'French Guiana', '2008-06-24 18:29:50', '2008-09-28 14:05:43');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (69, 'United States Virgin Islands', '2000-01-04 05:28:54', '1983-06-01 01:33:52');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (70, 'Montenegro', '1982-01-22 18:51:03', '1974-08-07 10:05:50');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (71, 'Singapore', '2011-08-14 19:09:16', '1984-03-28 06:44:20');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (72, 'South Georgia and the South Sandwich Islands', '1984-07-19 19:34:49', '1989-09-08 12:21:12');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (73, 'Philippines', '1984-01-12 05:18:35', '2012-06-25 00:54:33');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (74, 'Italy', '1996-09-23 06:41:29', '2015-04-12 13:17:19');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (75, 'Guatemala', '1991-01-01 03:13:47', '1974-12-06 07:28:02');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (76, 'Argentina', '1981-01-05 19:26:27', '2006-03-07 05:36:39');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (77, 'Algeria', '2003-09-07 21:27:56', '1973-06-18 09:29:58');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (78, 'Argentina', '1993-03-03 03:37:15', '1995-06-13 06:12:18');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (79, 'Monaco', '1986-04-17 12:22:53', '2012-02-02 18:18:17');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (80, 'Zimbabwe', '1971-03-30 23:50:09', '1991-10-05 15:48:56');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (81, 'Australia', '2006-06-16 13:06:06', '1975-12-20 15:38:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (82, 'Mongolia', '1988-09-09 19:51:56', '2003-01-12 15:49:46');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (83, 'Algeria', '1998-04-15 18:01:17', '1981-10-19 01:35:26');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (84, 'Equatorial Guinea', '2020-06-12 07:54:35', '2000-05-15 05:38:27');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (85, 'Serbia', '1996-01-06 11:57:07', '1994-07-25 03:31:36');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (86, 'Micronesia', '1975-07-16 14:59:42', '1984-10-20 15:50:37');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (87, 'Martinique', '1979-05-15 10:45:23', '1991-07-29 14:38:53');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (88, 'Djibouti', '2005-11-18 11:43:12', '1985-02-12 10:33:20');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (89, 'Rwanda', '2014-06-02 23:28:48', '2006-03-27 19:24:37');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (90, 'Bermuda', '2015-08-02 10:04:18', '1985-09-19 20:17:37');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (91, 'Nauru', '1989-06-01 05:37:31', '2007-02-10 13:10:15');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (92, 'Libyan Arab Jamahiriya', '2004-09-05 21:03:35', '1978-03-08 02:17:59');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (93, 'Falkland Islands (Malvinas)', '1985-08-18 04:36:24', '2017-12-03 00:17:34');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (94, 'Indonesia', '1989-06-07 18:59:09', '1986-02-10 19:59:47');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (95, 'Kyrgyz Republic', '1998-06-29 17:52:17', '1975-04-19 05:31:10');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (96, 'Turkey', '1993-01-05 19:28:22', '1981-07-16 20:55:22');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (97, 'Liechtenstein', '1981-06-09 04:18:19', '2013-12-17 01:02:54');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (98, 'Tajikistan', '1973-10-02 16:17:45', '2015-06-08 00:52:46');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (99, 'Georgia', '2001-12-09 13:02:21', '1998-01-21 00:04:40');
INSERT INTO `countries` (`id`, `country_name`, `created_at`, `updated_at`) VALUES (100, 'Myanmar', '1985-07-21 15:17:41', '2018-06-28 00:02:49');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 75, 101, '1998-12-11 03:15:35', '2013-12-25 13:00:35', '1973-10-11 06:07:33', '2016-01-21 23:12:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 81, 101, '2003-07-11 04:57:02', '1978-06-07 19:03:56', '2012-08-18 02:37:23', '1971-05-10 11:56:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 82, 101, '2018-05-22 15:08:28', '1991-02-28 21:19:58', '1995-03-06 21:58:59', '1991-05-30 04:01:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 69, 103, '2011-11-08 02:09:52', '1974-10-11 07:41:42', '1988-11-17 08:16:34', '1985-01-21 06:33:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 42, 101, '1989-04-07 00:12:55', '1974-04-28 02:12:55', '1985-05-06 07:27:23', '1979-10-06 23:21:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 56, 103, '1990-06-12 23:49:56', '2011-09-20 12:01:21', '2015-03-16 18:48:04', '1987-05-08 08:11:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 73, 101, '1977-05-19 18:22:09', '1995-04-16 02:33:16', '2011-06-21 08:18:35', '2017-11-16 03:43:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 60, 101, '1989-08-11 22:57:42', '2018-06-17 08:18:16', '2007-12-17 06:28:56', '1972-05-27 10:22:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 89, 108, '1989-09-15 23:40:55', '2007-02-07 23:28:31', '2010-01-25 08:38:25', '1994-01-20 15:25:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 15, 108, '1980-09-28 11:31:18', '2014-08-17 15:53:43', '1976-05-12 15:32:48', '1972-08-16 12:55:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 84, 108, '2016-09-06 22:47:41', '1972-06-22 05:50:46', '2001-04-22 19:33:09', '2002-01-08 05:45:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 103, '1992-12-09 22:01:25', '2006-09-06 17:13:14', '1982-07-22 02:44:25', '1973-03-25 13:20:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 85, 103, '1989-05-07 07:02:18', '1990-05-28 12:42:32', '2000-03-02 16:02:49', '2005-12-22 00:49:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 8, 101, '1975-07-11 07:29:11', '2009-08-22 18:08:02', '1980-12-29 18:05:22', '2018-04-18 10:21:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 27, 101, '2010-03-07 13:52:29', '2002-12-04 19:18:32', '2002-03-19 23:39:44', '1984-08-05 07:05:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 66, 103, '1998-07-26 23:42:40', '1975-04-13 01:21:42', '2011-05-22 14:49:56', '1986-10-01 05:20:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 65, 108, '2016-04-14 15:35:57', '1984-07-27 15:21:29', '1980-08-11 12:27:30', '1991-08-05 02:22:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 75, 103, '2003-12-04 07:24:24', '2012-04-09 05:33:27', '1998-03-17 08:06:30', '1989-03-21 04:39:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 92, 101, '2005-09-24 15:54:23', '2016-12-30 06:32:52', '1987-04-30 01:55:42', '2006-12-05 06:42:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 18, 103, '2000-02-04 20:08:44', '1990-12-30 04:14:41', '1981-08-27 03:02:58', '1999-08-13 18:45:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 81, 103, '1984-11-14 09:20:22', '1972-07-12 23:05:58', '2009-12-17 10:45:47', '1996-10-02 22:35:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 61, 101, '2001-02-07 09:59:01', '1983-04-08 21:55:11', '1972-05-30 08:48:47', '1978-10-24 00:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 98, 101, '1996-12-03 19:10:38', '1979-02-07 10:43:41', '1970-08-24 23:38:46', '2014-01-28 11:29:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 54, 101, '2017-10-21 18:22:13', '2001-01-30 03:52:11', '1982-10-22 11:54:31', '2018-03-14 06:04:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 84, 103, '1970-09-11 07:31:05', '1975-11-14 08:11:29', '2006-12-30 08:45:38', '2017-12-20 23:40:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 72, 103, '1982-05-31 09:45:47', '2013-08-12 07:49:07', '2005-11-26 18:00:42', '2006-02-13 01:46:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 34, 108, '2000-03-07 16:29:22', '1972-12-06 06:28:54', '2019-01-17 17:59:24', '1974-08-09 16:31:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 98, 108, '1984-03-13 12:39:37', '1984-02-01 21:41:12', '2016-02-06 17:50:51', '1978-05-29 17:52:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 29, 108, '1992-05-29 14:29:47', '1971-03-20 22:30:39', '2017-12-04 23:05:16', '1983-11-23 00:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 39, 108, '1972-11-28 21:26:10', '1987-06-26 23:16:06', '2006-09-28 04:34:58', '2007-11-12 05:52:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 97, 101, '2013-03-26 20:07:09', '2010-04-18 17:53:12', '1979-06-17 15:21:47', '1979-02-23 21:13:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 69, 108, '1976-04-21 09:19:19', '1973-04-18 15:05:26', '1982-07-06 15:29:44', '1981-04-02 20:34:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 85, 103, '2001-10-15 01:47:31', '1971-07-19 23:10:45', '1984-09-02 10:23:27', '1995-03-16 18:58:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 6, 101, '2013-06-25 19:13:37', '2008-03-28 00:04:20', '1983-11-23 04:39:37', '2013-11-05 13:31:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 36, 103, '1984-12-09 01:27:40', '1999-08-02 10:57:37', '2004-10-07 15:13:16', '1970-09-28 03:37:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 46, 101, '1993-01-22 23:17:20', '1973-09-08 23:33:57', '1985-06-02 11:47:17', '2013-06-12 21:50:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 1, 101, '2020-01-27 12:24:07', '1981-12-20 23:11:46', '2018-07-18 06:46:39', '2009-05-12 21:51:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 38, 103, '1995-08-02 03:41:28', '2003-07-17 07:49:47', '1975-06-04 06:29:56', '1994-09-29 22:05:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 72, 108, '1991-01-11 19:24:34', '2016-05-09 01:08:01', '2010-02-23 11:18:41', '1992-12-11 17:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 58, 101, '1983-03-28 23:06:48', '1985-08-10 17:28:56', '2002-08-31 20:45:33', '1970-10-12 10:21:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 73, 108, '1981-02-07 11:24:58', '1976-04-12 01:08:20', '1970-10-11 11:36:19', '2008-10-04 11:31:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 13, 101, '1976-12-17 22:37:16', '2012-09-29 17:17:45', '1979-08-14 06:24:40', '1981-08-17 16:31:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 74, 103, '1990-03-12 19:06:12', '1974-09-01 07:46:42', '2010-08-25 18:51:47', '1972-02-13 02:47:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 20, 103, '2016-03-31 10:30:01', '1992-07-15 17:39:45', '1985-04-06 19:03:08', '2019-01-21 19:36:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 23, 103, '2001-01-16 22:00:26', '2002-05-24 22:57:32', '2011-03-08 21:17:35', '1998-05-25 11:27:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 39, 108, '2001-07-21 13:26:37', '1988-08-27 16:51:09', '1971-05-11 11:33:28', '1999-08-06 15:43:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 4, 103, '1996-03-02 07:12:39', '1987-11-02 08:16:58', '1972-01-13 11:27:06', '2019-12-27 01:54:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 28, 108, '1998-11-28 14:53:55', '2002-12-08 19:43:43', '1995-11-01 21:24:40', '2006-05-30 22:59:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 59, 103, '1972-10-19 10:49:24', '1988-01-17 15:31:52', '1985-09-13 00:42:49', '1992-11-03 16:34:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 94, 103, '2004-03-31 18:11:01', '2013-08-03 10:20:42', '2017-10-08 13:44:37', '1982-01-24 20:54:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 17, 101, '1995-09-10 01:25:31', '1988-10-23 23:03:46', '2009-03-27 10:40:29', '1974-03-10 06:48:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 25, 101, '2017-07-23 22:30:18', '1970-10-13 06:41:55', '1996-03-25 01:04:56', '1977-06-18 03:45:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 42, 103, '2007-05-09 03:43:27', '2019-10-21 01:45:35', '2000-08-11 11:41:47', '1975-06-14 14:15:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 108, '1974-07-27 14:44:16', '1990-10-26 10:45:49', '2010-09-07 02:47:26', '1986-11-14 09:07:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 90, 103, '1982-06-14 14:24:35', '1994-09-14 07:03:16', '2012-09-05 23:00:54', '2001-08-18 05:25:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 8, 103, '1981-07-08 17:42:10', '1993-08-13 22:11:45', '1977-09-30 11:20:20', '1987-09-17 08:17:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 26, 101, '2007-02-23 15:49:55', '2011-01-01 22:33:48', '1999-10-19 01:22:08', '2011-07-20 14:50:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 103, '1999-04-03 23:30:38', '1997-12-19 17:26:05', '2015-06-26 12:21:58', '1975-01-16 01:35:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 19, 108, '2015-11-08 03:16:22', '1993-08-11 10:59:51', '1980-11-13 23:28:02', '1978-08-04 17:46:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 6, 101, '2012-02-25 04:56:22', '2010-06-14 02:45:58', '2004-10-21 01:44:04', '1984-02-02 04:27:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 97, 108, '2013-07-17 18:24:59', '2007-06-26 10:35:27', '1992-09-08 10:03:35', '1970-03-21 09:28:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 17, 108, '2016-05-02 08:53:58', '2014-02-19 10:00:34', '1983-10-20 06:41:15', '1980-11-19 08:56:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 94, 108, '2019-05-06 05:07:55', '1978-08-10 13:44:42', '1999-06-12 06:03:01', '2003-07-30 00:49:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 28, 108, '2009-03-29 22:44:23', '1987-09-15 08:25:28', '2003-02-21 01:04:32', '1989-12-27 20:46:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 95, 103, '2007-12-18 19:33:21', '2001-08-28 09:23:58', '1970-03-26 04:22:26', '2005-04-29 02:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 1, 101, '2009-12-26 04:12:44', '1990-08-06 08:31:37', '1981-02-13 11:27:53', '2003-02-04 03:29:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 100, 101, '1981-11-12 19:15:32', '2002-12-04 10:48:46', '1972-12-24 04:56:06', '1974-06-14 03:30:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 19, 103, '2014-04-10 16:17:36', '2008-10-25 23:35:39', '1974-10-27 22:18:02', '1973-11-04 04:15:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 20, 101, '1971-12-04 01:09:01', '1998-01-02 22:30:02', '1977-08-12 02:27:52', '1994-05-22 21:29:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 90, 101, '1987-08-26 18:34:31', '1976-10-17 11:26:49', '2006-08-01 15:36:44', '1992-03-09 15:51:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 48, 108, '1985-11-12 07:22:38', '1987-06-14 15:36:40', '2017-11-21 03:44:20', '1977-06-02 20:12:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 95, 101, '2012-06-25 12:05:24', '2013-02-08 09:37:44', '1986-03-23 21:06:30', '1991-05-14 07:42:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 32, 101, '2019-04-16 12:51:10', '1981-10-13 23:32:32', '1996-10-23 20:23:31', '2019-05-03 02:46:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 55, 108, '2020-10-31 09:29:41', '1979-12-05 01:59:46', '1997-11-13 18:41:11', '2002-02-14 10:16:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 45, 108, '2005-06-09 22:01:18', '2002-07-18 07:43:13', '2011-08-12 07:41:35', '1985-02-02 16:46:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 18, 108, '1985-10-27 12:13:36', '2001-12-19 01:08:58', '1970-05-19 11:05:31', '1978-07-04 17:28:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 31, 101, '1982-07-23 07:50:57', '2020-11-26 01:33:45', '1983-09-02 16:56:19', '2015-06-14 21:37:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 66, 101, '1994-10-26 09:31:23', '1996-06-21 07:34:12', '1992-03-13 22:54:21', '1994-11-08 13:21:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 77, 101, '1972-11-13 01:06:27', '2003-09-15 06:53:56', '1994-10-04 22:01:01', '1993-12-14 04:08:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 19, 103, '1995-11-01 10:40:57', '1996-03-28 12:32:12', '1997-10-21 01:18:01', '1974-02-26 12:40:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 80, 108, '2003-01-14 05:22:07', '1994-04-24 14:06:43', '1983-02-24 09:53:37', '2004-08-02 06:22:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 92, 108, '2015-12-14 16:36:37', '1989-08-27 08:54:18', '1984-02-21 14:09:21', '2011-04-16 17:16:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 73, 108, '1980-05-02 16:04:55', '1974-10-13 02:16:10', '2009-02-10 02:27:08', '1982-08-21 20:03:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 96, 108, '1985-09-26 13:35:58', '2020-12-02 04:44:08', '1997-07-11 14:22:05', '2001-01-18 07:19:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 100, 108, '2004-02-27 12:32:59', '1975-10-10 00:33:14', '2009-11-24 04:17:57', '1975-06-09 05:39:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 40, 101, '1971-09-18 20:49:36', '1981-03-09 09:09:42', '1978-10-23 23:41:38', '2020-09-05 12:29:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 62, 101, '1976-12-29 10:34:07', '2020-04-02 11:31:02', '1997-09-07 22:23:27', '2009-12-01 18:28:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 66, 108, '1997-06-04 18:15:39', '2002-03-19 08:06:35', '1989-11-10 21:42:37', '1975-05-16 00:36:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 100, 103, '1977-08-17 00:13:37', '2014-08-27 04:44:30', '1976-04-28 01:54:07', '1995-11-13 06:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 42, 108, '2004-08-09 06:35:36', '1988-01-23 10:13:44', '2003-03-16 20:37:48', '1996-05-15 00:45:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 80, 103, '1994-12-03 03:49:25', '2005-11-06 07:33:54', '2014-03-02 07:58:39', '1981-10-30 18:55:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 87, 103, '1983-08-09 05:56:46', '2017-07-09 10:03:47', '1977-03-13 19:25:24', '1975-06-10 19:44:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 88, 103, '2006-11-04 14:55:32', '1991-08-27 22:52:47', '2010-11-11 15:01:33', '1990-08-25 10:15:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 33, 108, '1974-11-28 03:19:31', '2011-09-26 15:21:21', '1973-06-20 17:40:16', '2006-02-19 01:16:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 85, 103, '1985-12-11 18:14:39', '1996-07-22 22:11:10', '2009-07-05 08:51:15', '2001-05-26 23:52:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 61, 108, '2005-09-20 21:33:55', '2006-11-30 03:06:28', '1989-08-05 12:47:22', '1972-04-08 02:29:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 13, 101, '1971-04-20 01:17:54', '1978-07-20 20:15:17', '2001-10-19 10:35:48', '2015-07-13 20:23:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 6, 103, '1978-05-04 16:08:55', '2009-04-09 09:12:18', '2012-05-20 05:18:47', '1983-12-06 00:32:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 13, 103, '1995-09-15 11:38:34', '1997-08-27 02:36:31', '1991-04-25 15:12:58', '2007-10-26 02:48:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 92, 108, '2001-05-11 13:40:17', '2013-04-18 12:24:32', '1974-04-20 03:12:07', '1972-08-04 07:19:39');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'c', '2010-01-21 13:45:02', '1982-07-15 17:32:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (103, 'a', '2011-11-17 01:03:52', '2014-06-11 10:01:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (108, 'b', '1990-09-13 01:29:36', '2011-07-22 00:48:53');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'quasi', 335723, NULL, 101, '2012-06-08 15:02:25', '2014-05-06 11:09:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'sint', 842, NULL, 102, '2007-09-30 14:30:28', '1990-04-21 00:57:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'consectetur', 0, NULL, 104, '1982-10-28 20:20:58', '1996-06-21 07:05:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'assumenda', 406, NULL, 101, '1972-11-13 22:43:15', '1984-07-19 08:21:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'qui', 0, NULL, 102, '1994-01-28 01:49:53', '2010-11-13 04:58:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'ipsum', 546507, NULL, 104, '2014-12-27 12:04:32', '1999-08-05 13:57:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'delectus', 7964, NULL, 101, '1999-08-04 19:01:08', '1990-12-29 12:55:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'tempore', 5, NULL, 102, '2012-09-11 00:40:09', '1987-04-14 06:40:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'qui', 169121, NULL, 104, '1987-09-06 02:28:25', '2018-03-25 07:36:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'laudantium', 5180598, NULL, 101, '1973-10-28 14:05:27', '2006-04-15 04:52:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'vitae', 487791813, NULL, 102, '2005-08-22 17:43:24', '1984-09-27 05:16:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'aut', 24, NULL, 104, '2003-11-20 00:00:17', '2005-06-07 20:51:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'vel', 3, NULL, 101, '1989-02-27 13:16:26', '1996-08-15 11:03:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'deserunt', 58, NULL, 102, '1997-01-12 15:17:50', '1984-05-03 19:00:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'sit', 68128575, NULL, 104, '2003-10-01 17:38:33', '1989-12-05 17:59:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'sapiente', 511524, NULL, 101, '1986-08-21 06:58:56', '2002-04-30 09:09:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'distinctio', 90310, NULL, 102, '1999-12-28 20:55:01', '2006-06-03 06:22:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'fugiat', 5165, NULL, 104, '2004-04-29 02:21:47', '1972-11-29 16:49:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'aut', 611555, NULL, 101, '2005-05-27 04:18:14', '2011-02-28 20:02:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'iste', 67, NULL, 102, '1978-10-22 09:37:06', '1987-08-17 12:17:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'vel', 80612, NULL, 104, '2017-07-13 18:31:22', '1998-06-25 22:54:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'blanditiis', 11547, NULL, 101, '1990-03-12 15:26:20', '1992-02-28 21:18:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'accusantium', 0, NULL, 102, '2000-03-16 08:04:31', '1971-08-12 12:19:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'ratione', 0, NULL, 104, '2005-12-27 07:39:01', '2001-05-10 02:53:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'quibusdam', 15402857, NULL, 101, '2003-05-31 15:07:25', '1971-07-26 08:56:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'velit', 441, NULL, 102, '1984-08-24 15:14:48', '2001-03-17 23:21:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'id', 0, NULL, 104, '1998-12-13 13:45:12', '2015-05-26 02:44:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'eum', 116323, NULL, 101, '2008-02-26 03:06:48', '2006-02-28 18:55:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'consectetur', 24123, NULL, 102, '2005-10-26 20:47:43', '1986-05-16 23:09:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'eos', 57624, NULL, 104, '1991-04-03 14:05:19', '1994-08-24 19:14:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'non', 42538902, NULL, 101, '1993-03-31 20:03:46', '1990-12-23 16:18:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'odit', 193651560, NULL, 102, '1972-05-19 06:36:17', '1996-07-11 21:35:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'qui', 54710323, NULL, 104, '1993-07-16 13:40:33', '1988-08-23 19:07:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'aut', 0, NULL, 101, '1972-12-29 04:22:53', '1986-06-06 09:04:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'enim', 17, NULL, 102, '2002-03-31 20:12:53', '1975-04-21 20:30:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'et', 69, NULL, 104, '2006-02-06 13:59:32', '1997-09-11 03:03:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'necessitatibus', 1861, NULL, 101, '1979-05-28 19:39:28', '1981-06-07 02:21:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'itaque', 882, NULL, 102, '1998-12-19 18:18:09', '1993-04-19 23:53:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'facere', 0, NULL, 104, '2002-09-19 17:34:52', '2012-07-23 19:25:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'veritatis', 466, NULL, 101, '1996-02-03 21:28:14', '1997-05-20 01:31:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'consequuntur', 559, NULL, 102, '2017-03-27 02:28:17', '2001-12-12 08:34:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'ut', 0, NULL, 104, '1987-10-29 15:22:51', '2011-12-22 13:08:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'ducimus', 43, NULL, 101, '2006-05-07 18:02:33', '1975-06-11 01:13:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'repellendus', 2, NULL, 102, '1979-06-02 05:00:47', '1996-03-15 10:54:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'assumenda', 9, NULL, 104, '2006-05-26 10:40:15', '1979-04-19 01:21:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'esse', 775931, NULL, 101, '1998-04-03 12:56:52', '1971-01-14 13:29:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'reprehenderit', 485437, NULL, 102, '1980-09-21 01:03:44', '1992-06-18 22:31:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'iusto', 2035, NULL, 104, '1980-10-09 23:15:29', '2016-01-23 14:53:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'quos', 9695641, NULL, 101, '1977-10-09 09:42:06', '2006-12-11 22:01:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'culpa', 11, NULL, 102, '1977-02-16 16:31:47', '1991-12-05 05:56:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'ducimus', 584, NULL, 104, '1972-06-11 07:12:22', '2015-06-15 13:40:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'aut', 9153150, NULL, 101, '2018-10-15 20:45:46', '2012-10-08 17:50:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'ipsam', 0, NULL, 102, '1978-01-22 23:54:23', '2007-10-04 09:56:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'a', 2576288, NULL, 104, '2003-11-24 16:13:31', '2019-11-12 15:43:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'aut', 29347926, NULL, 101, '2017-11-29 10:15:58', '2018-06-24 03:30:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'dolorem', 98353736, NULL, 102, '2018-12-30 04:20:59', '2015-01-31 20:54:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'nesciunt', 0, NULL, 104, '1971-01-13 03:37:53', '1999-11-03 21:14:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'eum', 477643, NULL, 101, '1982-02-06 06:07:49', '1976-08-26 03:45:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'quo', 22328, NULL, 102, '1997-06-05 09:13:20', '2006-08-28 12:25:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'totam', 9476243, NULL, 104, '1986-03-12 15:15:55', '1996-12-26 04:56:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'laudantium', 40104243, NULL, 101, '1979-06-04 09:43:27', '2001-04-04 10:57:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'doloremque', 614, NULL, 102, '1972-09-12 19:16:38', '2013-11-30 21:51:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'harum', 3968, NULL, 104, '1994-03-07 06:32:41', '2015-05-20 23:29:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'nostrum', 33076, NULL, 101, '1997-12-24 11:16:29', '2012-03-05 14:19:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'nostrum', 4912, NULL, 102, '2009-04-06 20:09:49', '2005-05-25 08:18:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'maxime', 9, NULL, 104, '1971-06-11 07:32:21', '2000-06-18 16:49:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'cumque', 0, NULL, 101, '2010-12-21 13:53:40', '1977-08-29 03:42:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'aut', 25246874, NULL, 102, '2006-05-28 15:45:44', '1976-05-07 12:24:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'rerum', 82, NULL, 104, '2018-07-28 09:07:37', '1999-04-20 11:17:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'maiores', 0, NULL, 101, '2016-02-20 05:29:38', '1998-10-11 19:30:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'tempore', 734, NULL, 102, '1977-06-23 17:26:07', '2012-08-05 05:08:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'est', 31469530, NULL, 104, '2019-12-08 15:55:02', '1989-04-15 22:05:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'tempore', 8, NULL, 101, '2005-03-04 21:50:22', '1976-02-14 20:59:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'autem', 3576071, NULL, 102, '2018-01-15 00:00:44', '2020-11-26 04:07:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'voluptate', 0, NULL, 104, '2008-08-05 04:04:11', '1997-05-02 22:28:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'quia', 0, NULL, 101, '2002-08-17 16:26:52', '2001-07-24 20:04:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'iusto', 971445, NULL, 102, '1986-04-28 18:20:36', '2006-06-04 12:29:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'voluptate', 58899960, NULL, 104, '1981-10-16 18:48:19', '1993-12-15 11:04:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'voluptatem', 1162435, NULL, 101, '2009-11-06 07:24:18', '1995-07-09 03:49:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'repellat', 8157, NULL, 102, '1982-08-11 08:00:00', '1992-12-06 04:06:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'inventore', 22, NULL, 104, '1984-12-07 10:47:19', '2012-11-23 10:27:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'sit', 921, NULL, 101, '2007-05-13 17:00:37', '1974-06-12 14:48:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'repellat', 494293, NULL, 102, '1984-02-26 22:16:25', '2010-11-23 13:12:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'voluptas', 91, NULL, 104, '2006-08-16 00:06:14', '1974-09-14 17:57:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'totam', 1671537, NULL, 101, '1999-06-28 06:27:52', '2004-10-06 11:58:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'dolor', 19, NULL, 102, '1974-07-25 07:55:40', '1984-11-08 04:03:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'qui', 96930, NULL, 104, '1998-01-18 15:24:30', '2006-01-14 17:58:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'excepturi', 390, NULL, 101, '1977-03-22 02:06:34', '1987-03-07 08:05:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'et', 2, NULL, 102, '1992-11-25 11:09:53', '1984-03-06 20:36:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'non', 8500, NULL, 104, '1976-05-29 12:32:00', '1992-03-19 00:42:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'explicabo', 505075105, NULL, 101, '1971-01-26 19:51:04', '1971-05-02 04:47:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'molestiae', 32, NULL, 102, '1991-03-04 13:26:36', '1987-12-27 17:02:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'laudantium', 0, NULL, 104, '1999-07-21 03:07:42', '1996-02-22 21:38:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'atque', 52602, NULL, 101, '1972-07-21 14:52:44', '2020-01-27 20:41:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'ipsum', 82727856, NULL, 102, '2012-06-24 21:08:46', '1986-04-25 18:23:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'qui', 98, NULL, 104, '2019-11-07 19:23:33', '2009-08-18 21:47:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'molestias', 191119, NULL, 101, '2015-06-16 16:51:06', '2007-10-31 18:44:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'quaerat', 67055372, NULL, 102, '1996-07-22 12:20:31', '2020-04-29 08:54:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'repellat', 142932, NULL, 104, '1980-03-30 23:47:23', '1998-06-30 13:34:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'sed', 662134, NULL, 101, '2015-06-23 19:38:17', '1975-05-31 12:06:26');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'a', '2017-12-21 07:26:02', '2016-11-22 00:04:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, 'b', '1979-12-16 05:37:28', '2006-02-11 16:13:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (104, 'c', '1999-03-15 23:35:30', '1987-12-14 08:15:09');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 16, 'Itaque eum fuga reprehenderit maiores ipsam in. Pariatur soluta accusamus harum quod. Suscipit quaerat placeat officiis. Repellat dolores laborum aliquid ut.', 0, 1, '1974-10-29 23:07:28', '2004-12-28 20:01:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 13, 'Perspiciatis et voluptates dolorem ipsum. Expedita soluta nihil illum quaerat doloribus. Deserunt suscipit itaque aliquid cupiditate non enim.', 1, 1, '1999-05-13 23:47:55', '1975-11-03 10:13:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 86, 'Illo exercitationem rerum nesciunt ut molestiae optio omnis. Officiis pariatur in labore voluptatum illo ipsa natus sint. Alias voluptas nam eius quisquam dolor.', 0, 1, '1992-01-05 01:40:38', '1998-06-22 00:28:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 82, 'Totam ex dolor minima aut dolore rerum labore. Voluptate voluptatem qui hic. Velit et porro officia ex laborum. Vel veniam consequatur maiores.', 0, 1, '2003-12-26 10:33:14', '2018-01-25 17:52:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 30, 'Alias aperiam repellendus qui. Delectus natus est adipisci vitae doloremque eligendi ipsam error. Qui quia ad dolorem debitis excepturi id. Dolorem enim saepe aspernatur repellat.', 0, 1, '1990-12-20 11:39:46', '1991-09-23 18:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 64, 'Doloremque est enim autem occaecati aut iste excepturi. Non porro dicta dicta voluptatem eos aut ut. Aut repellendus asperiores voluptatem aliquid nam laborum et.', 0, 0, '2011-07-16 07:08:44', '2020-11-03 02:14:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 54, 'Ab atque voluptates illum et non. Est rem temporibus officia quia. Dolor doloremque ipsum non cumque. Magnam minima est assumenda id. Ratione laborum animi accusamus qui dolor.', 1, 1, '1976-08-09 02:16:32', '1982-05-01 03:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 35, 'Quia animi est earum asperiores perferendis minima sint dolore. Veritatis sed voluptatem nobis aut qui voluptate harum qui. Pariatur quam qui placeat in sed velit.', 0, 0, '2016-01-10 17:19:51', '2012-02-09 05:54:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 22, 'Nihil sit assumenda ipsa autem. Aliquam reprehenderit et quia quidem sint labore dolores sint.', 1, 1, '1995-03-07 04:03:31', '1985-02-17 03:22:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 99, 'Animi illo natus inventore voluptatum doloribus omnis. Enim iure sapiente qui rerum odio. Soluta vel quis eius excepturi facere.', 0, 0, '2011-11-09 18:59:55', '1986-10-05 07:59:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 5, 'Voluptas nulla repellat voluptas iste. Suscipit ex voluptatibus enim aut sed velit. Voluptas error adipisci neque sit optio possimus.', 0, 0, '2019-05-08 23:50:20', '2004-07-20 00:35:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 87, 'Quaerat dolore illo hic consequatur. Possimus sit eligendi neque quae voluptatum earum laudantium voluptas. Ea eveniet asperiores qui officiis qui eaque.', 0, 0, '1973-01-29 16:06:51', '2008-06-25 01:34:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 30, 'Est accusantium voluptatem veniam possimus est at voluptatem. Molestias fugiat facere ipsa.', 1, 0, '2006-01-31 02:58:34', '1995-01-24 17:32:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 78, 'Ducimus saepe aut nulla consequatur perspiciatis vel quia. Eaque repellat non et. Blanditiis ex harum corporis. Facilis quaerat qui hic hic molestiae et.', 0, 1, '1972-08-22 14:57:31', '1977-03-18 07:49:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 35, 'Animi maxime maxime quia et inventore veritatis. Itaque quisquam quam quia ut. Repellat repellendus quidem laborum dolor sit.', 1, 0, '2003-08-08 11:40:52', '1997-07-05 08:55:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 79, 'Ipsa et repudiandae est commodi ut iure. Aut possimus iste quo laborum rerum voluptatibus.', 0, 0, '1973-07-29 01:35:54', '1994-08-05 05:27:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 40, 'Ex unde saepe error amet ut sed. Sed fugiat modi eligendi veniam corrupti cumque eius. Non voluptas sunt rerum beatae dolorem error. Aspernatur repudiandae sed temporibus repellat et dolorem mollitia.', 1, 0, '2020-09-02 11:13:46', '1998-05-13 03:11:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 36, 'Quisquam minima quas et similique esse. Expedita quibusdam ea minus dolore labore quas reprehenderit. Id consectetur voluptas ut quis sapiente itaque suscipit fugiat.', 0, 0, '2020-01-22 01:18:05', '1994-11-21 03:25:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Neque quam voluptatem cumque quas. Possimus totam aut vitae perspiciatis est natus. Nostrum non et in repellat.', 0, 0, '1973-08-23 14:08:33', '2001-03-28 17:06:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 83, 'Voluptatem ut magni et excepturi. Cum quos laudantium reprehenderit neque autem nam ipsam. Qui voluptatum voluptates aliquam officia natus nemo animi. Quod alias blanditiis consequuntur.', 0, 0, '2019-02-23 07:56:58', '1973-02-25 14:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 41, 'Modi ut est minus ut ea et. Accusantium voluptatem quam labore nesciunt qui accusamus fugit doloribus. Quia iure ipsam quis voluptatem consequatur exercitationem dolorum.', 0, 0, '1977-10-19 17:49:27', '1973-05-29 21:14:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 2, 'Culpa quia sunt aut eos. Officia nisi excepturi maxime quod ut. Similique ipsam ducimus facilis est. Eligendi consectetur et quo. Praesentium voluptas odit asperiores aut.', 1, 1, '2014-07-22 08:08:42', '1980-01-27 18:42:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 97, 'Eos placeat quis odio aspernatur. Rerum possimus nostrum optio ut culpa. Et qui est dignissimos dolor et. Sed exercitationem nihil architecto quaerat.', 1, 0, '2009-01-25 17:08:39', '1978-10-10 10:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 30, 'Consequatur eligendi sit dolorum. Ratione adipisci aliquid ut. Odio est ut qui sunt est nihil quia. Omnis voluptatem minima ipsum voluptas laudantium.', 1, 0, '1984-03-30 06:41:53', '1993-04-14 05:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 54, 'Repellat distinctio esse dolor nihil totam fugiat. Vel omnis officia deserunt quibusdam nihil et aperiam. Aut soluta sit quibusdam ipsam. Excepturi et ut rerum.', 0, 0, '2016-11-21 15:33:47', '2003-07-11 01:06:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 74, 'Ullam sunt repudiandae incidunt expedita placeat fuga pariatur rem. Accusantium voluptatem et voluptatem. Ut sed harum dolores quis voluptatum qui quis. Rerum doloremque inventore aut accusamus.', 1, 0, '1982-02-23 06:01:05', '2009-12-30 06:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 85, 'Accusamus labore voluptatum minus rerum neque. Consectetur ratione sed et cupiditate expedita omnis. Nihil nulla cupiditate tenetur sequi et ullam. Quo aut necessitatibus molestias assumenda ratione.', 1, 1, '1996-12-10 06:11:15', '2019-05-05 21:57:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 9, 'Et rem vero molestiae et quasi laudantium qui. Error eos a quia eum hic possimus suscipit. Consequuntur doloremque sunt totam est.', 0, 1, '2007-02-17 20:30:21', '1972-02-17 07:32:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 67, 'Itaque exercitationem ut inventore aperiam. Id eos eum hic omnis eius dolore. Neque mollitia sapiente rem praesentium dolor.', 0, 0, '1978-08-06 13:02:05', '1986-09-26 07:49:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 76, 'Temporibus non voluptatem amet sequi error in. Voluptatum delectus consequuntur cupiditate. Sed explicabo reprehenderit qui dolor. Autem in labore aut voluptatem dolorem.', 0, 1, '1994-04-21 15:10:37', '1983-02-04 03:56:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Aut eos nihil eaque cumque. Et numquam et quos ut non et. Voluptatem nam velit voluptate sunt ut. Consequatur iure at id autem quaerat ipsam eius. Voluptatibus dicta sunt accusamus alias iste dolor veritatis.', 1, 1, '1984-04-08 22:08:06', '1987-12-23 12:27:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 69, 'Reiciendis illo dolor autem sit quos et. Voluptas esse ratione cumque sit. Deserunt voluptas tempore quisquam alias et voluptate. Assumenda ipsum soluta laudantium est aperiam.', 0, 0, '1980-12-24 08:42:05', '1999-09-25 11:39:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 67, 'Necessitatibus temporibus omnis velit. Id dolorum commodi dolores perspiciatis accusamus ex aut unde.', 1, 1, '1985-03-29 09:18:12', '1980-04-24 13:41:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 56, 'Reprehenderit voluptatem quod quas eveniet quas quas. Velit rerum cumque et aut.', 0, 1, '1985-09-23 09:43:42', '1992-10-18 07:36:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 89, 'Et fuga dolorem eligendi illum. Qui beatae sed minus et nisi. Magni pariatur in pariatur et cupiditate vel. Veniam corporis laborum earum molestiae veniam qui. Facilis maiores nemo ipsum.', 1, 0, '2016-07-09 02:25:25', '2003-09-01 11:26:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 22, 'Voluptatem ullam nobis iste vitae. Itaque voluptatibus qui eveniet delectus necessitatibus qui. Et voluptatem dignissimos nesciunt laborum similique.', 0, 0, '1980-05-06 19:37:05', '2003-07-15 20:52:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 41, 'Veniam voluptatem veniam omnis. Dicta libero quidem mollitia eum quia eaque. Veniam aut magnam harum amet doloremque iure eos repudiandae. Ut molestiae dolores explicabo aliquid ipsam earum qui possimus.', 1, 1, '2012-12-21 13:51:48', '2001-01-24 04:25:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 71, 'Assumenda corporis facere dolorum et fugiat molestiae ea. Aliquam illo a aspernatur vero. Non voluptatem beatae qui velit quibusdam voluptate aut. Sed iusto laudantium et excepturi et.', 0, 1, '2006-06-13 14:48:20', '2019-09-27 01:39:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 98, 'Voluptatem doloribus expedita sed ea dolor corrupti. Consequatur reiciendis quia nihil voluptatem eligendi dolore accusantium.', 1, 1, '2008-04-30 02:01:42', '1992-12-27 05:03:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 83, 'Omnis doloremque dolores blanditiis sit hic voluptas nihil. Exercitationem omnis sunt eum omnis tenetur minus. Quo laudantium et autem quos sit sed omnis. Quia quasi quam aliquid illum consequatur excepturi omnis.', 0, 0, '2014-01-13 03:44:21', '2019-09-12 19:51:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 39, 'Blanditiis dolor eaque asperiores nisi accusantium aut. Ea accusamus soluta iste assumenda ex aut perspiciatis.', 0, 1, '1996-05-01 02:11:35', '1981-10-30 12:21:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 77, 'Ipsam quo qui dicta incidunt nemo. Vitae quaerat est nesciunt blanditiis est qui.', 1, 0, '2017-02-19 03:15:48', '1995-11-15 01:51:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 25, 'Temporibus officiis distinctio qui omnis commodi aut atque. Molestiae tempora et sed velit ratione quos et. Delectus cupiditate placeat molestiae.', 1, 1, '2016-10-19 15:26:36', '1990-05-31 08:09:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 71, 'Quo omnis sed consectetur vitae. Provident et dolores sapiente numquam reiciendis maxime atque. Vel dolores perspiciatis quia dolore magni voluptatem. Et cupiditate eum vitae officia eos.', 0, 1, '2001-06-20 00:11:52', '2006-01-05 02:11:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 17, 'Sapiente incidunt qui architecto quia qui sequi. Velit quia perspiciatis officiis molestias sint non quo. Ipsum doloribus cumque aut ullam labore.', 1, 0, '1976-03-22 06:49:27', '1992-07-27 06:32:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 88, 'Iste ullam et sint. Aperiam dignissimos eum vel. Deserunt ut minima inventore ut provident et facilis. Modi occaecati quo ut voluptatibus vel quidem unde.', 0, 0, '2002-08-12 23:57:22', '1973-08-31 12:57:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 78, 'Inventore voluptatum iste delectus illo fugit autem veniam qui. Molestias porro illo voluptas iste ut. Ut alias sed est minus sit. Unde rerum inventore deserunt sed aut velit.', 0, 1, '2015-08-18 16:06:38', '2010-07-27 21:31:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 11, 'Asperiores nulla sed ullam aut repellat sit. Iure provident qui quas odio eum et deleniti. Aperiam quaerat distinctio aliquid dignissimos repellendus.', 0, 1, '1985-07-03 16:10:16', '1992-04-07 11:34:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 73, 'Ipsa nulla qui maxime dolorem. Sequi qui at adipisci fugiat sequi aut. Qui natus rem rerum mollitia totam sit sunt. Nihil unde quia a occaecati voluptas soluta quidem ipsa.', 1, 1, '1972-05-05 08:29:33', '1986-03-21 07:38:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 66, 'Distinctio sed dolorem officia odit saepe qui ut. Rem numquam eum est repellat. Qui voluptatem et autem error vel est.', 1, 0, '1997-09-13 03:59:01', '2013-12-09 18:07:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 100, 'Repellat et porro minus in. Voluptas esse quia recusandae nisi maxime explicabo vitae ad. Dolorem qui a vero voluptatem culpa.', 1, 1, '1998-01-19 04:20:08', '2013-09-23 00:04:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 61, 'Voluptatum eligendi temporibus fuga consequatur corporis ut. Sit sunt ducimus porro consectetur autem maxime ex. Magnam consequatur aut similique quibusdam.', 1, 0, '1985-12-03 09:25:53', '1973-08-31 12:33:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 2, 'Aperiam sed est magnam dolorem. Quia quia eos ut possimus. Ullam repellendus occaecati voluptas et. Repudiandae nihil sunt occaecati et autem.', 0, 1, '1971-08-06 11:53:20', '1998-01-27 07:55:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 34, 'Voluptate fuga facilis doloremque harum impedit. Quia ut suscipit quia pariatur est. Ut ipsum qui ratione velit. Repudiandae eum nam velit quo voluptatem aspernatur voluptatem.', 1, 1, '2002-11-29 16:26:17', '1993-09-16 09:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 29, 'Quia ipsum occaecati suscipit rem ducimus similique quas. Et rerum voluptatem repellat eaque vitae. Et similique quibusdam quidem. Quia ut voluptatem doloremque harum. Quis illo voluptates consequatur laudantium aliquid cupiditate consequuntur.', 1, 0, '1986-02-10 17:49:28', '1991-10-15 04:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 22, 'Id illo expedita possimus labore. Odit in at commodi et. Amet neque nulla quos reiciendis natus expedita voluptas.', 1, 1, '2004-06-23 16:37:46', '2008-12-27 10:25:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 3, 'Provident optio quidem accusamus. Quisquam sunt error sunt accusantium non culpa deserunt. Facilis repellat fugit quis aut aut. Error iste provident assumenda culpa illo quia.', 0, 0, '2003-12-09 20:52:17', '2011-07-24 02:04:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 87, 'Quia sequi beatae quia unde eveniet repudiandae. Fugit cum assumenda inventore corporis. Eos eligendi ullam aliquam atque architecto. Consequatur enim consequatur odio.', 0, 0, '1995-04-23 09:02:28', '1998-03-20 20:12:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 88, 'Tempora sed ut molestiae et beatae et autem consectetur. Id et mollitia veritatis. Possimus quibusdam magnam quibusdam quia doloribus. Et exercitationem quia non quasi dignissimos necessitatibus. Voluptatem itaque reprehenderit aperiam cupiditate ipsam.', 0, 0, '1996-11-03 13:57:35', '2007-07-12 23:13:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 80, 'Vitae inventore beatae adipisci commodi ipsam blanditiis. Quia aut eaque molestias. Consequatur ut et a modi autem eaque. Ea modi est ut error possimus ut ipsum. Eaque omnis quis velit.', 1, 1, '1990-05-03 01:30:43', '1994-03-06 11:33:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 84, 'Rerum inventore quia autem et quam magni. Enim saepe necessitatibus quaerat voluptas magni est. Est qui nihil et ducimus.', 0, 0, '1988-02-07 20:06:08', '1973-07-22 12:51:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 27, 'Assumenda cumque fugit eaque dolor veniam eaque. Qui itaque sit dolores sed. Eos et libero nam nam nostrum. Ad error quia quia consectetur ad dignissimos sit.', 0, 0, '1972-10-16 00:15:29', '1982-07-07 02:24:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 36, 'Dolor sunt impedit illum veritatis optio qui modi repudiandae. Culpa aspernatur qui quaerat voluptatum.', 0, 0, '2007-01-02 10:10:58', '2014-03-22 01:59:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 33, 'Molestias dolores voluptatem quae ut fuga et cumque. Aliquam blanditiis cupiditate voluptatum quisquam tempora laudantium. Incidunt nesciunt aspernatur quia in voluptates consequatur. Debitis odio corrupti cum rerum qui ut exercitationem.', 1, 0, '2007-10-30 09:49:46', '1996-06-19 21:31:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 63, 'Nisi quas expedita suscipit deserunt dolorum et veniam. Ut nobis eos suscipit aut ullam accusamus. Aut et dignissimos in id rerum sunt. Id quas quam ducimus hic qui.', 0, 1, '1985-04-08 03:06:44', '2002-06-25 20:56:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 13, 'Animi eum expedita ipsum ex. Dolorem et iusto nostrum. Ea labore quos est. Aliquam dolores voluptatibus corrupti fugit tempore ipsam.', 1, 1, '1996-09-22 02:15:01', '1986-02-01 14:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 58, 'Tempora amet corrupti cupiditate inventore quia quae. Numquam dolor doloremque sit excepturi temporibus similique. Sunt facilis repellendus laudantium voluptatem vel aut. Eos ipsum vel sunt assumenda quam repellendus.', 0, 1, '1986-09-25 03:38:49', '2010-07-29 10:46:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 94, 'Nobis dolor tempora perferendis. Aut sit molestiae nihil aperiam voluptas. Commodi ut sapiente itaque. Qui libero id eos consequatur esse velit incidunt.', 1, 0, '2000-06-30 03:44:47', '2007-02-26 14:01:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 48, 'Aliquam dolorum qui veniam placeat unde sed. Dolor modi odio in dolorum mollitia porro. Mollitia est eius laudantium facilis labore iste amet tempore.', 0, 1, '2018-12-23 02:45:36', '2002-08-22 15:32:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 100, 'Sint quia minima suscipit minus delectus quo. Quo porro et harum quo facilis eveniet facilis. Facilis iste facilis sunt officia quas veniam maxime nihil.', 1, 0, '2013-06-11 06:36:51', '1999-09-26 20:41:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 80, 'Et impedit aliquam eos quidem adipisci. Mollitia repellat et quas sit voluptatibus ut velit. Omnis dicta assumenda ex debitis. Et dolores exercitationem similique illo voluptatem rerum.', 0, 0, '2009-12-17 11:02:08', '2007-02-07 22:38:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 36, 'Doloremque quas voluptatum tenetur. Eos ut pariatur quos accusantium. Quod a placeat vero quia minima earum.', 0, 1, '2006-01-10 11:23:39', '2012-01-02 08:55:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 79, 'Pariatur aut doloremque dolores dolorem. Et molestiae ea iste dolorum voluptatem repellat ullam. Quia repellat cupiditate culpa sed dolore sed eos quo. Odio voluptatem soluta mollitia.', 1, 1, '1973-01-07 14:21:20', '1985-06-20 14:07:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 59, 'Corrupti officiis voluptatem odio officiis et. Animi laboriosam aut iste. Illum odit provident laudantium tenetur.', 0, 0, '1980-08-19 14:17:52', '2008-12-30 16:09:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 28, 'Assumenda et officia aliquid adipisci molestiae architecto qui. Ea quia minima numquam molestias aut. Quasi et modi beatae voluptas laudantium id qui.', 1, 0, '1990-03-27 22:31:00', '1973-07-17 02:12:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 7, 'Non doloremque veritatis tempora aliquid aut. Quae delectus voluptatem quia quo. Assumenda id tempore unde nemo velit architecto. Nobis est accusantium dolor alias deleniti porro et.', 0, 1, '1988-03-14 03:25:08', '1992-06-19 21:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 94, 'Quibusdam occaecati optio tenetur et reprehenderit explicabo. Adipisci ut debitis laudantium veniam recusandae. Culpa a sit eaque quia voluptas enim. Adipisci et sunt et sed.', 1, 0, '2009-09-26 04:42:38', '1990-02-04 04:18:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 46, 'Id reiciendis aliquam sequi cumque. Pariatur expedita temporibus et sed velit saepe. Soluta incidunt nam ipsa est molestiae.', 1, 0, '1991-08-14 03:52:17', '2018-09-12 09:58:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 90, 'Numquam officiis repellat neque. Voluptatem exercitationem sit tempora. Pariatur dolores beatae magnam qui quidem sed ea.', 1, 0, '1990-05-30 01:29:13', '1981-05-20 22:31:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 78, 'Alias ab quibusdam dicta corrupti dignissimos. Consequatur sunt quia aut architecto odio quam eligendi sint. Aut et ex quo iste vel consequuntur omnis. Voluptatum et et necessitatibus nihil quo ut. Nobis mollitia tempora itaque nisi et tempora.', 1, 1, '2020-01-08 05:46:09', '2018-12-08 23:06:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 40, 'Libero repudiandae eveniet saepe illo aperiam quae. Nulla voluptatem magnam fuga iure deleniti nobis nostrum qui.', 1, 0, '1999-12-29 13:08:40', '2004-04-20 21:16:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 77, 'Eum sunt ipsa repellendus. Eum consequatur doloribus voluptas quis qui. Rerum quibusdam sint aut delectus repellendus incidunt.', 1, 0, '1995-08-28 19:33:46', '1974-08-11 17:26:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 91, 'Amet est nihil sunt inventore nihil veniam ea. Fugiat qui fugit officia tenetur enim eum ratione dignissimos. Ipsam molestiae quia sit quos.', 1, 0, '1984-11-05 19:18:34', '1997-05-15 06:48:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 86, 'Eligendi sunt quo aut distinctio. Sunt temporibus voluptates eius. Eveniet corrupti voluptatibus sit. Distinctio libero molestiae ut voluptates.', 1, 1, '2017-09-24 17:49:51', '2005-04-20 05:09:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 49, 'Veritatis distinctio eos voluptas velit eos laudantium quis. Sunt cupiditate eveniet consequatur architecto temporibus voluptas voluptates omnis. Dolorem sed dolores eaque reprehenderit. Inventore perferendis harum et.', 1, 1, '2010-06-08 10:43:27', '1976-04-26 10:57:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 17, 'Consequatur dolores soluta fugit iusto maiores quod. Unde temporibus ipsum alias natus doloribus. Eum voluptates eaque sequi possimus excepturi et ipsa.', 0, 0, '2016-01-18 01:05:21', '1970-06-19 18:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 64, 'Consequatur beatae aut vel excepturi dolores accusantium. Nostrum aut aspernatur architecto tempora nulla sed. Nihil unde dolorum quia consequatur ea.', 0, 1, '1981-02-21 12:03:20', '1978-01-12 07:29:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 60, 'Tenetur expedita nulla aspernatur rerum est dolore. Blanditiis velit aliquam facilis earum minus doloremque et.', 1, 1, '1992-08-02 21:48:39', '2016-04-17 03:56:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 28, 'Ex natus aut rem. Voluptatem delectus et ullam. Nam temporibus aliquam qui autem doloremque quia. Quo dolor ut iste. Repellat atque rerum ullam quasi.', 0, 1, '2019-01-25 04:58:39', '2014-01-17 02:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 68, 'Dolores ratione aut et ea qui. Quia eius alias dolorem. Molestiae eveniet tempore quas atque. Tempore dolor explicabo eum quam dolorem.', 0, 1, '2001-10-04 18:18:31', '2012-08-27 13:05:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 96, 'Cupiditate repudiandae qui nisi possimus inventore laudantium incidunt. Rerum doloremque dicta eos qui voluptatum voluptatibus deleniti. Doloribus beatae velit non in et culpa. Qui aspernatur velit sint aliquam et.', 0, 1, '1977-10-31 09:37:28', '2013-09-06 20:17:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 71, 'Voluptatum et voluptate sunt laudantium recusandae illum est. Et eligendi nulla aut qui. Consectetur ducimus id dolorum qui ut sit sed et. Molestiae provident sequi est voluptate sapiente inventore reiciendis maiores. Molestiae ut consequuntur consectetur et.', 1, 0, '1972-05-03 20:42:09', '1975-03-08 17:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 95, 'Exercitationem quasi officiis hic exercitationem quia. Impedit laboriosam dolores qui voluptas quae. Consequuntur rerum enim illo voluptas quibusdam modi atque.', 0, 1, '2013-09-13 06:16:41', '1987-07-08 12:37:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 73, 'Consequatur dolorum sit animi nihil non. Amet saepe error vel beatae illo officia expedita et. Dignissimos non possimus et ad odio.', 0, 0, '1992-06-27 09:04:55', '1995-11-18 23:21:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 78, 'Velit explicabo alias laboriosam nulla. Doloremque aut sint voluptatibus quod est dolor. Laudantium blanditiis quis et quibusdam ut dolor sit. Provident magni consequuntur minima et perspiciatis dolor ab.', 1, 1, '2008-07-12 08:57:14', '2003-12-11 06:17:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 56, 'Fuga illum est nam facilis. Ipsa vel aliquid nobis possimus. Quo laborum suscipit iste. Officia et quis quisquam autem dolorem. Id aut neque maxime et.', 1, 1, '1988-12-02 06:55:19', '2001-12-31 06:21:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Optio eos reprehenderit veritatis quisquam odio sunt odio. Iste molestiae earum eos tempore dolor voluptas quis quia. Quia et qui veniam quasi aspernatur. Fugiat numquam magnam dolorem aliquam.', 0, 1, '1994-05-07 11:49:13', '1997-07-21 03:04:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 65, 'Tempore quia exercitationem a quia tempore voluptatem dolor. Iste aut dicta iusto. Culpa totam et delectus tempore.', 1, 1, '2000-08-16 04:53:13', '1998-12-07 21:28:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 44, 'Explicabo sed est ut. Ducimus eum et dignissimos ex. Rerum sapiente libero ex cumque in deserunt. Magnam quo repellat ut dignissimos.', 1, 0, '1976-07-09 11:20:30', '1995-08-14 22:40:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 49, 'Vitae tempora placeat placeat provident eum vero. Dolorem ut reiciendis fugiat et voluptates quibusdam omnis. Harum libero ea exercitationem. Nihil voluptatem sit inventore facere cum voluptatem officia.', 0, 1, '1990-02-05 10:44:51', '1993-06-02 05:01:36');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city_id` int(11) DEFAULT NULL COMMENT 'Город проживания',
  `country_id` int(11) DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (1, 'm', '1983-04-01', 3, 'Aut eaque ducimus tempore nihi', 1, 1, '2000-03-28 04:28:47', '1985-01-20 23:20:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (2, 'f', '2001-09-14', 9, 'Animi sapiente aliquam quo. Et', 2, 2, '1983-11-11 14:42:57', '1992-04-12 14:38:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (3, 'f', '1989-09-07', 0, 'Itaque qui quisquam porro duci', 3, 3, '2009-06-16 18:26:52', '1991-02-16 13:32:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (4, 'f', '2008-12-17', 2, 'Et excepturi atque ad sunt dis', 4, 4, '1992-10-29 09:40:18', '1998-02-12 01:14:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (5, 'f', '2016-07-15', 3, 'Laborum ex excepturi quod. Quo', 5, 5, '1975-06-11 13:30:54', '2017-08-23 01:57:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (6, 'm', '2000-03-12', 4, 'Quo labore dolorum praesentium', 6, 6, '1973-11-02 11:39:05', '1976-12-23 08:25:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (7, 'f', '2004-05-17', 2, 'Omnis tenetur id omnis nulla a', 7, 7, '1995-11-13 21:35:02', '1982-09-11 00:49:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (8, 'f', '1987-05-07', 1, 'Facilis id fuga et id ducimus.', 8, 8, '1997-05-29 01:43:08', '1974-09-25 22:13:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (9, 'f', '1974-11-11', 2, 'Facilis qui quo a. Voluptatem ', 9, 9, '1986-05-29 18:10:02', '1983-05-09 10:19:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (10, 'f', '2009-09-03', 7, 'Laborum consequatur qui accusa', 10, 10, '1995-08-09 06:15:24', '2004-12-05 01:48:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (11, 'f', '1977-08-28', 2, 'Consectetur enim quod similiqu', 11, 11, '2003-09-26 12:01:48', '1976-12-26 02:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (12, 'f', '1979-09-13', 0, 'Inventore est amet sed asperio', 12, 12, '1972-07-16 05:34:00', '2020-03-21 19:27:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (13, 'f', '2016-04-05', 3, 'Et maiores ipsum sit odit et a', 13, 13, '2020-04-29 01:36:40', '1986-02-10 21:09:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (14, 'f', '1981-05-26', 8, 'Ipsa esse ut iure quo porro ac', 14, 14, '1980-05-05 13:22:39', '2005-02-16 20:55:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (15, 'f', '1970-06-21', 1, 'Maiores sit optio ducimus volu', 15, 15, '2015-04-20 23:21:55', '1975-10-16 03:41:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (16, 'f', '1990-07-31', 2, 'Harum quam voluptas laborum es', 16, 16, '2008-11-22 15:55:11', '1993-03-06 15:47:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (17, 'm', '1999-03-05', 7, 'Dolores corrupti qui et volupt', 17, 17, '2009-10-27 22:11:14', '1977-07-02 14:30:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (18, 'm', '1987-09-30', 3, 'Sunt laborum non voluptas volu', 18, 18, '2007-03-18 02:29:18', '1989-09-20 23:50:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (19, 'f', '2010-08-20', 8, 'Praesentium aliquid quibusdam ', 19, 19, '1970-11-02 20:26:15', '2007-03-31 18:03:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (20, 'm', '2011-09-12', 6, 'Expedita laboriosam quos commo', 20, 20, '2005-05-19 17:06:17', '2017-06-27 18:37:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (21, 'm', '2017-04-30', 4, 'Tempora nihil dolores ab quod ', 21, 21, '2001-10-31 16:51:01', '1998-06-25 05:04:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (22, 'f', '1972-03-14', 4, 'Laborum quo dolor quos qui eli', 22, 22, '1985-05-30 20:41:22', '2020-01-15 04:44:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (23, 'm', '1988-04-27', 5, 'Qui excepturi earum nesciunt l', 23, 23, '1998-11-10 07:07:38', '1989-01-16 22:28:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (24, 'm', '2000-10-17', 7, 'Ea qui est velit magni. Volupt', 24, 24, '2004-01-04 20:25:28', '1989-12-09 09:49:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (25, 'f', '1975-03-05', 3, 'Ut sint mollitia est reprehend', 25, 25, '1983-08-18 06:14:37', '2007-02-28 22:27:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (26, 'm', '2017-12-29', 0, 'Ex et sit nihil. Et sed molest', 26, 26, '2016-03-18 22:34:59', '1980-08-04 02:20:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (27, 'f', '1990-09-24', 2, 'Veritatis minima non nihil in ', 27, 27, '2003-07-27 07:18:40', '2003-02-05 07:25:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (28, 'f', '1996-04-04', 0, 'Voluptates modi voluptatum mol', 28, 28, '2005-10-20 05:12:45', '1974-08-06 15:07:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (29, 'm', '1975-11-08', 6, 'Deserunt possimus voluptates e', 29, 29, '2007-06-27 16:03:29', '1983-05-31 15:59:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (30, 'm', '1974-02-10', 7, 'Id perferendis ut consequatur.', 30, 30, '1983-08-11 05:01:56', '1990-06-27 12:06:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (31, 'f', '1990-03-25', 2, 'Ut ut omnis nulla doloribus. Q', 31, 31, '2015-07-14 03:37:37', '2020-09-10 22:40:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (32, 'm', '1976-08-24', 2, 'Vel excepturi nemo asperiores ', 32, 32, '2006-09-20 16:45:50', '2003-06-07 03:12:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (33, 'f', '2012-10-09', 0, 'Laudantium eum laboriosam repr', 33, 33, '2002-03-10 06:24:21', '1997-12-30 10:02:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (34, 'f', '2018-11-14', 4, 'Accusamus aliquid omnis at est', 34, 34, '1974-02-03 05:34:19', '2018-07-20 23:06:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (35, 'm', '1983-01-16', 0, 'Sed sequi tenetur repellat neq', 35, 35, '1984-09-30 12:31:24', '1985-10-14 18:04:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (36, 'm', '1982-06-22', 7, 'Omnis facere commodi et et. Il', 36, 36, '2008-11-30 06:47:15', '2019-06-19 13:20:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (37, 'm', '2004-12-11', 7, 'Voluptatem illum quod dolores ', 37, 37, '1978-07-28 09:15:07', '2017-08-30 17:23:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (38, 'f', '1975-09-29', 0, 'Maxime eaque architecto dolori', 38, 38, '1970-03-31 10:21:18', '2011-09-04 21:01:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (39, 'f', '1978-03-29', 0, 'Facilis et corporis in reicien', 39, 39, '2006-08-06 06:45:53', '1998-01-21 03:16:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (40, 'm', '1973-04-14', 0, 'Ea quaerat facilis magni maxim', 40, 40, '2016-12-22 10:23:43', '2006-06-21 11:53:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (41, 'm', '1973-02-28', 1, 'Et minima dolores perspiciatis', 41, 41, '1978-10-26 13:46:06', '2000-08-25 02:49:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (42, 'f', '1973-02-05', 8, 'Harum illo veniam harum est qu', 42, 42, '1986-10-18 13:44:06', '1987-09-21 14:45:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (43, 'f', '1988-09-19', 5, 'Eos laborum dolores dolorem mo', 43, 43, '2008-04-08 06:14:43', '1986-06-20 22:02:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (44, 'f', '2018-08-17', 5, 'Tempora quis non nemo ut. Reru', 44, 44, '1999-05-14 03:21:38', '2012-09-09 06:04:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (45, 'm', '2020-10-02', 9, 'Aliquam voluptatem nemo blandi', 45, 45, '1987-11-20 15:30:16', '1984-03-21 22:43:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (46, 'f', '1976-04-17', 1, 'Quia omnis vel quia repellat i', 46, 46, '1999-08-21 02:05:31', '2004-11-24 02:33:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (47, 'm', '1995-06-23', 3, 'Quos nihil cumque dolor corrup', 47, 47, '1974-10-29 14:22:56', '2007-09-30 00:33:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (48, 'm', '1984-03-31', 6, 'Consectetur eum incidunt eum f', 48, 48, '1994-03-29 08:10:52', '1987-10-07 07:35:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (49, 'm', '1985-03-17', 6, 'Quos facere et saepe optio et ', 49, 49, '1985-10-15 10:27:59', '1981-02-25 07:53:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (50, 'm', '1970-10-31', 9, 'Ut est ut sunt assumenda illum', 50, 50, '2019-02-17 08:27:17', '1995-10-06 10:39:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (51, 'm', '2010-04-23', 4, 'Quas qui tempora veniam ipsum.', 51, 51, '1975-06-05 15:24:52', '2001-09-23 07:42:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (52, 'f', '1987-07-17', 3, 'Laborum officiis est saepe est', 52, 52, '1986-04-22 15:07:58', '2011-06-09 11:36:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (53, 'f', '2019-09-16', 9, 'Quae rerum consectetur cumque ', 53, 53, '2001-08-13 15:00:44', '1974-02-28 05:34:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (54, 'f', '1998-07-01', 9, 'Libero veritatis perferendis a', 54, 54, '1989-01-31 03:50:16', '2006-11-24 06:00:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (55, 'm', '1993-07-01', 6, 'Qui reprehenderit dolore nihil', 55, 55, '1990-10-20 17:21:24', '1992-08-20 20:42:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (56, 'm', '1973-01-17', 7, 'Quod vel officia voluptas. Ut ', 56, 56, '2003-02-03 12:05:55', '2005-12-02 11:56:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (57, 'f', '1980-05-05', 1, 'Doloribus ea alias nihil saepe', 57, 57, '1994-01-25 11:38:55', '1972-06-14 11:03:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (58, 'm', '2000-05-10', 4, 'Et id quae eum omnis. Consequu', 58, 58, '1973-10-04 22:22:42', '1984-09-09 16:52:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (59, 'f', '1976-12-25', 9, 'Quas in ex minima sapiente adi', 59, 59, '1972-03-10 01:16:11', '1991-04-26 03:03:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (60, 'm', '2003-02-05', 2, 'Rerum tempora unde quod simili', 60, 60, '1979-02-27 15:55:00', '2002-08-30 02:31:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (61, 'f', '2020-08-09', 1, 'Unde rerum quibusdam ducimus e', 61, 61, '1984-10-14 02:52:27', '1987-11-05 10:20:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (62, 'f', '2015-03-21', 8, 'Repudiandae dolorem autem et p', 62, 62, '1989-11-15 01:46:12', '1986-12-02 06:58:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (63, 'm', '2016-03-03', 7, 'Facilis ipsum maiores providen', 63, 63, '1976-04-01 03:17:56', '2009-10-24 21:21:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (64, 'm', '1991-01-10', 7, 'Animi excepturi error enim non', 64, 64, '1974-10-08 02:02:39', '2000-08-03 05:41:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (65, 'f', '2003-11-20', 3, 'Dolores commodi nam non deseru', 65, 65, '1987-01-08 12:01:03', '2003-02-14 07:14:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (66, 'f', '1977-11-15', 0, 'Autem nulla voluptatem rerum e', 66, 66, '1988-03-25 08:55:48', '2020-04-16 17:49:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (67, 'f', '2006-09-30', 7, 'Perspiciatis ut libero nisi po', 67, 67, '1970-08-03 08:26:29', '2005-12-24 10:59:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (68, 'f', '1991-04-25', 2, 'Voluptas fuga veniam assumenda', 68, 68, '1983-08-23 08:12:43', '2005-12-12 04:56:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (69, 'm', '2015-02-14', 0, 'Deserunt illo nostrum enim et ', 69, 69, '2019-07-22 16:15:48', '2008-11-07 14:08:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (70, 'm', '1977-12-22', 3, 'Neque qui maxime a. Non enim i', 70, 70, '2004-09-23 03:44:29', '2003-09-24 16:33:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (71, 'f', '2009-05-22', 2, 'Est incidunt blanditiis aperia', 71, 71, '2010-03-17 16:13:09', '1973-12-27 01:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (72, 'f', '1970-08-09', 0, 'Ut qui reiciendis dignissimos.', 72, 72, '1972-04-28 18:08:29', '2005-10-27 14:08:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (73, 'm', '1988-06-27', 5, 'Mollitia corporis voluptatum v', 73, 73, '1973-03-26 08:49:15', '2005-10-01 07:59:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (74, 'm', '2015-07-04', 0, 'Est possimus iure aliquid. Iur', 74, 74, '2018-11-04 17:40:45', '1997-09-17 19:57:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (75, 'f', '2011-06-10', 9, 'Ut id omnis temporibus rerum v', 75, 75, '2020-04-24 06:39:02', '1998-11-29 20:55:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (76, 'f', '2017-01-04', 0, 'Nihil iste accusantium animi r', 76, 76, '1995-03-01 23:26:50', '1981-12-29 16:37:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (77, 'm', '1971-12-30', 9, 'Cumque nostrum possimus non do', 77, 77, '1979-07-21 01:06:45', '1972-10-06 10:02:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (78, 'f', '1976-05-11', 1, 'Voluptates error aut quia sed ', 78, 78, '1985-10-21 02:58:50', '1996-02-22 17:02:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (79, 'm', '1993-07-24', 2, 'Optio provident qui minus repr', 79, 79, '1999-05-19 15:38:52', '1980-04-13 06:47:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (80, 'm', '2005-05-09', 4, 'Tempora aspernatur sit sed et.', 80, 80, '1974-07-27 16:27:58', '2009-02-14 20:33:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (81, 'f', '2013-05-29', 4, 'Blanditiis quis et tempore fac', 81, 81, '1996-08-28 21:54:48', '2010-08-04 07:48:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (82, 'f', '2018-03-19', 7, 'Inventore sit amet corrupti pe', 82, 82, '2020-05-22 00:39:33', '2009-06-20 06:53:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (83, 'm', '2016-06-03', 8, 'Excepturi quia minima corporis', 83, 83, '2015-09-01 20:03:23', '2018-02-10 22:35:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (84, 'f', '1987-04-10', 3, 'Voluptates maxime omnis est li', 84, 84, '2006-03-29 17:43:29', '2010-11-06 13:52:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (85, 'm', '1994-06-08', 5, 'Molestiae corporis qui dicta f', 85, 85, '1994-10-18 17:04:29', '2008-07-14 21:42:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (86, 'm', '2009-09-10', 1, 'Reiciendis accusamus sit ut co', 86, 86, '2013-07-02 18:50:07', '1999-04-22 15:51:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (87, 'f', '2004-07-03', 8, 'Aut blanditiis porro voluptate', 87, 87, '2003-03-14 05:55:03', '1992-03-09 06:06:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (88, 'f', '1977-03-22', 2, 'Eum ut ut quidem animi omnis q', 88, 88, '1976-08-24 13:45:37', '1991-04-11 11:16:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (89, 'f', '1991-04-09', 7, 'Adipisci omnis maxime error au', 89, 89, '1976-11-30 23:44:10', '2004-08-13 04:48:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (90, 'f', '2003-01-16', 7, 'Voluptatem sed distinctio et. ', 90, 90, '1998-08-26 02:45:13', '2007-04-02 09:19:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (91, 'f', '2020-05-26', 5, 'Est dolor alias inventore illo', 91, 91, '2017-08-23 22:59:22', '1986-02-21 09:48:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (92, 'f', '1989-08-29', 7, 'Quo atque recusandae ad autem ', 92, 92, '1974-09-11 19:20:13', '1999-03-18 07:11:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (93, 'm', '1986-02-10', 9, 'Et architecto iure ipsum delec', 93, 93, '2017-07-03 04:42:56', '1985-02-09 08:37:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (94, 'f', '1998-05-03', 0, 'Esse maiores voluptatem cum om', 94, 94, '2008-01-08 10:54:36', '2013-09-03 07:33:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (95, 'm', '1971-09-17', 5, 'Iste et quibusdam aperiam tota', 95, 95, '1995-06-25 02:07:49', '1970-10-26 14:32:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (96, 'f', '1994-03-09', 3, 'Consequatur et dolor dolor arc', 96, 96, '2005-10-21 13:17:14', '1982-04-17 20:31:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (97, 'f', '1974-05-11', 2, 'Ut nihil praesentium aspernatu', 97, 97, '1976-09-12 20:54:08', '1991-03-31 20:13:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (98, 'm', '2018-10-22', 4, 'Placeat aut quae saepe et illu', 98, 98, '1989-06-13 15:01:48', '1979-06-06 02:05:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (99, 'f', '1993-04-15', 7, 'Expedita illo et facere natus.', 99, 99, '2002-04-13 03:12:13', '1981-09-24 11:27:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `country_id`, `created_at`, `updated_at`) VALUES (100, 'f', '1992-02-11', 5, 'Vitae quo nostrum provident. N', 100, 100, '2003-09-12 09:35:09', '1972-08-20 06:09:44');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Alexa', 'Leffler', 'loyal36@example.com', '890.445.6030x532', '1997-01-22 21:54:23', '1996-03-01 05:55:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Jena', 'Beer', 'christina.reilly@example.org', '(486)304-7201', '2015-02-21 02:54:51', '1978-11-16 10:35:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Camylle', 'Kris', 'ruben.pacocha@example.org', '170.993.7272x383', '2018-11-09 02:20:46', '1981-08-11 15:04:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Kennedi', 'Brekke', 'jewel.jenkins@example.net', '084-797-4646x6824', '1988-09-28 12:10:15', '1981-03-02 10:18:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Colleen', 'Upton', 'rosemarie89@example.org', '1-298-740-8209x86967', '2004-09-11 00:19:39', '1991-06-19 02:38:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Franco', 'Dare', 'ciara.bins@example.org', '(443)664-6104', '1971-07-07 02:43:57', '1992-03-10 21:58:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Eloise', 'Hansen', 'morton.jones@example.net', '09078527790', '2016-07-23 22:58:01', '1986-03-05 22:01:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ferne', 'Jones', 'heller.aleen@example.org', '262-871-5612x21760', '1985-07-16 15:40:35', '2002-05-20 19:33:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Chloe', 'Bechtelar', 'dheidenreich@example.org', '121.591.6656x831', '1999-05-30 12:42:34', '1979-04-02 03:42:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Agustina', 'Lemke', 'enola17@example.com', '(160)378-3519', '1996-11-07 03:05:47', '1982-08-05 02:57:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Freeda', 'Klocko', 'norma39@example.com', '(261)535-1512x648', '1993-02-24 02:19:30', '1987-05-26 05:05:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Antwon', 'Schneider', 'joanne45@example.org', '1-759-847-7249x977', '1976-04-18 23:34:21', '1991-12-07 11:35:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Mabelle', 'Weissnat', 'monserrat60@example.net', '1-763-276-2416x73710', '2020-05-21 07:56:20', '1996-09-25 16:29:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Kellie', 'Prosacco', 'anika.mertz@example.org', '934.698.2733', '1980-05-06 06:30:01', '1993-11-23 00:57:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Drew', 'Hamill', 'sterling10@example.org', '1-529-969-8284', '2003-10-05 06:17:15', '1987-02-10 05:34:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Nichole', 'Schumm', 'seamus.rau@example.net', '(180)949-5444', '1972-04-07 07:40:54', '1987-07-01 06:33:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Velva', 'Hauck', 'narciso.mraz@example.com', '+67(4)6242882660', '2004-03-08 14:57:49', '2011-02-19 03:05:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Marty', 'Harber', 'irempel@example.com', '127-962-3622', '2005-06-18 00:42:00', '2018-12-18 19:23:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Samara', 'Crist', 'hgraham@example.org', '(735)940-5271x27138', '2001-04-04 17:01:37', '1988-12-03 02:13:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Dudley', 'Cormier', 'ronaldo.klocko@example.com', '400-259-2138', '1990-12-15 20:31:26', '1993-05-26 05:19:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Valentine', 'Dicki', 'jane.ankunding@example.org', '(061)919-4072x3180', '1988-06-11 02:45:55', '1981-01-24 07:45:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Stanton', 'Gottlieb', 'tremblay.joey@example.net', '1-643-920-1127', '2011-08-24 12:34:42', '1972-11-25 05:50:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Marcelino', 'Kovacek', 'katelyn.olson@example.com', '09827071482', '1988-06-14 00:08:39', '2006-03-02 14:23:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Jadon', 'Padberg', 'marlin.greenfelder@example.com', '300-687-7713', '2007-02-04 23:09:56', '1998-09-23 19:14:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Kaia', 'Nolan', 'sreichel@example.org', '601.393.5828', '2004-10-12 13:03:17', '1988-09-22 09:55:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Tyler', 'Kohler', 'xdeckow@example.org', '01168624585', '2002-11-10 22:09:12', '1978-05-19 22:25:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jody', 'Daugherty', 'ondricka.lincoln@example.com', '(220)404-2009', '1979-03-31 02:41:01', '2001-09-11 14:44:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Lauryn', 'Kreiger', 'novella39@example.org', '569.163.6014', '1985-02-17 02:07:55', '1979-12-07 01:32:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Mozell', 'Schmeler', 'jeanie64@example.com', '032-876-1601x84980', '2015-08-25 00:01:43', '2005-05-05 22:43:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Laurence', 'Beatty', 'kristin25@example.net', '1-617-288-9218', '1971-05-20 12:19:56', '1997-09-05 01:43:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Lonnie', 'Hermiston', 'wwalsh@example.com', '188-204-4155', '1996-05-16 12:19:06', '1988-05-19 03:04:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Mateo', 'Renner', 'labadie.moriah@example.com', '(770)692-6830', '2011-02-21 09:08:25', '1979-01-28 11:35:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Aliya', 'Cremin', 'zelda.oberbrunner@example.org', '450-175-5856', '1972-08-03 17:05:47', '1986-04-18 05:47:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kamryn', 'Beahan', 'chasity84@example.net', '05792550228', '2003-12-14 06:51:19', '2007-11-27 01:07:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Vito', 'Huels', 'bednar.eddie@example.org', '1-324-017-9131x9920', '1990-05-13 20:36:39', '2011-07-05 14:13:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Ida', 'Sipes', 'ariel.white@example.com', '285-339-1487x854', '1989-05-04 20:03:05', '1970-05-06 14:22:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Kira', 'Rau', 'maggio.vickie@example.com', '020-377-1347x4938', '1989-07-23 17:16:33', '1993-06-06 06:43:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jermey', 'Sauer', 'polly.wiegand@example.net', '1-160-621-2564x320', '1980-03-16 06:21:59', '2002-08-06 06:43:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Fred', 'Bernhard', 'francisca.kemmer@example.net', '+00(8)6124307354', '2019-08-11 11:14:47', '2013-11-14 23:20:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Jedidiah', 'Lindgren', 'hassie03@example.org', '09351241575', '1971-03-03 03:20:17', '1991-06-19 12:05:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Jarvis', 'Friesen', 'kohler.dora@example.com', '05437484013', '1993-05-13 19:13:18', '2011-05-01 17:12:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Bernita', 'Goodwin', 'izabella.o\'kon@example.com', '1-608-171-8301', '1984-10-21 11:46:11', '1983-01-03 13:32:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Sonia', 'Cassin', 'lois90@example.com', '1-960-253-5757x94826', '2001-03-29 09:32:29', '1970-05-21 07:30:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Lori', 'Wilderman', 'elyse69@example.org', '315-191-4046', '1983-05-25 12:48:43', '2020-06-06 04:48:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Camille', 'Bahringer', 'xtorp@example.net', '782.017.2814', '1975-09-02 22:38:14', '2007-11-07 01:59:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Trey', 'Hamill', 'fanderson@example.net', '839.711.4741', '2004-07-04 18:28:24', '1990-02-20 12:43:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Kathryne', 'Reynolds', 'blanda.richard@example.net', '1-532-447-3536x1002', '1983-08-05 12:34:46', '1996-02-06 16:24:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Isaiah', 'Tremblay', 'konopelski.roger@example.net', '638-069-1181', '1994-09-17 16:52:00', '1987-10-13 13:48:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Antonette', 'Lang', 'fahey.anahi@example.org', '1-762-318-0747x221', '1991-02-18 13:58:34', '1971-03-27 14:53:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Bennie', 'Kling', 'isidro.kshlerin@example.net', '665-581-6315x547', '1979-05-26 02:17:04', '1987-03-28 20:15:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Tobin', 'Powlowski', 'merl02@example.com', '01902756722', '2011-12-02 03:30:01', '2011-10-05 07:12:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Johnny', 'Durgan', 'erick35@example.org', '754-931-2735x19127', '2008-02-18 13:20:44', '2007-05-08 00:43:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Macey', 'Roberts', 'nicholas96@example.net', '1-502-046-7606', '1981-06-30 05:08:20', '1984-05-27 22:56:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Viola', 'Wilkinson', 'troy.jacobs@example.org', '1-449-546-7712x940', '2014-10-31 05:36:36', '2008-07-16 18:42:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Liana', 'Cremin', 'rboyle@example.com', '349-824-6258x32533', '2002-01-25 22:22:07', '1981-05-14 05:50:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Marcellus', 'Lebsack', 'isabell.ankunding@example.com', '1-623-689-7409x26736', '1985-06-21 00:07:21', '1984-02-15 01:49:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Noemy', 'Heller', 'emmanuel49@example.com', '(520)698-8504', '1981-11-10 21:29:46', '1998-07-23 03:24:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Judson', 'O\'Connell', 'hannah15@example.com', '154.579.0878x52873', '2014-06-22 04:20:39', '2010-02-01 01:35:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jayce', 'Nitzsche', 'lourdes34@example.com', '414-206-1595', '1988-06-22 04:03:08', '1986-04-03 08:47:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Blaise', 'Reynolds', 'yessenia.ryan@example.com', '1-805-141-0446', '1982-03-17 04:14:38', '1997-12-01 00:26:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Emmanuelle', 'Mraz', 'moses52@example.org', '238-269-3387', '1987-12-05 09:05:58', '2013-01-22 08:16:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Sarai', 'Wiegand', 'bergnaum.samson@example.com', '+44(0)5873595309', '1980-06-23 21:05:22', '2005-06-08 07:52:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Monica', 'Streich', 'maggie.schoen@example.com', '(331)376-9871', '2003-09-05 18:21:33', '1982-03-09 21:43:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Quinten', 'Lind', 'nona84@example.net', '286.409.6343x38525', '2004-06-30 19:27:27', '2001-06-09 09:01:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Kennedy', 'Hodkiewicz', 'estel.koch@example.net', '1-547-088-8300x1410', '1996-11-23 14:55:49', '1973-08-16 00:42:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Glenna', 'Kihn', 'bruen.barton@example.org', '155-446-8790x4597', '1979-05-23 02:45:38', '1996-06-17 09:22:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Derek', 'West', 'gustave.dibbert@example.org', '537.037.0163x1790', '1981-10-15 04:43:22', '1970-01-19 14:20:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Nayeli', 'Rutherford', 'tamia88@example.org', '(830)883-5655', '2003-05-05 09:49:02', '1970-02-21 02:23:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Juana', 'Runolfsdottir', 'so\'keefe@example.com', '(961)660-1033', '1992-06-26 23:29:27', '1979-10-21 01:30:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Alessandra', 'Harber', 'shana.bogan@example.net', '1-167-522-0052x4950', '2009-08-18 18:19:25', '1988-07-04 20:02:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'America', 'Emmerich', 'jules42@example.net', '+51(2)2984556892', '1977-05-21 09:02:57', '2010-06-20 10:08:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Lukas', 'Reichert', 'rempel.kaden@example.org', '616-223-5740', '1993-12-16 08:41:19', '2017-01-29 15:58:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Velma', 'Sipes', 'labadie.berry@example.org', '1-752-997-7216x8008', '1994-08-05 20:07:04', '1978-04-18 12:07:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Marilyne', 'Jast', 'aleen.osinski@example.org', '1-213-672-8626x9884', '2015-10-23 00:03:40', '2017-12-25 16:08:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Arnaldo', 'Deckow', 'roberta85@example.org', '(286)190-0359', '1974-01-29 00:55:28', '1996-05-07 02:13:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Erling', 'Rath', 'layla.ratke@example.com', '035.719.2516x0728', '1999-11-11 03:50:59', '1992-07-22 21:56:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Fleta', 'Fay', 'hilda71@example.net', '562.517.1982x7810', '2003-09-23 10:51:27', '2005-10-03 08:23:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Christiana', 'Sipes', 'reynolds.celia@example.net', '1-807-507-4971x9376', '2005-05-19 12:15:59', '2016-01-27 23:16:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Otha', 'Barrows', 'aliya.schaefer@example.com', '998-825-9648x09508', '1976-07-18 00:33:41', '2012-10-08 00:20:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Candido', 'Stamm', 'hauck.cletus@example.org', '(048)031-8654x2157', '1980-08-12 15:42:39', '2013-02-11 19:53:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Alek', 'Marquardt', 'qwolff@example.com', '+52(4)6107125065', '1993-12-29 15:47:14', '1997-02-20 10:57:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Shad', 'Sanford', 'georgiana62@example.com', '998.480.1322', '2008-12-27 08:24:27', '1992-03-29 04:07:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Colby', 'Johnston', 'dorthy.bins@example.net', '1-385-310-2972x8712', '1971-07-26 10:40:44', '2005-02-22 11:15:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Darion', 'Hickle', 'flatley.anthony@example.net', '052-159-0682', '2018-04-03 21:50:11', '1992-03-17 05:39:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'April', 'Crooks', 'augustus95@example.com', '(902)305-8662x32396', '2000-10-13 18:26:26', '2018-01-12 02:51:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Lexie', 'Labadie', 'chance.dare@example.net', '00577126388', '2002-07-31 08:55:40', '1983-12-04 19:13:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Deshaun', 'Wolff', 'devin41@example.net', '(306)311-3316', '1989-02-21 02:01:43', '1988-05-24 08:20:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Hettie', 'Marquardt', 'liza.o\'conner@example.com', '777-011-5905x810', '1995-06-12 19:58:30', '1984-11-02 13:08:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Orval', 'Rodriguez', 'susana26@example.com', '070.671.4348x35503', '2000-06-11 06:02:45', '1976-10-18 19:00:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Rowena', 'Gleason', 'wintheiser.destinee@example.org', '517-194-2203', '2002-05-27 16:11:46', '1992-07-23 14:32:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Ricardo', 'McCullough', 'deborah15@example.net', '(391)938-4900x5415', '2020-04-08 14:09:34', '1979-07-17 13:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Martina', 'Lindgren', 'camron.cole@example.com', '08724039892', '1993-04-18 04:11:36', '2006-01-29 05:25:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Ewell', 'Robel', 'janelle58@example.com', '(694)125-4519x141', '2015-06-01 23:00:08', '1976-11-07 13:27:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Imelda', 'Brown', 'jdaniel@example.org', '(555)495-0798x70440', '1997-03-11 14:52:15', '2018-04-10 23:24:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Dangelo', 'Lueilwitz', 'raphaelle37@example.com', '+49(9)1295005664', '2016-10-14 18:52:27', '1975-03-28 20:40:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Horace', 'Waters', 'berry84@example.org', '1-810-886-2222x6133', '1981-02-11 15:20:44', '1978-04-09 03:41:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Margarita', 'Hessel', 'tanya.rath@example.net', '003.908.8344x131', '1981-08-24 06:41:32', '1992-02-16 17:07:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Marcellus', 'Huels', 'beahan.candido@example.net', '03114425100', '2003-10-31 04:47:55', '1974-01-01 16:26:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Jeromy', 'O\'Hara', 'kristian.conn@example.org', '+53(1)8509397564', '1971-03-12 21:42:40', '2008-01-01 16:05:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Adriana', 'Eichmann', 'vkris@example.org', '1-912-899-5964', '1984-07-30 23:04:22', '1998-11-25 16:20:55');

DROP TABLE IF EXISTS `content_likes`;

CREATE TABLE `content_likes` (
  `user_id` int(11) NOT NULL COMMENT 'Идентификатор пользователя, поставившего лайк',
  `post_id` int(11) NOT NULL COMMENT 'Идентификатор поста, получивший лайк',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (1, 55);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (3, 40);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (3, 49);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (3, 84);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (5, 75);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (6, 36);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (8, 2);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (10, 98);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (11, 22);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (11, 44);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (11, 83);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (13, 40);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (13, 70);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (13, 81);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (14, 20);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (16, 34);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (16, 63);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (17, 8);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (17, 40);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (18, 18);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (19, 51);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (20, 38);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (21, 72);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (21, 92);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (23, 1);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (26, 42);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (26, 95);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (27, 10);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (28, 63);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (30, 49);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (36, 72);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (37, 24);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (38, 16);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (38, 100);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (39, 77);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (40, 97);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (41, 2);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (41, 95);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (42, 72);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (43, 71);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (44, 82);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (45, 19);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (47, 2);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (47, 95);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (50, 90);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (50, 92);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (52, 81);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (53, 16);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (53, 100);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (57, 39);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (59, 39);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (59, 51);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (59, 80);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (59, 89);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (60, 95);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (61, 22);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (63, 16);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (64, 1);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (64, 36);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (64, 89);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (65, 86);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (66, 1);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (66, 15);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (66, 88);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (68, 19);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (70, 53);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (70, 61);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (70, 94);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (72, 43);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (72, 52);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (74, 72);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (76, 40);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (77, 5);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (77, 61);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (78, 5);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (79, 68);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (79, 92);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (80, 39);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (81, 38);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (81, 80);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (81, 96);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (86, 42);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (86, 96);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (87, 24);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (87, 46);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (90, 5);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (91, 26);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (91, 56);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (91, 84);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (92, 19);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (93, 3);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (93, 77);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (96, 14);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (96, 46);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (96, 65);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (97, 16);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (97, 32);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (98, 89);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (98, 93);
INSERT INTO `content_likes` (`user_id`, `post_id`) VALUES (99, 15);


#
# TABLE STRUCTURE FOR: user_likes
#

DROP TABLE IF EXISTS `user_likes`;

CREATE TABLE `user_likes` (
  `user_id` int(11) NOT NULL COMMENT 'Идентификатор пользователя, поставившего лайк',
  `user_id_liked` int(11) NOT NULL COMMENT 'Идентификатор пользователя, получившего лайк',
  PRIMARY KEY (`user_id`,`user_id_liked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (1, 18);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (2, 2);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (2, 46);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (3, 53);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (3, 73);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (4, 24);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (5, 90);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (8, 43);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (9, 71);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (9, 86);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (13, 26);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (14, 17);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (14, 33);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (15, 29);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (15, 48);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (15, 69);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (16, 25);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (18, 30);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (18, 35);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (18, 96);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (19, 29);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (19, 49);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (19, 85);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (20, 56);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (21, 66);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (22, 10);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (22, 45);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (23, 1);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (27, 46);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (27, 83);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (28, 16);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (28, 51);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (30, 42);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (30, 66);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (30, 89);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (31, 30);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (32, 77);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (33, 35);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (34, 85);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (37, 46);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (39, 35);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (40, 61);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (41, 43);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (41, 78);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (41, 83);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (41, 90);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (44, 76);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (47, 100);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (49, 46);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (49, 100);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (50, 82);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (52, 51);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (56, 55);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (57, 18);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (57, 37);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (57, 70);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (62, 23);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (62, 28);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (63, 99);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (65, 14);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (65, 98);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (67, 83);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (68, 7);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (70, 93);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (72, 3);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (72, 93);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (73, 9);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (73, 59);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (75, 34);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (76, 18);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (76, 28);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (76, 81);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (76, 87);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (76, 92);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (77, 57);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (78, 99);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (80, 36);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (81, 6);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (82, 64);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (82, 68);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (82, 88);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (84, 96);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (86, 26);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (86, 31);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (87, 90);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (88, 31);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (88, 55);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (88, 93);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (90, 10);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (90, 100);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (91, 46);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (92, 49);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (94, 5);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (94, 52);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (95, 2);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (96, 61);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (96, 91);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (97, 84);
INSERT INTO `user_likes` (`user_id`, `user_id_liked`) VALUES (100, 88);

