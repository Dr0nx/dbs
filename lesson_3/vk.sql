#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (1, 'Lake Aliviafurt', 92);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (2, 'North Michelle', 29);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (3, 'Port Abdul', 34);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (4, 'New Grace', 41);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (5, 'South Hiramland', 20);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (6, 'West Tyrese', 27);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (7, 'Geoview', 13);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (8, 'Port Gladys', 42);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (9, 'New Noeburgh', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (10, 'North Chyna', 50);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (11, 'East Burley', 35);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (12, 'Kulasstad', 59);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (13, 'New Sharon', 53);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (14, 'West Lillian', 31);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (15, 'East Louisaville', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (16, 'Anikastad', 68);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (17, 'North Neldaburgh', 93);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (18, 'Coleshire', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (19, 'North Jayden', 30);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (20, 'West Trent', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (21, 'East Chanelle', 57);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (22, 'Wilkinsonfurt', 79);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (23, 'Kaelamouth', 12);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (24, 'Petraville', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (25, 'Sethbury', 62);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (26, 'West Karolannbury', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (27, 'Rutherfordbury', 66);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (28, 'Reynoldsland', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (29, 'East Clara', 10);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (30, 'West Lelia', 79);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (31, 'West Ciceroshire', 47);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (32, 'New Seth', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (33, 'Lake Jamison', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (34, 'East Tomport', 80);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (35, 'Port Irvingside', 41);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (36, 'South Jordaneburgh', 27);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (37, 'Sylvesterbury', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (38, 'North Marcelinochester', 54);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (39, 'East Vella', 68);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (40, 'Raynorville', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (41, 'Opheliahaven', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (42, 'Eloisafort', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (43, 'Lake Dean', 67);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (44, 'East Kiana', 56);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (45, 'Sabrinamouth', 32);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (46, 'Giovannaport', 68);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (47, 'West Jonmouth', 24);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (48, 'Wardview', 25);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (49, 'Runolfsdottirfort', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (50, 'Port Ervinview', 53);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (51, 'Kilbackport', 28);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (52, 'East Gwendolynton', 64);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (53, 'Port Luellaburgh', 31);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (54, 'New Maynard', 39);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (55, 'Barrymouth', 70);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (56, 'Kylamouth', 92);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (57, 'East Jaquelineberg', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (58, 'Gottliebchester', 36);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (59, 'New Jackfort', 97);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (60, 'South Gia', 50);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (61, 'West Molliemouth', 15);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (62, 'North Brandimouth', 44);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (63, 'Kossville', 50);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (64, 'Bernhardhaven', 22);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (65, 'West Mallie', 23);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (66, 'East Rosaleeborough', 91);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (67, 'Kennithland', 48);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (68, 'East Elza', 30);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (69, 'Koelpinborough', 44);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (70, 'New Kylie', 16);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (71, 'Chandlertown', 37);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (72, 'Joeyshire', 47);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (73, 'North Carissa', 17);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (74, 'Hudsonhaven', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (75, 'North Germanborough', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (76, 'North Emeraldland', 49);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (77, 'Magdalenmouth', 71);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (78, 'North Oral', 26);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (79, 'North Edenhaven', 74);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (80, 'Port Woodrow', 78);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (81, 'Blaiseside', 78);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (82, 'Port Rafaela', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (83, 'Brandtfurt', 41);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (84, 'Lemkeberg', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (85, 'Kilbackfort', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (86, 'Odellhaven', 11);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (87, 'Sierraland', 100);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (88, 'Doraberg', 79);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (89, 'New Dallinmouth', 47);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (90, 'Brianamouth', 97);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (91, 'Haleyborough', 29);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (92, 'Lake Laura', 61);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (93, 'Jeffereyshire', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (94, 'Nakiachester', 78);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (95, 'Reynoldschester', 83);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (96, 'Harrisshire', 63);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (97, 'Lake Raeganview', 69);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (98, 'Clarissamouth', 30);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (99, 'Aracelyburgh', 92);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (100, 'New Giuseppe', 12);


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'enim', '2012-04-15 23:03:35', '2013-12-27 22:31:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'repellendus', '2020-08-20 12:00:25', '2021-03-06 13:35:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'nihil', '2016-05-11 08:21:42', '2013-10-22 07:58:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'itaque', '2014-06-15 15:58:53', '2013-03-10 13:24:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'sequi', '2012-08-06 06:09:11', '2015-07-28 07:44:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ipsa', '2014-10-02 21:05:44', '2011-04-28 06:49:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'blanditiis', '2012-02-04 23:34:54', '2020-06-02 16:55:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'nulla', '2019-11-09 18:06:11', '2020-05-06 22:40:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'tenetur', '2015-09-19 19:33:17', '2015-02-23 18:53:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'nemo', '2017-06-02 21:19:38', '2018-10-22 17:07:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'facilis', '2017-12-31 15:51:31', '2020-03-21 05:08:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'nostrum', '2021-03-10 07:09:57', '2016-11-24 09:39:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'est', '2013-10-25 09:36:51', '2019-05-24 23:11:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'aspernatur', '2014-09-09 07:55:52', '2018-08-14 16:07:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'quaerat', '2021-04-23 19:12:16', '2015-03-07 00:44:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'eos', '2021-01-24 22:07:31', '2017-04-30 04:25:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'non', '2018-08-26 11:38:10', '2019-12-24 13:04:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'ut', '2017-09-03 17:19:06', '2017-04-16 20:18:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'saepe', '2020-07-21 03:16:56', '2012-12-12 11:38:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'ab', '2016-11-17 03:05:06', '2016-06-08 05:58:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'tempora', '2014-02-04 10:15:15', '2013-08-14 21:23:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'architecto', '2018-10-11 12:32:39', '2012-10-29 16:34:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'ipsum', '2017-11-22 17:59:54', '2013-10-09 05:36:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sint', '2014-04-09 20:37:22', '2019-12-14 03:10:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'labore', '2017-11-21 17:59:39', '2017-10-29 01:41:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'et', '2014-02-13 23:10:10', '2019-05-26 16:56:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quisquam', '2016-01-08 20:39:14', '2015-07-20 03:42:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quia', '2021-01-07 01:04:22', '2020-08-27 01:57:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'nisi', '2015-06-18 05:07:52', '2018-02-20 14:58:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'dolorum', '2015-12-02 18:58:51', '2015-04-23 18:35:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'in', '2014-12-01 12:07:49', '2014-06-20 17:30:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'similique', '2019-06-23 14:15:08', '2014-09-22 16:41:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'fugiat', '2013-05-21 07:44:19', '2019-12-26 01:05:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'deserunt', '2018-11-21 10:52:40', '2016-03-09 15:15:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'harum', '2016-06-23 04:10:31', '2016-06-20 11:21:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'accusantium', '2012-02-20 12:36:35', '2013-11-25 13:13:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'doloremque', '2013-08-14 23:03:52', '2012-12-30 00:46:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'rerum', '2019-08-04 22:36:51', '2019-09-13 13:47:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'dicta', '2011-08-09 05:26:17', '2014-11-29 20:37:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'aut', '2013-10-09 22:40:00', '2012-11-12 10:05:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'adipisci', '2016-12-19 11:28:58', '2013-09-16 17:45:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'consectetur', '2017-02-18 02:35:15', '2021-03-24 05:35:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'possimus', '2012-06-07 23:17:36', '2012-08-14 15:10:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'voluptatibus', '2014-10-11 10:18:23', '2020-10-03 11:59:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'quam', '2012-12-06 22:31:37', '2020-12-18 23:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'officia', '2014-05-21 15:51:28', '2016-04-27 00:21:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'necessitatibus', '2013-09-18 21:35:30', '2015-06-25 22:16:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'omnis', '2016-08-28 15:53:11', '2018-10-12 06:32:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'sed', '2017-07-15 15:01:50', '2018-10-31 13:35:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'culpa', '2014-08-03 22:10:47', '2011-10-06 10:15:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'molestias', '2017-11-03 13:06:57', '2017-11-11 19:01:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'sit', '2019-04-30 17:48:47', '2019-02-19 01:15:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'quod', '2021-04-04 17:15:47', '2013-11-13 12:58:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'dolores', '2015-06-29 16:49:37', '2020-12-02 00:15:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'voluptatum', '2020-01-07 15:13:35', '2014-04-01 02:21:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'nam', '2017-05-18 23:47:52', '2019-11-05 09:30:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'qui', '2012-08-15 01:02:07', '2012-12-23 14:16:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'expedita', '2021-04-15 15:03:48', '2012-08-20 21:21:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'alias', '2012-03-11 05:48:18', '2011-07-14 19:23:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'veritatis', '2013-10-15 22:56:52', '2014-03-04 02:02:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'delectus', '2013-03-22 05:31:17', '2018-03-20 14:02:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'vitae', '2013-05-19 23:23:22', '2016-09-17 04:08:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'voluptate', '2017-01-11 15:38:06', '2021-04-08 18:55:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'dolore', '2011-07-27 11:18:53', '2011-09-21 11:03:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'excepturi', '2015-06-07 18:29:44', '2016-08-29 19:52:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'aperiam', '2017-08-14 14:14:45', '2014-12-28 05:37:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'rem', '2018-02-20 17:26:44', '2021-04-17 21:07:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'eius', '2012-08-07 01:03:23', '2017-09-21 16:23:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'beatae', '2016-03-15 00:40:10', '2011-06-24 14:17:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'fuga', '2011-08-01 09:21:54', '2014-08-26 21:05:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'laboriosam', '2018-02-12 20:53:46', '2012-02-23 20:45:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'id', '2017-07-28 19:08:54', '2017-04-04 23:17:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'voluptatem', '2020-07-11 12:54:23', '2021-04-10 15:39:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'consequatur', '2017-11-26 18:59:47', '2016-01-13 09:02:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'temporibus', '2011-12-05 09:18:30', '2015-12-06 04:57:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'incidunt', '2015-05-15 20:04:04', '2012-04-13 22:28:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'perspiciatis', '2017-08-10 12:44:51', '2020-05-04 16:01:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'porro', '2016-10-02 16:09:14', '2011-08-08 09:23:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'quidem', '2011-09-19 12:04:27', '2018-11-12 07:35:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'vel', '2019-02-03 04:38:56', '2012-12-11 23:28:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'modi', '2017-02-04 17:35:40', '2019-12-11 18:09:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'reprehenderit', '2018-06-29 14:32:50', '2016-02-23 08:16:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'autem', '2014-11-23 02:43:07', '2016-10-19 23:28:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'officiis', '2012-07-12 07:34:54', '2015-08-24 13:23:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'inventore', '2017-02-18 15:28:57', '2018-07-29 19:59:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'voluptas', '2012-12-27 13:21:39', '2016-06-09 22:27:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'amet', '2016-02-07 12:05:46', '2020-05-20 13:59:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'numquam', '2015-12-26 08:57:36', '2015-06-20 06:42:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'dignissimos', '2016-03-29 20:24:19', '2017-05-14 06:01:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'repellat', '2012-03-29 23:49:08', '2020-10-06 18:13:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'eaque', '2020-05-13 11:39:14', '2014-09-14 08:16:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'eum', '2020-02-07 00:00:39', '2017-06-03 22:37:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'placeat', '2011-08-18 04:11:52', '2018-10-08 15:17:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'minus', '2017-02-24 21:23:27', '2012-02-24 03:19:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'quas', '2018-02-17 20:32:47', '2015-06-17 03:44:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'tempore', '2020-01-19 17:03:46', '2014-02-03 12:38:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'eligendi', '2019-11-27 14:32:45', '2014-11-15 23:27:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'unde', '2012-07-05 01:01:27', '2016-09-20 02:50:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'praesentium', '2016-09-09 14:19:08', '2017-10-15 12:37:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'illo', '2020-05-27 16:23:01', '2012-04-30 01:11:58');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 86, '2012-05-20 01:19:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 33, '2014-03-17 06:07:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2019-05-28 01:26:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 61, '2014-09-14 06:46:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 97, '2012-10-04 03:43:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '2014-10-11 15:16:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 35, '2012-03-31 19:09:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 12, '2015-01-08 20:10:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 41, '2019-11-27 01:36:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 64, '2019-06-08 20:48:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 28, '2014-01-18 17:45:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 38, '2015-11-13 06:54:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 93, '2015-03-30 00:02:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 1, '2016-07-09 23:28:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 48, '2014-08-09 15:56:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 32, '2018-05-02 13:13:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 79, '2015-09-26 04:01:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 7, '2016-11-18 23:30:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 77, '2014-12-08 08:12:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 42, '2018-08-17 02:16:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 41, '2020-01-10 23:16:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 4, '2019-03-16 21:52:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 47, '2020-03-09 13:05:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 72, '2015-11-30 02:03:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 2, '2018-04-20 04:14:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 7, '2013-02-16 05:19:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 23, '2017-03-11 16:24:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 44, '2017-10-13 22:35:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 62, '2018-07-12 17:33:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 12, '2016-12-08 06:48:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 8, '2012-06-29 13:31:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 3, '2017-03-22 00:46:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 77, '2014-08-28 16:20:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 100, '2013-11-22 22:26:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 45, '2013-03-31 00:46:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 42, '2020-03-16 14:50:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 53, '2015-10-25 13:56:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 70, '2018-05-01 00:02:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 18, '2012-04-15 21:13:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 39, '2021-02-28 14:17:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 43, '2020-06-30 22:02:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 49, '2012-11-21 14:25:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 32, '2019-03-26 21:37:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 19, '2014-05-27 10:46:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 30, '2019-06-08 23:04:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 19, '2017-09-10 07:41:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 18, '2016-06-05 22:06:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 32, '2017-03-03 02:43:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 38, '2014-01-02 19:12:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 55, '2011-10-02 00:51:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 100, '2015-06-17 10:02:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 68, '2016-12-30 04:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 70, '2018-03-13 01:19:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2014-08-11 22:00:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 46, '2019-07-18 04:49:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 61, '2014-12-09 17:08:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 62, '2016-02-05 01:57:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 67, '2018-08-22 05:06:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 63, '2015-07-13 18:16:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 6, '2019-01-23 10:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 15, '2018-06-21 08:02:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 54, '2021-04-01 04:34:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 25, '2013-11-05 01:00:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 81, '2013-09-23 10:45:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 36, '2015-01-29 15:30:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 67, '2013-07-06 12:43:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 18, '2015-05-02 02:44:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 89, '2018-11-22 05:29:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 72, '2012-02-05 09:03:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 93, '2013-09-13 02:31:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 8, '2020-12-14 15:39:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 43, '2017-12-06 06:08:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 62, '2011-08-17 17:41:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 64, '2015-09-16 18:44:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 100, '2013-09-20 09:49:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 27, '2014-06-01 02:56:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 48, '2011-07-19 21:43:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 70, '2017-11-13 03:12:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 2, '2020-04-24 07:59:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 17, '2016-02-23 14:51:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 41, '2013-12-22 02:58:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 64, '2019-05-21 14:41:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 50, '2012-09-13 11:24:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 60, '2015-12-25 19:17:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 78, '2017-10-17 15:59:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 82, '2021-02-25 00:15:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 8, '2014-10-02 06:29:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 80, '2014-03-08 01:35:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 48, '2020-04-20 13:30:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 26, '2019-02-07 21:26:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 13, '2015-12-19 04:35:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 12, '2017-12-18 13:27:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 23, '2019-01-26 15:49:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 47, '2016-07-15 17:30:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 69, '2020-09-15 23:40:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 65, '2013-12-13 08:19:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 87, '2013-02-04 16:56:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 29, '2015-07-19 10:47:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 6, '2015-10-08 08:59:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 84, '2021-02-23 23:19:09');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `name`) VALUES (1, 'Suriname');
INSERT INTO `countries` (`id`, `name`) VALUES (2, 'Jamaica');
INSERT INTO `countries` (`id`, `name`) VALUES (3, 'Croatia');
INSERT INTO `countries` (`id`, `name`) VALUES (4, 'Saint Martin');
INSERT INTO `countries` (`id`, `name`) VALUES (5, 'Saint Helena');
INSERT INTO `countries` (`id`, `name`) VALUES (6, 'Monaco');
INSERT INTO `countries` (`id`, `name`) VALUES (7, 'Paraguay');
INSERT INTO `countries` (`id`, `name`) VALUES (8, 'Micronesia');
INSERT INTO `countries` (`id`, `name`) VALUES (9, 'Kuwait');
INSERT INTO `countries` (`id`, `name`) VALUES (10, 'Dominica');
INSERT INTO `countries` (`id`, `name`) VALUES (11, 'Anguilla');
INSERT INTO `countries` (`id`, `name`) VALUES (12, 'Burkina Faso');
INSERT INTO `countries` (`id`, `name`) VALUES (13, 'Faroe Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (14, 'Slovenia');
INSERT INTO `countries` (`id`, `name`) VALUES (15, 'Italy');
INSERT INTO `countries` (`id`, `name`) VALUES (16, 'Finland');
INSERT INTO `countries` (`id`, `name`) VALUES (17, 'Congo');
INSERT INTO `countries` (`id`, `name`) VALUES (18, 'Senegal');
INSERT INTO `countries` (`id`, `name`) VALUES (19, 'New Caledonia');
INSERT INTO `countries` (`id`, `name`) VALUES (20, 'Marshall Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (21, 'Macedonia');
INSERT INTO `countries` (`id`, `name`) VALUES (22, 'Wallis and Futuna');
INSERT INTO `countries` (`id`, `name`) VALUES (23, 'Uzbekistan');
INSERT INTO `countries` (`id`, `name`) VALUES (24, 'Falkland Islands (Malvinas)');
INSERT INTO `countries` (`id`, `name`) VALUES (25, 'Belarus');
INSERT INTO `countries` (`id`, `name`) VALUES (26, 'Georgia');
INSERT INTO `countries` (`id`, `name`) VALUES (27, 'Pakistan');
INSERT INTO `countries` (`id`, `name`) VALUES (28, 'Solomon Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (29, 'Malaysia');
INSERT INTO `countries` (`id`, `name`) VALUES (30, 'Saint Pierre and Miquelon');
INSERT INTO `countries` (`id`, `name`) VALUES (31, 'Lesotho');
INSERT INTO `countries` (`id`, `name`) VALUES (32, 'Qatar');
INSERT INTO `countries` (`id`, `name`) VALUES (33, 'Denmark');
INSERT INTO `countries` (`id`, `name`) VALUES (34, 'Micronesia');
INSERT INTO `countries` (`id`, `name`) VALUES (35, 'Bhutan');
INSERT INTO `countries` (`id`, `name`) VALUES (36, 'Saint Martin');
INSERT INTO `countries` (`id`, `name`) VALUES (37, 'French Polynesia');
INSERT INTO `countries` (`id`, `name`) VALUES (38, 'Falkland Islands (Malvinas)');
INSERT INTO `countries` (`id`, `name`) VALUES (39, 'Mauritania');
INSERT INTO `countries` (`id`, `name`) VALUES (40, 'Tuvalu');
INSERT INTO `countries` (`id`, `name`) VALUES (41, 'Oman');
INSERT INTO `countries` (`id`, `name`) VALUES (42, 'Jamaica');
INSERT INTO `countries` (`id`, `name`) VALUES (43, 'Sudan');
INSERT INTO `countries` (`id`, `name`) VALUES (44, 'Bhutan');
INSERT INTO `countries` (`id`, `name`) VALUES (45, 'Honduras');
INSERT INTO `countries` (`id`, `name`) VALUES (46, 'Belgium');
INSERT INTO `countries` (`id`, `name`) VALUES (47, 'Saint Kitts and Nevis');
INSERT INTO `countries` (`id`, `name`) VALUES (48, 'Jersey');
INSERT INTO `countries` (`id`, `name`) VALUES (49, 'Uruguay');
INSERT INTO `countries` (`id`, `name`) VALUES (50, 'Fiji');
INSERT INTO `countries` (`id`, `name`) VALUES (51, 'Iceland');
INSERT INTO `countries` (`id`, `name`) VALUES (52, 'Libyan Arab Jamahiriya');
INSERT INTO `countries` (`id`, `name`) VALUES (53, 'Benin');
INSERT INTO `countries` (`id`, `name`) VALUES (54, 'Turks and Caicos Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (55, 'Aruba');
INSERT INTO `countries` (`id`, `name`) VALUES (56, 'Kuwait');
INSERT INTO `countries` (`id`, `name`) VALUES (57, 'Guinea-Bissau');
INSERT INTO `countries` (`id`, `name`) VALUES (58, 'Ukraine');
INSERT INTO `countries` (`id`, `name`) VALUES (59, 'Korea');
INSERT INTO `countries` (`id`, `name`) VALUES (60, 'New Zealand');
INSERT INTO `countries` (`id`, `name`) VALUES (61, 'Israel');
INSERT INTO `countries` (`id`, `name`) VALUES (62, 'Palau');
INSERT INTO `countries` (`id`, `name`) VALUES (63, 'Paraguay');
INSERT INTO `countries` (`id`, `name`) VALUES (64, 'Macao');
INSERT INTO `countries` (`id`, `name`) VALUES (65, 'Hungary');
INSERT INTO `countries` (`id`, `name`) VALUES (66, 'Christmas Island');
INSERT INTO `countries` (`id`, `name`) VALUES (67, 'Taiwan');
INSERT INTO `countries` (`id`, `name`) VALUES (68, 'Botswana');
INSERT INTO `countries` (`id`, `name`) VALUES (69, 'Malta');
INSERT INTO `countries` (`id`, `name`) VALUES (70, 'Iran');
INSERT INTO `countries` (`id`, `name`) VALUES (71, 'Guatemala');
INSERT INTO `countries` (`id`, `name`) VALUES (72, 'Montserrat');
INSERT INTO `countries` (`id`, `name`) VALUES (73, 'Mali');
INSERT INTO `countries` (`id`, `name`) VALUES (74, 'Norfolk Island');
INSERT INTO `countries` (`id`, `name`) VALUES (75, 'Iceland');
INSERT INTO `countries` (`id`, `name`) VALUES (76, 'Mozambique');
INSERT INTO `countries` (`id`, `name`) VALUES (77, 'France');
INSERT INTO `countries` (`id`, `name`) VALUES (78, 'Venezuela');
INSERT INTO `countries` (`id`, `name`) VALUES (79, 'Philippines');
INSERT INTO `countries` (`id`, `name`) VALUES (80, 'Liberia');
INSERT INTO `countries` (`id`, `name`) VALUES (81, 'Belgium');
INSERT INTO `countries` (`id`, `name`) VALUES (82, 'Andorra');
INSERT INTO `countries` (`id`, `name`) VALUES (83, 'Saint Helena');
INSERT INTO `countries` (`id`, `name`) VALUES (84, 'Somalia');
INSERT INTO `countries` (`id`, `name`) VALUES (85, 'American Samoa');
INSERT INTO `countries` (`id`, `name`) VALUES (86, 'Tonga');
INSERT INTO `countries` (`id`, `name`) VALUES (87, 'Estonia');
INSERT INTO `countries` (`id`, `name`) VALUES (88, 'Peru');
INSERT INTO `countries` (`id`, `name`) VALUES (89, 'Faroe Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (90, 'Albania');
INSERT INTO `countries` (`id`, `name`) VALUES (91, 'Bosnia and Herzegovina');
INSERT INTO `countries` (`id`, `name`) VALUES (92, 'Australia');
INSERT INTO `countries` (`id`, `name`) VALUES (93, 'Western Sahara');
INSERT INTO `countries` (`id`, `name`) VALUES (94, 'Anguilla');
INSERT INTO `countries` (`id`, `name`) VALUES (95, 'Armenia');
INSERT INTO `countries` (`id`, `name`) VALUES (96, 'Antigua and Barbuda');
INSERT INTO `countries` (`id`, `name`) VALUES (97, 'Slovenia');
INSERT INTO `countries` (`id`, `name`) VALUES (98, 'Sweden');
INSERT INTO `countries` (`id`, `name`) VALUES (99, 'United States Virgin Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (100, 'Montserrat');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 58, 3, '2015-10-13 01:02:18', '2018-10-25 13:41:56', '2015-06-08 15:14:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 87, 3, '2015-07-27 12:03:04', '2014-03-21 14:54:20', '2018-06-13 13:16:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 29, 3, '2017-04-23 14:47:35', '2021-01-06 16:20:20', '2016-05-28 11:10:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 79, 1, '2020-10-11 02:44:21', '2017-09-28 18:49:05', '2016-08-22 08:07:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 47, 1, '2016-06-10 19:32:29', '2012-09-27 09:57:42', '2015-10-28 23:48:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 61, 1, '2019-03-13 11:30:59', '2015-11-25 07:14:58', '2019-02-25 03:42:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 83, 3, '2020-03-19 11:18:46', '2021-01-21 20:36:24', '2019-03-02 17:51:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 25, 1, '2017-07-23 07:08:10', '2012-09-03 15:20:38', '2011-05-18 01:31:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 75, 2, '2018-01-16 16:24:36', '2018-10-31 03:06:11', '2011-07-17 16:10:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 9, 3, '2015-08-29 21:43:57', '2018-05-27 09:19:19', '2015-06-03 00:11:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 31, 3, '2019-12-26 12:55:52', '2014-04-29 04:05:51', '2016-06-13 18:00:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 82, 1, '2020-08-02 16:11:51', '2013-06-04 09:47:08', '2020-07-10 07:28:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 88, 2, '2021-03-30 08:40:49', '2011-12-03 02:30:41', '2013-04-06 12:46:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 18, 3, '2011-06-28 14:45:21', '2020-04-20 09:08:29', '2020-07-14 14:54:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 24, 1, '2015-09-26 06:55:18', '2019-11-16 19:44:49', '2020-09-05 06:07:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 97, 1, '2018-07-11 16:15:50', '2014-11-22 05:17:30', '2015-05-21 18:52:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 39, 1, '2016-04-19 21:41:31', '2017-07-31 18:20:51', '2013-11-26 16:31:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 3, 1, '2012-10-14 21:17:04', '2016-07-28 02:22:16', '2018-01-23 04:40:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 6, 3, '2017-10-21 18:22:09', '2016-07-24 14:44:04', '2018-08-02 19:18:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 50, 1, '2012-02-18 09:11:50', '2013-09-11 16:48:07', '2020-09-03 01:02:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 93, 3, '2016-04-20 05:45:37', '2012-05-25 02:54:33', '2019-06-25 06:47:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 8, 3, '2020-12-21 20:47:46', '2011-12-29 01:49:42', '2018-12-18 22:00:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 65, 1, '2016-04-20 04:02:02', '2014-03-08 08:33:02', '2020-09-23 21:00:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 88, 2, '2014-04-01 21:14:21', '2021-02-14 13:17:19', '2013-01-06 13:32:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 82, 1, '2017-02-25 13:13:16', '2013-01-01 07:58:38', '2011-12-03 05:17:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 58, 3, '2011-07-17 16:26:40', '2016-01-05 12:31:40', '2018-07-18 06:58:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 34, 3, '2020-04-21 14:12:48', '2017-02-27 07:00:35', '2020-07-07 12:27:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 56, 1, '2012-09-20 20:26:06', '2020-01-12 04:33:43', '2013-12-20 01:56:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 57, 2, '2016-01-30 09:40:04', '2013-08-07 22:07:16', '2017-06-26 22:40:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 23, 3, '2014-10-04 03:30:46', '2020-01-15 01:34:12', '2014-05-03 14:01:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 52, 1, '2021-03-15 20:18:32', '2018-04-12 17:07:19', '2013-07-11 09:04:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 98, 3, '2016-09-06 05:39:26', '2020-05-19 09:49:15', '2020-08-04 23:49:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 40, 3, '2011-12-08 13:18:19', '2013-03-03 01:17:53', '2019-03-07 18:43:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 98, 2, '2020-05-26 09:50:17', '2012-04-30 05:10:13', '2015-01-31 14:25:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '2016-11-11 21:18:00', '2013-05-17 15:45:49', '2013-11-12 23:39:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 48, 1, '2018-10-02 06:50:37', '2013-01-21 14:40:04', '2016-07-17 04:29:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 70, 1, '2012-05-14 07:50:57', '2019-06-16 23:29:35', '2016-07-04 10:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 20, 2, '2016-04-15 20:40:38', '2019-12-04 03:41:41', '2019-05-10 04:03:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 23, 2, '2015-11-02 18:45:55', '2015-02-07 21:46:59', '2012-07-14 02:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 18, 3, '2012-02-03 06:48:10', '2015-05-03 03:16:38', '2020-06-15 14:44:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 76, 2, '2013-03-08 22:06:14', '2013-03-19 22:18:30', '2016-01-07 22:40:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 8, 3, '2020-09-07 08:29:55', '2018-04-07 08:10:10', '2021-04-09 10:11:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 1, '2016-07-24 02:07:54', '2016-11-26 11:45:42', '2018-10-21 21:55:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 61, 1, '2011-06-11 01:10:23', '2020-12-19 08:21:49', '2019-04-10 16:53:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 12, 2, '2014-02-16 02:52:29', '2012-01-14 12:56:10', '2019-09-08 11:19:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 64, 2, '2020-09-24 08:23:25', '2020-01-12 23:18:50', '2019-09-08 07:35:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 80, 1, '2018-07-18 08:29:13', '2015-05-27 05:45:19', '2021-02-22 07:46:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 89, 3, '2013-11-24 07:59:04', '2016-01-19 02:39:36', '2012-01-02 20:07:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 78, 1, '2017-09-16 22:54:03', '2016-06-26 19:41:34', '2013-10-29 03:13:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 94, 2, '2016-09-01 23:56:52', '2015-01-29 00:13:11', '2016-11-20 09:02:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 3, 2, '2015-06-02 19:43:22', '2016-04-17 18:47:54', '2013-04-01 01:23:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 86, 2, '2018-05-27 06:56:05', '2011-06-16 09:39:45', '2013-10-30 09:54:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 63, 1, '2018-08-26 16:22:15', '2016-03-05 01:59:12', '2017-12-08 11:32:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 98, 3, '2019-10-13 17:47:47', '2014-05-17 07:05:20', '2020-11-24 05:18:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 93, 2, '2013-10-12 06:31:49', '2015-12-02 22:27:15', '2018-10-25 02:39:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 60, 3, '2020-12-31 17:19:28', '2012-03-08 13:57:11', '2020-04-01 12:33:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 77, 2, '2016-10-18 02:01:59', '2019-01-20 09:41:23', '2018-10-15 13:02:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 31, 1, '2018-04-19 13:47:32', '2017-06-27 09:02:05', '2019-02-15 21:10:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 100, 3, '2020-06-01 21:53:52', '2015-10-02 16:32:58', '2014-03-02 22:17:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 94, 2, '2017-12-07 00:29:17', '2015-01-27 21:44:18', '2011-06-22 12:09:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 41, 2, '2012-08-23 05:41:47', '2011-09-23 18:42:49', '2020-11-02 09:07:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 38, 3, '2014-02-10 10:07:27', '2018-01-18 14:31:14', '2019-01-03 21:06:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 50, 2, '2021-04-09 10:17:37', '2014-04-06 09:43:04', '2019-06-26 07:17:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 53, 1, '2016-05-11 18:43:39', '2015-04-19 14:42:11', '2020-01-17 00:15:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 92, 3, '2018-06-23 00:28:03', '2020-12-28 13:52:47', '2016-08-18 02:29:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 12, 1, '2016-10-13 09:15:24', '2011-06-26 02:20:18', '2012-02-29 17:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 47, 1, '2014-07-04 00:23:55', '2014-10-01 08:40:01', '2013-04-01 14:47:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 97, 1, '2017-07-31 02:24:09', '2016-01-23 00:40:48', '2012-12-30 05:05:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '2015-10-25 13:33:34', '2014-01-30 11:57:36', '2020-08-14 08:13:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 82, 2, '2014-02-25 07:54:07', '2014-11-21 18:06:18', '2021-03-19 00:07:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 72, 2, '2018-07-05 04:15:45', '2015-01-21 11:07:54', '2020-07-12 16:13:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 11, 2, '2018-08-10 08:26:09', '2015-04-20 12:22:43', '2017-07-18 20:00:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 90, 2, '2016-03-03 17:04:09', '2014-03-30 08:52:56', '2011-09-09 23:52:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 56, 1, '2015-05-14 21:02:05', '2021-04-10 20:35:04', '2021-01-05 23:44:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 57, 3, '2018-12-17 15:38:11', '2020-08-27 10:53:16', '2018-08-24 16:31:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 4, 2, '2016-04-28 22:44:58', '2011-10-21 02:21:42', '2011-12-24 23:35:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 6, 1, '2012-08-11 00:34:56', '2012-01-30 11:40:29', '2019-04-23 12:37:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 20, 2, '2013-06-17 23:38:22', '2016-08-30 23:08:17', '2017-07-08 04:46:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 51, 3, '2012-07-14 03:17:39', '2017-07-30 22:05:32', '2011-07-05 17:38:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 12, 3, '2019-03-06 22:46:20', '2020-03-01 21:02:32', '2011-12-06 04:39:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 20, 3, '2019-06-04 15:39:46', '2021-03-16 05:14:03', '2018-08-27 02:51:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 89, 3, '2011-06-13 04:38:58', '2014-08-26 09:50:40', '2020-10-09 17:56:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 39, 2, '2016-04-18 04:27:34', '2018-11-10 16:53:49', '2018-03-14 13:56:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 46, 3, '2018-06-23 19:42:02', '2011-07-25 22:12:52', '2019-06-09 04:13:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 82, 1, '2013-10-01 08:34:02', '2016-07-13 13:49:49', '2012-05-06 08:08:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 13, 2, '2019-08-16 17:08:23', '2020-05-12 23:21:04', '2013-09-30 20:17:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 40, 1, '2013-08-10 22:04:51', '2017-10-31 16:42:42', '2020-04-16 11:27:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 59, 1, '2015-04-26 15:05:37', '2013-06-29 00:39:31', '2013-01-26 03:13:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 61, 2, '2018-12-06 06:24:53', '2017-03-27 04:05:39', '2021-04-09 14:08:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 74, 2, '2016-12-06 20:46:27', '2016-11-25 19:38:29', '2012-02-08 22:55:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 92, 3, '2011-05-24 04:53:43', '2020-04-26 03:59:24', '2018-05-18 07:50:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 98, 1, '2016-12-01 11:23:24', '2014-03-27 05:20:15', '2016-07-16 20:31:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 98, 3, '2016-01-09 12:01:35', '2015-12-21 09:29:49', '2017-06-25 18:18:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 32, 1, '2013-08-14 05:27:24', '2014-04-10 08:58:36', '2014-09-17 11:18:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 32, 2, '2018-03-28 00:53:26', '2013-02-13 22:32:03', '2020-12-10 09:37:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 50, 3, '2014-05-22 20:11:15', '2016-04-05 22:33:49', '2018-04-28 11:44:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 56, 1, '2019-08-18 15:34:18', '2015-05-06 01:22:39', '2018-06-14 03:13:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 60, 3, '2011-09-25 11:42:03', '2017-02-03 22:05:06', '2021-04-10 15:29:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 59, 2, '2014-11-29 16:55:05', '2012-10-17 20:01:47', '2018-05-13 05:22:59');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'N', '2017-09-21 11:16:14', '2019-10-14 15:59:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'F', '2012-11-23 11:36:02', '2015-05-14 13:24:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'W', '2019-02-21 00:38:31', '2014-09-01 21:19:28');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 32, 'laudantium', 60, NULL, 6, '2017-10-15 00:06:38', '2015-09-06 18:26:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 36, 'laborum', 98335, NULL, 1, '2015-11-21 12:35:21', '2014-02-25 16:59:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 56, 'magni', 6748, NULL, 10, '2020-01-17 21:27:42', '2020-11-15 19:17:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 39, 'ut', 6, NULL, 6, '2019-11-15 05:41:39', '2015-09-15 16:10:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 20, 'cumque', 792287747, NULL, 10, '2017-03-18 19:37:56', '2017-05-05 22:54:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 26, 'perferendis', 7859, NULL, 4, '2015-10-06 19:29:05', '2011-05-01 01:13:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 24, 'doloremque', 0, NULL, 6, '2017-11-19 13:22:52', '2014-10-31 01:53:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 7, 'quia', 6270909, NULL, 2, '2020-06-01 06:49:07', '2019-03-22 18:47:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 43, 'voluptatem', 1687, NULL, 10, '2014-12-07 09:04:45', '2021-04-17 21:49:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 96, 'qui', 260681193, NULL, 3, '2012-05-01 09:57:58', '2014-04-21 09:51:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 48, 'et', 97433324, NULL, 6, '2012-09-26 18:59:41', '2013-01-23 11:34:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 52, 'quia', 5, NULL, 3, '2017-03-30 00:37:23', '2017-08-13 02:52:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 97, 'aut', 689610, NULL, 6, '2014-01-02 18:10:15', '2020-02-26 04:29:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 52, 'labore', 87958455, NULL, 7, '2013-07-04 13:32:23', '2020-03-31 22:18:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 81, 'asperiores', 179122, NULL, 2, '2015-07-09 11:12:27', '2018-06-04 18:32:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 32, 'temporibus', 6727631, NULL, 2, '2012-12-30 18:32:26', '2012-07-22 20:44:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 67, 'facilis', 8440228, NULL, 7, '2019-07-16 10:30:25', '2016-09-01 02:31:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 15, 'officia', 853, NULL, 3, '2015-02-18 10:10:49', '2014-08-04 23:38:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 58, 'ab', 881899, NULL, 6, '2015-07-14 21:06:38', '2019-02-17 21:29:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 74, 'omnis', 58179039, NULL, 8, '2014-01-09 16:23:02', '2019-11-28 23:56:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 44, 'qui', 356072, NULL, 10, '2015-06-12 19:48:33', '2012-08-09 18:48:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 16, 'voluptatem', 8675, NULL, 7, '2021-04-16 23:01:09', '2018-07-06 16:00:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 56, 'at', 2, NULL, 3, '2020-03-19 22:27:18', '2016-12-24 12:25:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 81, 'tempora', 3745671, NULL, 10, '2021-04-10 11:01:14', '2013-04-27 01:45:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 18, 'eos', 201197, NULL, 8, '2018-08-18 17:52:43', '2012-09-25 02:39:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 21, 'qui', 12961498, NULL, 7, '2021-04-24 09:18:24', '2013-07-10 06:15:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 36, 'perspiciatis', 74823, NULL, 8, '2020-01-24 02:22:21', '2015-12-23 16:43:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 87, 'et', 5, NULL, 4, '2020-05-01 17:16:16', '2011-11-23 20:20:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 28, 'quia', 30326620, NULL, 4, '2013-09-13 07:56:33', '2017-01-10 01:44:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 93, 'qui', 9635279, NULL, 1, '2018-09-09 18:30:43', '2015-01-31 00:01:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 53, 'eligendi', 4731, NULL, 3, '2019-12-23 08:23:32', '2017-11-29 15:42:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 20, 'consectetur', 638462, NULL, 2, '2019-11-05 08:50:43', '2015-06-29 00:05:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 91, 'quam', 0, NULL, 4, '2014-11-09 09:25:12', '2018-12-31 21:12:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 42, 'molestias', 548077111, NULL, 5, '2012-05-08 08:41:46', '2020-08-06 08:54:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 87, 'omnis', 135, NULL, 2, '2020-12-27 08:51:20', '2013-09-15 23:42:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 24, 'delectus', 85488363, NULL, 3, '2020-05-18 05:36:48', '2012-12-26 07:29:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 15, 'nisi', 32117, NULL, 4, '2016-12-02 19:40:50', '2020-09-20 15:23:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 97, 'dolorem', 618284738, NULL, 8, '2021-02-06 02:48:04', '2017-02-19 12:17:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 61, 'laudantium', 261174, NULL, 8, '2015-01-18 20:54:05', '2014-10-12 01:58:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 69, 'nam', 25361, NULL, 8, '2014-03-06 00:59:45', '2016-02-06 16:54:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 53, 'ad', 499, NULL, 9, '2019-05-25 19:52:07', '2016-06-27 20:20:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 44, 'tenetur', 85764, NULL, 9, '2016-02-26 07:08:12', '2012-03-19 22:13:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 62, 'accusantium', 45735, NULL, 4, '2019-11-06 19:49:35', '2021-04-24 19:16:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 21, 'cum', 8, NULL, 9, '2020-04-24 06:38:17', '2015-11-25 01:50:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 69, 'omnis', 21, NULL, 2, '2014-12-23 08:01:35', '2012-09-02 10:58:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 96, 'ratione', 990, NULL, 3, '2020-02-04 18:47:40', '2016-03-24 04:14:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 38, 'modi', 4324, NULL, 2, '2014-10-05 21:34:26', '2018-08-31 00:04:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 41, 'mollitia', 2, NULL, 3, '2011-09-18 11:04:12', '2011-05-31 05:25:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'corporis', 918429, NULL, 9, '2020-04-30 09:09:48', '2014-05-25 07:49:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 75, 'alias', 50369893, NULL, 4, '2016-06-11 10:58:08', '2012-09-23 01:17:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 97, 'consequatur', 64048769, NULL, 10, '2014-08-08 01:59:07', '2020-10-10 01:10:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 66, 'quis', 84, NULL, 2, '2011-12-30 06:28:30', '2012-03-14 18:43:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 38, 'magni', 288235, NULL, 7, '2020-10-20 03:08:27', '2014-05-21 19:40:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 81, 'et', 1, NULL, 10, '2012-03-30 13:33:32', '2021-03-03 18:13:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 38, 'sint', 6, NULL, 5, '2012-11-13 10:04:43', '2019-05-09 23:39:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 77, 'nihil', 12058, NULL, 10, '2015-08-27 09:06:10', '2013-03-15 22:04:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 39, 'ut', 0, NULL, 2, '2019-03-13 08:16:26', '2020-10-26 13:26:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 79, 'est', 452358975, NULL, 10, '2011-06-07 13:46:32', '2011-07-15 13:14:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 51, 'adipisci', 0, NULL, 10, '2021-02-15 23:43:30', '2016-09-28 05:43:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 89, 'beatae', 2729, NULL, 2, '2016-07-20 12:07:34', '2012-03-20 14:00:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 13, 'aliquid', 4, NULL, 9, '2012-11-19 16:59:39', '2020-11-19 15:04:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 41, 'odit', 0, NULL, 5, '2017-03-31 03:49:38', '2012-08-02 08:44:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 99, 'similique', 68634851, NULL, 9, '2017-07-10 14:37:29', '2013-11-05 03:22:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 77, 'provident', 58395, NULL, 5, '2021-02-07 07:57:39', '2014-03-24 09:47:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 62, 'earum', 225178, NULL, 6, '2019-07-07 01:33:46', '2012-07-30 08:40:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 83, 'maiores', 583156, NULL, 6, '2019-11-21 23:43:45', '2014-02-23 21:36:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 51, 'atque', 21584251, NULL, 5, '2019-03-11 15:00:10', '2013-02-01 02:48:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 69, 'exercitationem', 6907, NULL, 9, '2011-11-12 05:47:14', '2013-01-29 10:00:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 9, 'eos', 221915686, NULL, 5, '2013-06-24 06:56:47', '2018-06-03 06:40:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 87, 'atque', 6774, NULL, 5, '2019-08-01 04:40:13', '2013-06-11 19:32:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 99, 'fugiat', 4, NULL, 7, '2020-08-19 14:38:21', '2019-02-08 09:29:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 37, 'corporis', 62, NULL, 4, '2017-01-14 14:01:00', '2018-08-24 15:48:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 84, 'facere', 988741272, NULL, 2, '2021-02-24 20:26:08', '2012-08-20 20:13:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 37, 'dolor', 2300, NULL, 4, '2021-03-25 01:43:53', '2012-04-29 20:00:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 14, 'fugiat', 28030, NULL, 3, '2017-08-29 18:03:07', '2017-09-30 05:43:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 53, 'dolorem', 46, NULL, 3, '2012-01-09 20:55:14', '2012-10-01 22:46:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 9, 'ipsa', 42884, NULL, 10, '2021-04-13 15:05:07', '2012-06-19 17:43:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 76, 'temporibus', 55002055, NULL, 1, '2020-05-16 13:48:31', '2013-04-07 17:40:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 73, 'voluptas', 5, NULL, 6, '2014-09-21 18:06:46', '2014-03-31 08:50:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 55, 'sit', 7769, NULL, 4, '2017-01-25 17:23:24', '2015-12-20 04:44:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 5, 'omnis', 26, NULL, 4, '2018-06-04 03:25:36', '2015-01-11 13:40:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 92, 'blanditiis', 6068, NULL, 6, '2014-01-16 09:42:54', '2015-05-26 17:12:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 85, 'aliquid', 3514, NULL, 6, '2019-03-05 00:04:28', '2014-06-26 13:01:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 44, 'doloremque', 0, NULL, 10, '2021-04-02 11:56:01', '2012-03-19 08:30:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 9, 'aut', 6821816, NULL, 4, '2012-07-31 13:06:44', '2019-10-04 08:49:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 40, 'deserunt', 71, NULL, 1, '2011-12-17 12:37:28', '2011-09-22 19:05:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 94, 'tempore', 0, NULL, 8, '2011-12-12 23:34:42', '2015-09-24 11:40:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 45, 'animi', 210, NULL, 8, '2017-01-18 13:11:08', '2019-02-02 12:22:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 91, 'vitae', 55, NULL, 9, '2018-11-04 05:55:32', '2019-10-10 10:25:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 11, 'debitis', 0, NULL, 1, '2011-08-26 06:31:56', '2016-10-02 05:57:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 7, 'et', 707017, NULL, 7, '2012-09-21 02:56:34', '2019-09-08 01:19:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 31, 'tempora', 5, NULL, 2, '2017-01-25 16:38:11', '2020-10-27 11:21:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 56, 'accusantium', 53, NULL, 1, '2017-02-24 04:00:28', '2015-03-07 04:18:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 22, 'repudiandae', 14895124, NULL, 3, '2012-09-24 05:56:44', '2014-06-19 16:16:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 59, 'corrupti', 98, NULL, 8, '2017-11-21 19:26:11', '2021-03-07 23:31:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 62, 'ea', 6, NULL, 7, '2019-08-25 09:54:23', '2011-09-08 14:52:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 13, 'provident', 5290009, NULL, 6, '2019-04-09 10:44:19', '2018-07-19 06:16:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 18, 'aut', 8705, NULL, 10, '2020-01-28 15:43:32', '2015-12-09 20:32:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 13, 'culpa', 352, NULL, 7, '2015-02-24 08:49:17', '2012-12-14 14:16:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 90, 'tempore', 7, NULL, 3, '2020-04-04 05:06:19', '2012-03-03 03:04:59');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'application/x-tar', '2013-04-04 00:49:36', '2016-06-04 03:42:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'application/vnd.webturbo', '2014-01-02 09:31:07', '2018-06-17 18:53:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'text/x-vcard', '2011-11-19 21:56:39', '2011-12-21 00:21:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'application/x-msmetafile', '2012-03-08 20:09:12', '2018-05-06 22:13:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'application/vnd.kde.kontour', '2020-04-07 05:12:49', '2020-09-13 10:18:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'application/vnd.ms-powerpoint.addin.macroenabled.12', '2016-02-23 01:15:17', '2013-03-02 18:16:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'image/tiff', '2012-03-14 02:36:40', '2019-10-06 06:51:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'application/vnd.dece.ttml+xml', '2013-12-26 16:58:27', '2015-05-10 11:27:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'application/vnd.simtech-mindmapper', '2013-04-20 16:57:21', '2013-06-12 17:09:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'audio/webm', '2013-09-14 14:38:32', '2020-11-09 00:22:30');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 22, 93, 'Quis et quia nemo unde in est. Rerum aut et neque laudantium recusandae consequatur quo. Omnis omnis rerum aperiam laborum perspiciatis omnis. Ut aut dolorum fuga fugiat repellat temporibus voluptate. Labore perferendis corporis error enim ut maxime sed.', 0, 0, '2016-07-16 15:41:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 49, 44, 'Officia cumque est dolores exercitationem ab. Rerum voluptatibus consequatur quidem beatae quia qui. Autem in corrupti alias architecto soluta at sequi.', 0, 1, '2018-06-30 11:11:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 13, 43, 'Recusandae blanditiis qui consequatur qui laboriosam voluptas quae. Distinctio quos sed quam. Placeat cumque ut minus. Et at aut qui sit hic consequatur.', 1, 1, '2015-10-14 15:00:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 76, 50, 'Beatae facilis magnam fugiat. Numquam porro blanditiis qui. Ratione ad sit reprehenderit omnis ab perferendis quidem neque.', 1, 0, '2012-05-07 11:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 31, 77, 'Veritatis sint unde sunt repellendus deserunt expedita sequi. Qui tempore fugit libero qui.', 0, 0, '2014-11-14 01:59:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 1, 13, 'Aperiam vitae incidunt necessitatibus dolores quibusdam aut. Esse et fugiat ipsam et occaecati nobis dicta. Quam omnis occaecati eveniet veritatis sed.', 1, 0, '2012-06-12 00:04:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 36, 96, 'Adipisci quam aut explicabo assumenda maiores saepe. Quo minima illo nesciunt voluptate veniam. Voluptas eveniet quo rerum illum. Quod sit deserunt nihil velit aut velit. Eaque minima iure dicta ipsa sint hic atque ipsum.', 1, 1, '2019-11-06 13:02:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 79, 28, 'Delectus vero fuga voluptates. Quis molestias sequi quo dolorum. Aut sint non est molestias ut officia aut.', 0, 1, '2013-08-30 16:13:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 15, 64, 'Libero debitis excepturi dolorum optio animi. Ea voluptas quia consequatur. Dolor est dolores eveniet sed.', 1, 1, '2016-01-05 22:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 60, 84, 'Architecto qui in nihil praesentium soluta atque aperiam. Ab quia quia exercitationem voluptas aperiam maiores. Repudiandae molestiae velit architecto aliquid. Corrupti eius debitis maiores aliquid officia omnis.', 0, 1, '2017-04-24 10:20:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 100, 19, 'Suscipit laborum aut et qui voluptas. Laudantium illum eos assumenda molestiae ut voluptas fugit. Perferendis at totam qui autem et nobis non.', 1, 0, '2011-09-19 22:38:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 83, 32, 'Doloribus sit molestiae consequuntur aut odio fugiat. Eius aperiam possimus rem unde aut debitis porro. Qui omnis voluptatem quos distinctio odit vitae. Rerum sapiente sequi ullam quae deleniti.', 1, 0, '2014-09-11 10:38:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 48, 73, 'Fuga ipsa voluptatibus voluptas. Velit iure culpa tempore. Eum reiciendis molestiae libero non a illum reiciendis doloribus.', 0, 0, '2018-03-31 16:26:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 93, 66, 'Velit in provident ea. Est culpa earum deserunt eos maiores. Itaque soluta excepturi qui et voluptatibus occaecati. Voluptatibus aut natus omnis dolorem officiis ipsa. Explicabo numquam nihil pariatur tempore dicta magnam placeat.', 1, 1, '2012-05-10 00:05:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 100, 42, 'Qui similique sed iure earum et omnis est. Debitis quasi error quasi dolorem. Facilis provident qui omnis temporibus totam accusantium atque. Repellat hic enim in sint veniam ut.', 0, 1, '2020-11-02 01:28:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 89, 22, 'Consequatur et minus quaerat iure. Magni at nulla unde est deleniti commodi. Impedit repellat architecto repellat assumenda.', 1, 0, '2021-04-11 04:23:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 35, 37, 'Quas ab officia voluptates libero tempora qui. Nihil reprehenderit quibusdam ipsum delectus veniam veritatis totam. Et occaecati aut ipsa nulla. Dicta velit quia non porro sit voluptas dolores.', 1, 0, '2019-11-24 11:37:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 66, 48, 'Aliquam pariatur quisquam reiciendis ut delectus rerum eligendi. Ut voluptatem nihil fugit magnam. At suscipit quia cupiditate eos illo corrupti. Pariatur non nulla vero enim sed distinctio qui.', 1, 1, '2012-05-23 12:46:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 79, 42, 'Qui dolor dolor et reiciendis. Itaque eos quidem explicabo laudantium dolor. Nostrum et voluptatem iure iste omnis quibusdam.', 0, 0, '2017-06-22 21:13:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 97, 10, 'Modi eum laudantium facere. Sint tempore aut nobis. Laborum officiis totam sint eum harum reprehenderit debitis.', 1, 0, '2021-02-02 01:22:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 19, 97, 'Maxime perspiciatis totam maxime. Aut omnis commodi ut harum laboriosam occaecati iste. Provident praesentium et officiis corrupti. Sit doloribus ea culpa aut.', 0, 0, '2017-03-22 00:25:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 23, 54, 'Deserunt ut deleniti harum est quia facilis ea. Magnam pariatur animi quae. Aut laborum et quidem iusto sed nobis. Sequi aut quia blanditiis. Qui nisi natus est ullam totam molestias animi.', 0, 0, '2021-04-02 07:23:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 93, 1, 'Est architecto et quos eveniet sequi. Minus sunt consectetur numquam quo a quia aut. Doloremque omnis soluta veniam optio tempora.', 1, 1, '2014-01-14 10:42:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 81, 8, 'Et dicta sapiente ullam impedit illum. Commodi ipsum est unde qui modi aliquid voluptatibus est. Dolor aliquam soluta consequuntur sint sit fugiat.', 0, 1, '2021-01-30 03:28:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 64, 41, 'Soluta consectetur et optio consequatur accusamus dolorem. Dolor aut consectetur molestias qui consequatur quisquam quos. Sit ut quidem officiis error incidunt voluptatibus soluta voluptatem.', 0, 1, '2014-05-23 04:35:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 92, 64, 'Nihil modi ut enim quibusdam. Aspernatur rem assumenda sunt voluptatem iusto. Cumque adipisci deleniti exercitationem in adipisci eos. Nihil illum minus iure cupiditate atque.', 1, 1, '2013-07-13 10:25:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 59, 74, 'Aut accusamus exercitationem et. Et aut officia enim impedit est quam quae odio. In id consectetur ut suscipit et quos. Quis aut maiores modi omnis omnis.', 0, 0, '2012-09-03 07:15:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 95, 7, 'Nam qui quis amet. Mollitia aut facere consequatur aliquid dolor deleniti quia. Provident id omnis cumque aspernatur aut numquam. Fuga quod ad quos consectetur ut culpa. Sit quaerat quia laudantium earum.', 1, 1, '2017-09-06 11:59:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 47, 88, 'Officiis aut vero culpa dolores dolores ratione. Itaque dolores odit nam quae quia doloribus quae. Et veritatis eligendi minima ratione. Temporibus repellat est ut a natus beatae. Explicabo sit ut atque sit vero.', 1, 0, '2018-05-29 23:49:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 72, 47, 'Quasi pariatur nemo libero cupiditate voluptatibus atque. Hic vero cumque omnis ut ea. Distinctio et et quod. Eum occaecati aut omnis laudantium sit temporibus. Voluptates numquam neque repellendus molestiae eos.', 1, 1, '2017-04-02 23:23:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 30, 61, 'Deleniti expedita voluptates consequatur et quisquam quae facere. Quas tenetur aliquam illum et sunt iste.', 1, 1, '2011-12-20 14:17:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 68, 64, 'Dolorem molestiae laborum pariatur molestiae odit aliquid. Quo illum rerum fuga recusandae et repellat incidunt. Quas a eligendi quidem dolorum et in et.', 1, 0, '2012-08-13 22:44:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 97, 34, 'Nostrum in molestias quis accusamus a aut. Et adipisci accusamus aliquid at autem qui beatae consequuntur. Sint atque neque saepe veniam et. Ex autem sed porro veritatis ut possimus.', 1, 1, '2019-12-28 08:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 12, 76, 'Corporis et dolores veniam ad sapiente provident doloribus ab. Vel corporis et eius perferendis repellendus molestias. Et reiciendis et aliquid ipsa modi et.', 0, 1, '2018-12-09 07:33:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 75, 9, 'Deleniti et ut harum omnis vero libero. Voluptatem aut unde a. Molestiae id inventore enim dolores expedita ut. Ut modi voluptatem corporis ut.', 0, 1, '2016-07-30 09:52:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 85, 93, 'Ut in sed eaque aperiam qui dolore molestias. Modi porro aut qui dolorem fugit distinctio molestiae. Accusamus voluptatem aut quis quidem et.', 1, 1, '2013-03-15 14:17:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 5, 8, 'Dolores possimus velit est qui eligendi nobis et. Velit quis aut voluptas quasi eos qui. Voluptas eos est eum ab. Id alias deserunt repellendus cumque.', 1, 1, '2018-02-08 03:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 47, 98, 'Quae saepe porro in nobis consectetur accusantium asperiores rerum. Illum commodi quod commodi amet et in. Nihil quasi earum corporis omnis libero quibusdam.', 0, 0, '2014-07-04 13:59:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 8, 28, 'Cupiditate et est voluptates beatae repudiandae molestiae. Tempore cumque odio non in facilis laboriosam veniam. Aut temporibus reprehenderit nesciunt ad mollitia sit perferendis dolorem. Qui suscipit qui consequatur nihil molestias. Consectetur necessitatibus nostrum inventore fugit doloribus.', 1, 1, '2012-12-16 01:32:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 6, 71, 'Aliquam quam ea dolorem in voluptas ipsam modi ut. Occaecati et qui blanditiis et reiciendis quo. Et excepturi sed aliquid voluptate.', 0, 1, '2016-03-20 05:48:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 68, 97, 'Sit natus quis error ea. Nulla nobis perferendis aliquid. Id culpa tempore explicabo assumenda ratione et. Similique ut natus eius. Doloribus eveniet quisquam rerum voluptatem sunt asperiores et.', 0, 1, '2019-04-15 10:06:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 34, 27, 'Quis rerum quia laudantium aut sit libero quo cum. Quia minima fuga quidem praesentium est a. Recusandae est officiis sunt quisquam incidunt expedita. Optio eligendi enim rerum expedita est perferendis aut laborum.', 0, 1, '2016-10-15 21:44:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 70, 29, 'Ipsum sint omnis molestiae illum sunt ut. Molestiae voluptas quo non repellendus aut numquam facilis est. Rerum quo illo quo commodi. Labore rerum omnis atque quo.', 0, 1, '2013-10-12 14:20:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 33, 16, 'Voluptatem sunt quas rerum tempore sunt voluptas quia. Aut sit magnam culpa sapiente. Cupiditate aut molestiae tempore excepturi.', 0, 1, '2012-06-10 12:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 17, 5, 'Voluptatibus tempore voluptatem possimus laboriosam mollitia. Eos exercitationem aliquid laborum aut dolor et.', 1, 1, '2020-08-30 22:53:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 62, 46, 'Qui et sed quia soluta. Accusantium aliquid consequatur aliquam. Natus nulla consequatur ea accusamus numquam vel delectus.', 1, 1, '2017-10-24 03:50:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 65, 30, 'Quia quia impedit et voluptatibus aut dignissimos. Recusandae atque qui eius quo eveniet cupiditate. Autem nostrum explicabo ipsam in consequatur.', 0, 0, '2020-04-15 15:21:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 10, 62, 'Alias in voluptas nostrum repellat eligendi voluptatibus. Molestias non alias laborum distinctio placeat. Doloremque eos vel beatae repellat asperiores.', 0, 0, '2017-03-22 03:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 64, 21, 'Dolores architecto ea sequi vel. Et voluptas et aut illo eos et. Reiciendis velit aut impedit. Omnis molestias rerum distinctio et sapiente.', 0, 0, '2017-01-10 23:55:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 38, 38, 'Harum eligendi ea dolorem consequuntur totam. Quia omnis saepe nesciunt explicabo laboriosam necessitatibus deleniti. Temporibus et quis vel incidunt deserunt aut ullam.', 1, 1, '2020-01-29 17:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 29, 23, 'Animi omnis quisquam aspernatur enim perferendis ullam earum. Dolorem nemo accusantium illo et. Debitis aut nesciunt qui et sit vel sit numquam.', 1, 1, '2016-12-30 01:05:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 31, 34, 'Iure dolorem sit fugit beatae aut. Eaque alias at maiores quidem soluta repellat. Impedit quo neque est aut mollitia esse. Harum maiores a deserunt omnis voluptatum.', 1, 1, '2019-06-05 05:26:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 30, 77, 'Dolor facere hic corporis dolorem ab. Harum eligendi architecto est nobis odio cupiditate omnis. Quo non debitis ipsum possimus ducimus. Quod soluta asperiores odio consequatur eveniet. Et facere dicta repellat dolor.', 0, 1, '2019-10-12 19:02:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 32, 37, 'Mollitia omnis perspiciatis sit animi nesciunt dolores ad aut. Non repellendus repudiandae est veritatis in aut voluptas. Ut qui voluptatum dicta voluptas animi.', 1, 0, '2018-08-04 23:16:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 5, 37, 'Laudantium necessitatibus asperiores corporis et voluptatem ipsa. Adipisci officia vel eveniet odio cupiditate nemo.', 1, 0, '2014-12-04 13:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 8, 72, 'Vero excepturi rerum atque aspernatur saepe. Reprehenderit est est eum praesentium vel. Mollitia ullam repellat sit inventore.', 1, 1, '2013-04-15 10:52:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 33, 42, 'Sit dignissimos eos aut et. Occaecati voluptas velit culpa quis nisi tenetur.', 1, 0, '2015-10-17 04:07:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 99, 3, 'Sunt ab unde et veritatis adipisci enim. Nihil architecto inventore est qui. Soluta earum ut et est. Et deleniti est omnis in id aut labore consectetur.', 1, 0, '2020-11-04 04:35:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 71, 32, 'Autem voluptas porro numquam incidunt et asperiores dolorum. Ut exercitationem est sed sapiente et vero. Veritatis ratione ut corrupti.', 0, 0, '2018-02-28 21:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 19, 87, 'Ab quisquam nulla omnis. Temporibus magnam voluptates in voluptatum quas cum et quis. Nostrum autem voluptatem rerum a nam et quod. Natus eius nam et temporibus odio et.', 1, 0, '2020-05-26 05:02:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 36, 81, 'Aut deserunt non eos veniam ea porro odit. Labore blanditiis iure amet possimus et laborum voluptatem. Consectetur qui autem aut est ut. Non nihil aut corporis.', 0, 0, '2019-09-04 09:26:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 32, 1, 'Itaque molestias culpa qui rem fuga quis. Veritatis fugiat est qui voluptatem. Magnam est voluptas facilis molestias fuga ipsam.', 0, 0, '2013-11-22 11:39:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 10, 42, 'Et magni saepe in. Explicabo deleniti doloremque explicabo non itaque tempore deleniti. Rem fuga et voluptatem aut consequatur.', 1, 1, '2017-03-23 09:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 63, 74, 'Maiores unde possimus placeat suscipit ut. Quasi fugiat nulla deleniti et molestias. Illum ducimus nobis vel at sunt praesentium. Est qui et sapiente quis consequuntur laborum.', 1, 0, '2020-12-30 01:38:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 63, 100, 'Omnis quis dolorem ut quia ipsum enim. Sed eos aut corrupti qui ipsam quo. Autem assumenda fuga dolores eveniet neque.', 1, 1, '2015-07-14 14:01:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 12, 92, 'Quia rerum laudantium ad aut cumque ullam doloremque ut. Et reiciendis debitis quidem.', 0, 0, '2020-08-09 16:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 22, 42, 'Consequatur et esse magnam illum est in consequatur. Consequuntur quo minima est asperiores libero qui. Odit dolore illo eaque autem ut beatae. Voluptatem vel nemo dolor sit similique qui vel sunt.', 0, 0, '2012-01-19 17:52:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 26, 51, 'Omnis quia placeat sed corporis possimus nesciunt. Consequuntur voluptas corrupti qui iure. Perspiciatis ut et mollitia. Amet perferendis quisquam ut in.', 0, 0, '2017-07-06 22:36:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 19, 58, 'Sunt omnis et architecto cumque accusantium. Et quo est quis explicabo ut officia autem. Possimus aliquid dolores repellat est impedit rem. Aut fugit ex qui deleniti recusandae eaque.', 1, 1, '2019-08-19 05:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 88, 23, 'Error architecto ut fugiat architecto. Placeat atque sunt provident sint ipsam non. Et velit quis laborum dicta rem reprehenderit.', 1, 1, '2012-03-15 07:07:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 94, 95, 'Sed aliquam quos rerum temporibus magnam corrupti. Tempora dolorum in nulla. Ex omnis perferendis itaque id dolores similique eaque sed. Illo sint itaque ad qui voluptatem in aut non. Cupiditate hic omnis mollitia quis numquam dolore debitis eius.', 0, 0, '2018-09-14 00:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 95, 27, 'Nulla itaque sed non voluptas. Unde rerum similique eos sed. Hic ullam qui laborum sint. Sunt harum reprehenderit tempore omnis.', 0, 0, '2013-04-10 14:34:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 36, 94, 'Quibusdam aut similique libero necessitatibus. Voluptatem dolorem ut omnis eligendi. Nemo quae eveniet inventore iste vel qui.', 0, 1, '2019-03-02 06:31:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 30, 6, 'Non cum ut odio quos omnis temporibus. Aut et amet ullam beatae. Neque deleniti quisquam nulla sed provident. Excepturi asperiores aspernatur autem et praesentium.', 0, 1, '2013-02-11 02:02:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 25, 48, 'Quas animi est veritatis quas illum dolorem. Nobis vitae sint qui quod assumenda. Autem dolorem qui sint nesciunt veritatis ea repellat. Laudantium neque sed error voluptates autem nam. Voluptatem nisi perferendis ullam eaque incidunt.', 1, 1, '2013-04-16 10:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 92, 61, 'Laborum voluptas rerum ea atque deleniti eligendi ut. Maiores doloribus delectus quo sit ipsam voluptas quasi dolor. Consequuntur molestiae non non ipsam numquam voluptate similique reiciendis.', 1, 1, '2014-10-22 09:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 28, 24, 'Eos iste nihil velit dolorem repudiandae. Et nihil qui repudiandae corporis quisquam quo. Nulla amet sit fugiat dolores tempora vitae sed. Quibusdam cum voluptas aut animi velit.', 0, 0, '2019-01-12 13:56:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 62, 38, 'Sint et dolorum rem ab eius. Et ut ab quam. Quidem qui ut placeat placeat qui deserunt quidem. Et quidem magni quia sequi.', 0, 1, '2015-06-17 04:44:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 66, 24, 'At reiciendis magni aut cum sequi ipsam. Sed in ut autem quaerat. Facere necessitatibus dolorem sint et asperiores cupiditate vitae voluptatem.', 0, 1, '2012-04-26 07:17:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 11, 29, 'Minima minima quaerat sint eius laborum officiis incidunt. Nobis possimus reiciendis ut repudiandae ex quo voluptatem blanditiis. Excepturi sit libero et fuga. Enim voluptatem in non aut praesentium ipsum et.', 1, 1, '2014-09-07 19:21:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 23, 22, 'Dolor ea excepturi molestiae ab ut dolorum ut. Esse illo animi omnis asperiores alias est. Enim ut consectetur ducimus nostrum qui numquam.', 0, 1, '2015-11-10 04:28:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 20, 45, 'Nesciunt recusandae tempore eos a laudantium et. Accusantium alias ut eaque voluptatibus et unde possimus.', 0, 1, '2014-06-07 14:59:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 64, 46, 'Explicabo ab impedit sint qui laborum. Eos earum tempore et id est. Ratione quia est et. Delectus dolor excepturi dolor velit excepturi. Eum nihil minima dolores illo consectetur veniam placeat.', 1, 0, '2013-05-30 21:26:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 95, 83, 'Magnam eum itaque provident. Aut dignissimos voluptatem at natus quo. Consequuntur aut eum sequi vel et nobis cumque. Minus temporibus molestias consectetur itaque est est et.', 0, 0, '2021-02-12 13:23:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 3, 82, 'Voluptatem cumque corporis doloribus accusantium consequatur officiis voluptatem. Sit et facilis ipsa maxime. Omnis aut qui culpa enim id sit est.', 1, 0, '2014-06-09 14:25:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 6, 97, 'Eligendi iusto quia laudantium similique quod. Minima in consequatur eos unde ut. Suscipit quis vel ullam totam. Impedit assumenda ullam est maxime non non.', 0, 1, '2020-11-30 04:30:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 76, 1, 'Quas beatae eveniet in alias quos dolores architecto. Aut exercitationem dolorum quis eaque mollitia. Soluta voluptates ut quo laudantium porro ut sunt.', 0, 1, '2013-06-27 21:08:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 24, 12, 'Molestiae eos modi qui sit omnis porro. A iste assumenda qui quo aut maiores rerum. Ducimus voluptatem expedita autem distinctio. Similique voluptatum ducimus aspernatur aspernatur asperiores. Quo molestiae tempore quae voluptatem.', 1, 0, '2012-02-01 21:46:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 94, 53, 'Rerum veritatis reprehenderit cumque aut vero. Est impedit dolore et libero aut tenetur est. Voluptas quia earum qui omnis quisquam ut iure.', 1, 1, '2015-12-11 14:53:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 18, 19, 'Sed et unde ipsam aut enim dolor est quae. Et illo similique eos debitis alias nisi odit. Explicabo qui quos nesciunt tempora. Adipisci deleniti consequuntur laborum ex quos qui reprehenderit.', 0, 1, '2014-07-22 23:51:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 1, 10, 'Cum eveniet dolor eum maiores ut. At et rerum omnis est sunt. Aut neque eos accusamus velit aut qui possimus molestiae. Reprehenderit quia repellendus et aspernatur quia. Quod consequatur et animi nesciunt cum omnis vitae sint.', 0, 0, '2017-03-29 05:11:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 79, 28, 'Mollitia praesentium dolorem repellendus soluta deleniti. Corporis laudantium perspiciatis qui. Qui expedita totam nobis rerum. Omnis enim incidunt nobis corrupti voluptas quia id.', 0, 0, '2020-10-10 06:59:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 34, 41, 'Qui id nesciunt dignissimos earum dolores animi commodi architecto. Suscipit voluptatem pariatur omnis eos quas ad consequatur voluptatem. Nostrum ab et quos doloremque enim eius.', 0, 0, '2014-01-01 21:46:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 66, 99, 'Occaecati ea quisquam ipsum omnis consequuntur tempora. Est et repellendus aut possimus voluptas dolor et. Illo modi numquam et provident illo eum aut ut.', 0, 1, '2016-09-12 20:14:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 64, 76, 'Reprehenderit voluptas aut aspernatur dolores est error. Voluptas quia quis ex et. Sed id odio enim similique nam explicabo. Temporibus et itaque excepturi voluptate cupiditate rem et.', 0, 0, '2019-04-25 06:11:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 28, 86, 'Quo repellendus eveniet sed labore fugiat est sit. Quis aperiam corrupti temporibus laboriosam dolorem aut dolorem.', 1, 1, '2012-08-12 07:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 98, 48, 'Ab sunt et autem officiis ab aliquam porro eaque. Repudiandae reiciendis dolor minima doloremque consequatur. Natus sit illo nam asperiores cum illum. Rerum id vel nisi explicabo.', 0, 1, '2016-04-27 21:53:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 30, 62, 'Debitis quia dolores doloribus dolor veritatis cupiditate. Fugiat maxime eveniet autem neque excepturi fugit odit. Voluptatem incidunt rerum quisquam voluptates sed. Architecto totam quo repellendus asperiores dolores quaerat. Optio et est nihil eligendi earum perspiciatis quam.', 0, 0, '2014-08-23 13:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 93, 25, 'Earum consequatur quia dolor necessitatibus explicabo. Quisquam sapiente enim ea et suscipit nulla molestias assumenda. Delectus aspernatur iusto accusantium cupiditate in exercitationem rerum. Distinctio assumenda deleniti rerum architecto aut et quia.', 0, 0, '2014-12-09 23:47:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 44, 95, 'Autem repellendus quaerat sint. Est nemo voluptatem voluptatem. Consequuntur omnis architecto velit illo. Sed beatae provident quis.', 1, 0, '2014-11-28 21:51:12');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (1, 'M', '1982-05-29', 35, '2019-07-29 04:14:08', '2017-11-12 04:52:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (2, 'M', '1990-11-13', 48, '2012-01-19 09:36:02', '2013-12-04 03:08:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (5, 'F', '1976-07-02', 76, '2011-07-16 01:36:40', '2020-09-11 16:23:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (6, 'F', '2008-03-07', 42, '2018-02-21 15:10:30', '2020-09-28 06:13:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (7, 'M', '1990-04-19', 71, '2012-06-16 11:29:49', '2016-01-06 13:17:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (8, 'M', '1980-04-12', 91, '2019-10-04 09:24:32', '2012-02-17 15:53:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (9, 'M', '1988-03-03', 15, '2018-03-22 18:07:25', '2012-09-05 17:36:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (10, 'F', '2008-12-21', 96, '2015-09-17 13:42:38', '2018-11-11 10:06:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (11, 'M', '2017-11-18', 64, '2018-12-11 11:58:50', '2017-08-24 19:41:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (12, 'F', '2002-08-19', 90, '2017-07-09 09:46:14', '2017-07-05 04:44:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (13, 'F', '2011-12-29', 100, '2015-07-23 03:11:02', '2018-01-22 22:10:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (14, 'F', '1981-09-30', 54, '2016-02-13 08:31:31', '2017-06-04 14:51:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (15, 'M', '2005-10-19', 30, '2018-08-08 15:50:02', '2018-11-21 16:12:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (16, 'F', '1988-06-16', 50, '2013-04-28 03:19:25', '2014-09-23 21:58:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (21, 'F', '1994-05-22', 79, '2021-04-03 09:23:16', '2020-09-01 13:28:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (24, 'F', '1976-07-04', 87, '2012-07-23 04:40:42', '2019-02-18 13:24:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (27, 'M', '2008-06-26', 32, '2020-11-26 01:44:16', '2011-08-05 02:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (30, 'F', '1970-07-23', 3, '2012-09-21 01:13:05', '2019-08-26 23:00:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (31, 'M', '1982-10-11', 33, '2017-02-21 02:02:52', '2016-11-04 08:55:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (34, 'M', '1971-06-13', 44, '2014-07-09 15:06:18', '2015-08-18 07:05:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (35, 'M', '1974-01-16', 19, '2014-05-20 19:17:21', '2014-07-24 05:55:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (37, 'M', '1970-11-13', 13, '2018-05-19 19:21:02', '2021-04-08 02:06:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (38, 'F', '2003-11-24', 99, '2012-12-12 16:01:20', '2014-03-04 10:31:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (39, 'F', '2013-11-10', 59, '2014-08-23 15:07:55', '2014-03-28 07:42:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (40, 'M', '1983-07-18', 44, '2015-01-28 16:59:24', '2019-03-30 11:44:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (42, 'F', '1990-04-18', 4, '2017-01-16 15:45:16', '2018-05-04 08:50:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (44, 'F', '1979-11-02', 31, '2014-04-27 10:53:09', '2014-10-26 21:58:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (47, 'F', '1991-03-11', 74, '2014-07-25 23:48:44', '2011-09-25 18:02:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (48, 'M', '1995-01-17', 88, '2017-10-24 22:06:52', '2017-10-09 20:38:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (50, 'F', '2017-07-06', 85, '2014-02-08 08:32:42', '2021-02-15 23:55:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (51, 'F', '2008-06-02', 78, '2015-08-26 19:56:37', '2014-12-17 08:00:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (52, 'M', '2008-07-02', 77, '2013-10-01 18:09:34', '2020-05-20 14:05:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (54, 'F', '2017-01-16', 18, '2014-10-18 16:14:56', '2017-05-31 17:59:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (55, 'M', '2012-12-03', 55, '2013-09-17 05:19:15', '2018-02-03 16:52:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (56, 'M', '1996-06-23', 82, '2016-09-25 13:21:26', '2012-07-12 09:12:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (57, 'F', '2015-05-16', 18, '2019-03-22 01:09:57', '2012-05-31 12:36:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (59, 'F', '1974-12-29', 39, '2018-10-21 04:13:24', '2016-02-14 12:26:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (60, 'M', '2011-10-28', 16, '2014-09-13 23:37:15', '2016-07-28 00:18:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (62, 'M', '1993-09-18', 85, '2017-07-28 21:56:31', '2021-03-17 02:55:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (64, 'M', '1990-11-24', 30, '2015-08-12 12:48:27', '2019-01-15 23:40:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (66, 'M', '1970-03-26', 29, '2017-01-13 22:53:54', '2015-07-14 18:09:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (67, 'F', '1998-09-24', 52, '2013-11-16 02:58:23', '2018-12-13 23:11:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (68, 'F', '1975-02-06', 74, '2015-12-03 12:54:04', '2012-03-02 10:12:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (71, 'M', '1981-09-11', 77, '2019-05-25 17:38:02', '2017-07-19 21:44:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (73, 'F', '2015-06-28', 87, '2011-09-21 13:37:26', '2011-07-22 21:37:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (75, 'F', '1987-11-26', 17, '2015-12-03 20:56:50', '2018-01-18 13:19:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (76, 'M', '2001-08-07', 74, '2020-09-21 21:42:41', '2012-07-28 18:03:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (77, 'F', '1993-08-06', 73, '2020-04-03 04:29:37', '2013-01-27 18:26:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (78, 'F', '1971-02-06', 48, '2017-04-28 23:12:52', '2020-01-27 14:53:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (80, 'F', '2007-11-02', 29, '2014-12-03 06:06:37', '2013-08-16 10:05:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (81, 'F', '1992-10-18', 21, '2012-05-26 14:50:47', '2015-06-12 13:45:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (85, 'M', '1994-12-18', 36, '2018-12-06 14:55:30', '2018-05-15 01:51:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (86, 'M', '1979-08-10', 23, '2019-09-19 08:44:35', '2013-03-02 14:33:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (87, 'M', '1987-09-21', 73, '2018-03-02 14:47:28', '2015-12-31 12:33:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (88, 'F', '2021-03-02', 45, '2011-06-19 20:18:22', '2013-07-27 09:27:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (89, 'F', '1993-11-11', 92, '2014-11-10 10:50:35', '2013-06-16 11:04:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (90, 'F', '1982-05-09', 84, '2020-12-30 09:16:42', '2013-08-11 22:39:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (91, 'M', '1974-10-11', 88, '2013-08-31 01:59:16', '2018-04-03 17:23:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (92, 'M', '1977-10-16', 52, '2016-01-16 03:43:21', '2015-08-23 22:58:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (94, 'F', '2000-01-09', 21, '2016-10-03 23:30:12', '2012-11-30 02:24:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (95, 'M', '1985-10-14', 91, '2020-05-05 08:28:36', '2013-09-03 10:29:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (98, 'M', '1972-02-29', 22, '2019-07-31 05:07:56', '2014-12-29 10:53:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (99, 'M', '1973-09-01', 17, '2020-05-29 20:31:28', '2015-04-15 15:33:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (100, 'F', '2020-12-07', 56, '2015-02-05 17:15:09', '2015-10-15 20:25:53');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Cicero', 'Bogisich', 'madonna.hamill@example.com', '(007)589-3620x7089', '2016-11-26 13:18:01', '2013-05-27 21:03:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Anabelle', 'Jacobson', 'critchie@example.org', '397-620-9627', '2017-12-29 22:45:12', '2015-10-13 12:42:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Linnie', 'Wiegand', 'mayert.abraham@example.org', '759-066-0071x215', '2018-10-03 17:53:12', '2015-12-12 10:24:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Sydnee', 'Johns', 'nauer@example.net', '1-356-994-5084', '2015-10-13 05:45:55', '2020-08-02 21:40:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Dejah', 'Rutherford', 'upton.flavie@example.net', '031.013.0226x47523', '2016-08-01 06:33:05', '2017-11-14 20:28:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Malachi', 'Hilll', 'ablanda@example.org', '(252)207-3868x702', '2016-06-24 20:21:45', '2011-10-16 08:12:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Julio', 'Quitzon', 'jensen.bechtelar@example.com', '(748)869-6403x1500', '2012-11-25 07:28:03', '2018-07-31 07:38:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Bella', 'Bogisich', 'obie67@example.com', '(278)938-4523x04363', '2014-06-24 01:36:10', '2018-08-01 06:27:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Jay', 'Beahan', 'mac.mayert@example.org', '(368)238-6247', '2018-10-23 22:42:44', '2015-12-05 22:03:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Angelica', 'Welch', 'qstreich@example.net', '387-161-1738x3719', '2016-09-23 15:13:57', '2017-06-04 23:15:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Mac', 'Little', 'sydnee35@example.org', '1-394-873-6576', '2014-09-26 11:24:10', '2019-08-07 08:20:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Virgie', 'Ledner', 'graham.lisandro@example.org', '+28(6)4168356784', '2020-07-27 16:34:53', '2012-10-25 16:06:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Bret', 'Little', 'hturner@example.org', '(549)177-9994', '2015-03-08 22:27:34', '2011-07-21 19:33:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Beaulah', 'Dietrich', 'skiles.creola@example.com', '900-898-3489', '2015-10-08 04:08:58', '2012-09-24 18:47:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Deonte', 'Hirthe', 'vito.raynor@example.org', '08276185027', '2017-04-17 07:30:35', '2019-09-09 12:44:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Herbert', 'Collier', 'qwolff@example.org', '(690)118-4429', '2018-04-08 03:52:02', '2015-09-03 11:52:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Dedric', 'Hermann', 'white.keeley@example.net', '684.020.3563x905', '2016-11-10 22:49:17', '2019-01-01 16:06:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Warren', 'Doyle', 'lia63@example.net', '+94(7)7060880559', '2012-06-25 08:09:35', '2011-10-27 06:32:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jacinthe', 'Wiegand', 'treynolds@example.org', '08009718926', '2014-09-21 23:09:28', '2018-04-16 00:23:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Noe', 'Hermann', 'towne.jayden@example.org', '441.678.8686x674', '2019-08-24 11:53:43', '2019-05-26 21:10:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Gilbert', 'Kunde', 'vincent43@example.net', '+74(5)9722460881', '2020-05-07 11:59:09', '2013-10-24 22:31:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Alicia', 'Wuckert', 'fern94@example.net', '392-754-3969x937', '2020-09-24 06:32:17', '2015-11-15 14:34:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Devonte', 'Jacobson', 'alysson57@example.com', '997.341.1509', '2020-03-10 22:38:09', '2011-11-29 06:04:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Simeon', 'Brakus', 'bernhard.jaskolski@example.org', '503-209-2979', '2016-11-20 18:02:32', '2017-04-17 17:08:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Else', 'Flatley', 'gibson.rowan@example.com', '243.050.2779', '2014-04-21 10:20:12', '2019-05-04 06:05:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Cortney', 'Lindgren', 'shea.wolff@example.org', '1-726-584-2226', '2017-01-13 06:14:11', '2013-02-20 23:54:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Esteban', 'Abbott', 'carroll.brice@example.net', '1-021-289-0935', '2018-11-18 06:07:57', '2011-11-04 16:42:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Claud', 'Jacobson', 'hankunding@example.com', '523-722-1001x5020', '2019-11-29 19:45:43', '2013-10-16 09:28:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Alexis', 'Klocko', 'georgette.kemmer@example.com', '06835335636', '2015-07-08 20:40:54', '2015-10-30 05:10:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Karson', 'Emmerich', 'hartmann.tevin@example.org', '718.593.1344x3023', '2019-12-26 23:01:19', '2014-08-09 16:42:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Kobe', 'Hand', 'rico82@example.net', '+06(4)3625082357', '2013-02-02 22:01:37', '2011-08-01 14:29:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Mitchel', 'Cole', 'grempel@example.com', '487-705-6479x95135', '2011-12-23 09:42:18', '2016-05-03 05:22:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Estel', 'Luettgen', 'omer.stark@example.net', '241-267-3232', '2016-04-19 07:50:24', '2012-08-23 09:13:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Shayne', 'Casper', 'skye92@example.com', '181.221.3286', '2014-01-03 11:47:43', '2018-05-24 08:24:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Destany', 'Hauck', 'abbey47@example.org', '076.073.3446x30580', '2017-08-05 22:39:01', '2019-11-25 16:32:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Aric', 'Jacobson', 'branson.schneider@example.org', '439.688.6359', '2018-06-14 02:33:24', '2017-08-26 10:24:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Fred', 'Wehner', 'turcotte.alexandrine@example.com', '1-686-828-8928x6938', '2018-09-17 22:18:33', '2019-10-21 21:00:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Maxine', 'Gulgowski', 'carley48@example.org', '(562)824-3899', '2019-06-21 22:17:27', '2016-01-27 17:05:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Bobbie', 'Mann', 'olson.beau@example.net', '800-782-3432', '2013-03-16 00:17:28', '2013-09-06 02:11:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Cicero', 'Predovic', 'magdalena.sporer@example.org', '025-382-3314', '2017-05-08 03:41:33', '2016-04-11 04:30:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Alberto', 'Dooley', 'aleen.hickle@example.com', '(195)614-1401', '2020-07-30 11:15:46', '2017-02-07 19:23:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Frederik', 'Zieme', 'igraham@example.net', '06736909717', '2014-07-30 08:24:08', '2020-10-17 12:03:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Brooke', 'Waters', 'nkassulke@example.org', '(981)413-2913x291', '2016-08-22 09:51:51', '2018-11-12 20:15:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Horacio', 'Howell', 'jeremie02@example.org', '714.988.5074', '2021-03-15 01:26:35', '2018-02-13 23:06:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Ivy', 'Tremblay', 'runolfsson.adah@example.net', '09185332951', '2014-08-23 12:05:10', '2012-01-27 03:45:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Laurie', 'Buckridge', 'tvolkman@example.com', '503.593.0541x7973', '2015-07-01 23:25:19', '2020-05-19 00:31:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Bridget', 'Kozey', 'adolphus78@example.org', '458.322.3630', '2020-10-30 15:24:58', '2014-10-22 11:33:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kristin', 'Simonis', 'will.rice@example.org', '301.515.2010x505', '2016-10-15 01:40:32', '2017-10-15 08:01:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Cruz', 'Russel', 'penelope.homenick@example.com', '1-355-543-4020x009', '2019-01-29 11:20:01', '2013-10-28 19:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Zachery', 'Goyette', 'hazle.vandervort@example.net', '861-246-4995', '2013-07-01 03:57:50', '2020-03-06 06:27:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Daisy', 'Bogisich', 'connor.schaden@example.net', '+64(0)1763097143', '2011-06-10 08:50:28', '2017-05-16 01:53:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Berniece', 'Homenick', 'arjun.franecki@example.org', '(460)237-9189x09177', '2020-06-13 16:06:16', '2012-01-15 11:57:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Lawson', 'Waelchi', 'lindsey.towne@example.com', '(499)576-7785x604', '2011-11-27 08:26:14', '2015-01-29 04:03:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Rory', 'Lynch', 'waldo.kihn@example.org', '1-691-447-4561x6504', '2012-11-11 21:03:19', '2011-06-19 05:32:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Kylie', 'Gottlieb', 'treutel.pamela@example.org', '+45(7)2489493624', '2012-05-26 08:16:01', '2012-01-31 18:55:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Mariane', 'Sauer', 'stamm.muriel@example.org', '1-775-443-9166x801', '2020-09-04 03:27:54', '2016-05-23 16:59:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Kasey', 'Koelpin', 'marlene41@example.org', '984-767-1185x6809', '2012-08-28 12:34:48', '2020-08-25 13:16:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Jackie', 'Gottlieb', 'von.kaycee@example.org', '06074472627', '2019-08-16 12:57:58', '2015-09-13 05:47:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Devante', 'Koch', 'feest.keyshawn@example.com', '(263)592-4151', '2015-11-20 03:48:04', '2014-10-14 15:20:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Carol', 'Kunze', 'uwalsh@example.net', '029.417.1434x75843', '2019-04-24 04:07:06', '2017-01-27 19:00:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jade', 'Borer', 'kaitlyn.walsh@example.org', '157.894.5593x915', '2012-11-01 12:45:24', '2017-08-31 08:26:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Tate', 'Mohr', 'rose.ward@example.net', '025.842.1259x899', '2012-01-19 14:32:18', '2017-09-14 20:06:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Abe', 'Yundt', 'arolfson@example.net', '124.517.9700', '2019-12-24 06:35:00', '2018-10-15 15:22:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Abel', 'Morissette', 'chaz60@example.net', '07747414813', '2012-05-31 23:40:15', '2021-03-01 08:11:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Erika', 'Bartoletti', 'myriam.witting@example.net', '05931535582', '2018-03-03 22:50:58', '2013-04-07 08:27:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Ole', 'Boyer', 'rrunolfsson@example.com', '1-761-337-3464', '2019-05-25 12:25:56', '2013-09-08 14:29:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Berta', 'Auer', 'dudley62@example.net', '(737)584-3397x776', '2013-03-15 14:45:12', '2016-08-22 19:36:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Noe', 'Lind', 'charles.wunsch@example.com', '996.950.9487x83768', '2016-02-28 17:58:49', '2012-08-29 13:58:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Nelle', 'Rogahn', 'mitchell.serena@example.com', '08471079230', '2020-07-29 07:08:30', '2015-10-02 20:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Sonny', 'Volkman', 'maritza.vonrueden@example.net', '+11(9)0569841581', '2018-05-28 07:32:49', '2017-07-07 12:41:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Lon', 'Terry', 'mcclure.camila@example.org', '915.178.7786x0061', '2013-02-21 21:28:01', '2015-11-23 15:59:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Vern', 'Murray', 'ikrajcik@example.net', '918.656.3788', '2020-08-31 12:14:41', '2011-07-16 06:13:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Mae', 'Kuphal', 'swintheiser@example.net', '1-192-128-6275', '2011-07-18 20:16:51', '2019-12-18 17:15:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Kris', 'Heidenreich', 'allene22@example.net', '480.731.8439', '2021-01-11 12:06:00', '2019-02-21 12:49:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Ward', 'Fahey', 'electa86@example.com', '(215)771-2572x53961', '2015-10-08 20:05:10', '2018-04-27 14:27:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Deion', 'Vandervort', 'tracy.leannon@example.org', '1-207-846-1568x15893', '2020-03-15 09:27:11', '2016-02-09 15:54:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Emilie', 'Collier', 'to\'connell@example.net', '360-683-8050', '2019-01-27 14:24:30', '2011-10-26 06:24:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Marquis', 'Reilly', 'bruce.schmidt@example.com', '515-343-3628x119', '2016-01-15 08:13:13', '2013-07-17 17:05:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Laron', 'Bahringer', 'ozella88@example.net', '1-029-132-6082', '2020-03-19 09:01:13', '2019-03-01 04:24:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Valentine', 'Wolf', 'zabbott@example.org', '(641)010-8316x67428', '2018-11-25 19:08:58', '2020-09-26 09:23:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Liana', 'Hintz', 'heaney.jalyn@example.com', '(964)479-4865', '2015-06-02 19:54:46', '2020-02-14 18:27:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Ahmad', 'Hartmann', 'anahi.buckridge@example.org', '747.842.9854', '2018-01-01 08:08:22', '2014-08-07 01:04:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Rory', 'Blanda', 'qgrady@example.com', '953-025-0277x482', '2021-02-23 19:26:23', '2015-09-11 19:10:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Junius', 'Jenkins', 'othiel@example.net', '1-904-981-8743x0975', '2019-04-25 13:58:22', '2012-04-24 19:26:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Viva', 'Corkery', 'krajcik.ike@example.net', '1-109-255-0191x931', '2011-10-07 21:08:14', '2020-12-03 09:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Ara', 'Watsica', 'wdickinson@example.com', '634-643-4996x541', '2019-10-11 14:11:00', '2015-07-06 05:38:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Maegan', 'Steuber', 'bartell.dora@example.com', '978-303-8567', '2017-09-22 18:08:36', '2018-12-01 08:27:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Willis', 'Huels', 'skuphal@example.net', '(528)424-6755', '2020-04-18 02:06:09', '2021-02-18 11:33:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Ignatius', 'Raynor', 'alysa93@example.com', '+93(9)1043933353', '2012-02-24 06:32:16', '2011-08-20 07:54:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Solon', 'Treutel', 'eweber@example.net', '+64(7)7758681081', '2019-12-07 03:36:02', '2016-01-27 10:05:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Natalia', 'Reichel', 'nwitting@example.org', '(835)324-5966', '2016-02-19 02:31:23', '2013-05-30 00:59:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Nestor', 'Kunze', 'yfunk@example.net', '(669)400-0765x11664', '2018-02-27 23:45:44', '2016-11-30 19:00:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Wayne', 'Haley', 'della61@example.org', '1-866-958-3609', '2011-11-06 13:52:29', '2015-12-16 23:52:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Bulah', 'Spinka', 'neva28@example.net', '931-865-4316x7561', '2016-08-06 21:02:52', '2014-11-17 11:39:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Serenity', 'Hoppe', 'beer.giuseppe@example.com', '275-547-0746', '2014-10-07 09:40:34', '2017-10-07 05:15:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Carmel', 'Schowalter', 'ohane@example.com', '(422)252-8915x4285', '2015-06-24 02:14:29', '2016-08-23 03:39:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Amber', 'Boehm', 'dlind@example.net', '1-732-068-6344', '2020-06-07 22:04:44', '2011-10-18 16:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Elyse', 'Zboncak', 'aufderhar.ransom@example.com', '516.916.6277x4983', '2016-10-28 06:34:44', '2017-12-31 02:41:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Alia', 'Robel', 'jschowalter@example.net', '001-708-8652x4056', '2011-07-29 08:10:39', '2018-08-26 14:30:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Candido', 'Baumbach', 'kling.laurence@example.net', '00658304180', '2011-09-18 15:41:18', '2012-07-14 05:51:25');
