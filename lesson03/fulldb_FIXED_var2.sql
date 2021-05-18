-- Создаём БД
DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;

-- Делаем её текущей
USE vk;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Charles', 'Raynor', 'madie53@example.net', '1-271-671-5446x65126', '1996-11-23 19:55:56', '2018-07-31 00:53:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Mabelle', 'Towne', 'quitzon.boris@example.com', '1-388-851-1624', '1993-11-13 23:04:19', '1984-03-31 11:55:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Serenity', 'Metz', 'lklein@example.com', '1-112-205-3594x960', '1997-12-18 08:22:28', '2017-01-10 03:34:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Theresa', 'Pfeffer', 'o\'connell.alexandrine@example.com', '1-746-936-1849', '2003-11-17 12:17:32', '2018-06-03 11:48:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Gabriella', 'Gleason', 'wilma77@example.net', '(036)100-8004x385', '1992-01-15 14:30:40', '2007-12-26 07:30:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Peter', 'Parker', 'erunolfsdottir@example.com', '483-721-2709x0516', '1972-05-27 00:22:27', '1988-03-02 19:52:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Jamey', 'Barton', 'friedrich31@example.org', '802.467.7119', '1974-09-13 01:57:47', '1992-02-02 11:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Micheal', 'Kunze', 'bpowlowski@example.com', '+54(6)7632600112', '1997-12-04 01:31:12', '2016-08-21 14:08:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Caroline', 'Luettgen', 'gkirlin@example.org', '(682)257-2698x769', '2003-08-05 10:52:42', '2003-02-15 21:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Agnes', 'Bergstrom', 'bgorczany@example.com', '05608512573', '1976-05-03 10:48:09', '1995-11-10 03:15:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Davonte', 'Green', 'hazle.gorczany@example.com', '02897304566', '2008-09-12 01:56:58', '1976-07-20 05:48:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Sarai', 'Mills', 'asia88@example.org', '1-719-580-6701', '1995-05-19 06:18:45', '2014-02-09 20:12:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Clovis', 'Schmitt', 'kobe.hilpert@example.org', '1-876-235-0636', '1976-09-24 13:47:36', '1984-12-26 21:07:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Davin', 'Marquardt', 'vern.heaney@example.org', '07498538385', '2015-03-26 20:14:24', '1988-06-04 07:00:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Rebeca', 'Streich', 'rylan97@example.com', '123-546-4620', '2001-06-18 10:29:30', '2000-10-04 11:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Aric', 'Walter', 'lreilly@example.net', '505.414.1371', '1996-06-04 09:25:38', '1998-06-28 23:49:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Abbey', 'Nader', 'athena.ankunding@example.com', '684-487-6282x0143', '1991-10-16 20:53:31', '1996-09-02 07:10:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Ambrose', 'Grant', 'bruen.jaron@example.com', '(596)226-0528x0312', '2020-11-29 09:43:07', '2009-08-22 08:11:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Meghan', 'Fritsch', 'hyatt.monserrate@example.net', '00481838022', '2001-08-22 10:37:33', '1992-01-20 08:10:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Rusty', 'Brekke', 'alfreda62@example.org', '279-239-7952x88476', '2001-12-01 05:36:54', '2007-06-05 07:58:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Bennett', 'Batz', 'fo\'kon@example.org', '959-708-5696', '1985-02-13 13:38:14', '2003-03-24 18:24:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Roslyn', 'Bergstrom', 'vgaylord@example.org', '308.977.8898x1205', '1974-05-20 08:39:03', '2014-03-15 08:14:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Jordon', 'Zemlak', 'dibbert.ophelia@example.org', '(374)375-5086x66219', '1995-03-22 16:43:28', '2008-05-03 19:57:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Justine', 'Purdy', 'd\'amore.molly@example.net', '00716496616', '2008-07-07 06:44:04', '2011-05-13 10:44:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Alda', 'Gaylord', 'bauch.tressa@example.net', '(192)187-0828x627', '2006-06-11 14:50:20', '2009-05-22 19:46:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Hermann', 'Gislason', 'emery58@example.com', '(107)163-1877x23763', '2005-10-01 13:45:04', '1970-09-29 18:35:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Kamille', 'Stokes', 'sawayn.leif@example.com', '413.829.1122x320', '1991-10-31 19:33:38', '1994-08-14 18:22:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Noemie', 'Stamm', 'margaret.kozey@example.com', '235.093.3820x82032', '1972-02-29 21:09:11', '1998-06-10 14:00:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Gerson', 'Kunde', 'elfrieda47@example.net', '(157)733-7897x64539', '2020-07-29 01:47:16', '1970-02-28 16:03:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Olen', 'Torphy', 'raoul.kuhn@example.com', '1-630-883-5261x84194', '1977-10-15 08:17:41', '2012-06-10 01:17:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Jettie', 'Douglas', 'jeremie.erdman@example.org', '06663747399', '1992-05-10 19:53:34', '1977-09-21 02:32:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Keagan', 'Boyle', 'yasmeen.treutel@example.net', '1-769-710-0197x34448', '1997-04-07 13:53:00', '1970-02-07 20:59:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Velma', 'Cassin', 'carrie.schroeder@example.org', '(638)125-2828', '2017-05-10 03:22:43', '2006-05-28 21:23:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Terrance', 'Schultz', 'trenton02@example.com', '(680)778-6407x8704', '1974-04-23 07:24:46', '2005-12-11 10:02:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Dorris', 'Corkery', 'jerad.roob@example.com', '+94(2)3653608632', '1979-12-05 20:46:26', '2012-03-03 13:54:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Rebeka', 'Ortiz', 'gaylord.dillon@example.org', '284.271.6833x68948', '2010-11-05 09:53:04', '1973-07-03 08:51:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Lane', 'O\'Reilly', 'saige06@example.org', '329.233.2957x3719', '2014-06-01 04:43:57', '2007-04-19 06:16:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Camryn', 'Jerde', 'carroll.abbott@example.org', '123-918-5662x6813', '2003-06-18 02:04:30', '1972-06-06 06:22:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Alexis', 'Terry', 'sally95@example.net', '1-410-222-5626x56253', '1972-05-14 22:31:25', '1997-07-29 00:06:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Elyssa', 'Nolan', 'rohan.genevieve@example.org', '392.985.3652x752', '1972-02-19 12:36:22', '2015-06-09 01:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Kaela', 'Rath', 'waters.karlie@example.com', '1-841-314-4915x343', '1978-01-17 10:12:01', '1998-07-19 04:58:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Vella', 'Upton', 'wisozk.sylvan@example.com', '(199)401-4719x24462', '2003-03-27 06:05:52', '1991-07-10 02:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Keith', 'Hintz', 'kurtis.schneider@example.com', '663-120-9271', '1984-03-14 15:26:25', '1986-01-31 03:26:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Melissa', 'Considine', 'hrosenbaum@example.org', '+30(3)7272011091', '1975-07-13 03:09:59', '1970-01-11 06:36:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Vivienne', 'Walsh', 'shaylee.stanton@example.com', '1-532-559-3834x3932', '2005-06-16 11:00:45', '1982-01-21 08:30:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Marilie', 'Haag', 'monahan.angie@example.net', '516.304.9129x465', '2013-11-10 12:40:13', '1997-03-31 04:20:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Coby', 'Hammes', 'ustokes@example.net', '987-651-3428', '1984-07-03 07:17:08', '1996-03-09 14:12:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Ally', 'Hilpert', 'santina19@example.org', '1-093-790-3435', '2004-08-22 20:56:30', '2020-02-08 11:22:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jena', 'Legros', 'shane77@example.org', '03004448562', '2004-09-08 03:32:59', '1986-10-22 11:54:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Maybell', 'Bailey', 'fwest@example.net', '021-711-6909', '2012-03-25 08:36:43', '2008-06-25 01:10:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Adell', 'Lakin', 'cremin.nikko@example.org', '1-367-340-0109', '1973-09-03 14:26:04', '2014-01-06 06:04:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Cruz', 'Moore', 'mabelle.kuphal@example.com', '(017)116-9649', '2009-06-16 17:03:28', '2018-08-16 21:33:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Van', 'Predovic', 'grady.emory@example.org', '811-351-5673', '2008-01-28 22:55:04', '1991-08-17 13:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Ida', 'Turcotte', 'wshanahan@example.org', '1-325-076-7257x6894', '2013-12-26 11:01:29', '1987-11-11 05:20:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Jody', 'Goyette', 'stroman.kenya@example.org', '(371)084-1835x635', '1994-09-03 12:26:39', '1978-05-03 04:43:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Maurine', 'Smith', 'flatley.naomi@example.org', '498-642-4049x7991', '2015-09-28 05:01:10', '1978-10-24 02:20:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Marcos', 'Schmitt', 'schumm.rosamond@example.net', '(976)045-1019x811', '1999-09-11 17:38:59', '1988-06-21 11:06:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Jaqueline', 'Pfannerstill', 'toy.audra@example.org', '412.677.4089x824', '1978-05-03 05:34:30', '1985-07-25 03:13:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Mayra', 'Skiles', 'mparker@example.org', '743.939.9378x2545', '1975-12-02 00:12:22', '1982-06-04 17:05:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Norris', 'Veum', 'carroll.floy@example.net', '1-230-221-1794x77415', '1988-07-18 10:12:08', '2015-08-21 05:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jayne', 'Jacobson', 'adickens@example.com', '(914)586-5991', '1996-12-02 23:51:25', '2019-05-03 16:15:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Herman', 'Klein', 'hauck.adan@example.net', '423-309-0711x8121', '1978-01-13 11:58:06', '1970-05-02 20:31:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Damian', 'Abbott', 'arely23@example.net', '398-444-7065x0028', '1989-05-14 18:33:47', '1990-11-18 15:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Margaretta', 'Kuvalis', 'conn.romaine@example.com', '(097)063-3092x11922', '1998-06-09 07:34:39', '1980-08-25 19:24:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Dora', 'Wyman', 'vaughn.marvin@example.net', '(608)617-3521', '1996-10-27 00:19:20', '1992-09-29 04:12:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Delphine', 'Crona', 'wturner@example.net', '1-173-195-6178x42147', '2007-04-15 07:53:19', '1979-12-18 23:48:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Kylie', 'Ritchie', 'raoul39@example.com', '(901)226-4697x14873', '1976-07-03 20:54:44', '1986-12-16 01:17:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Marlee', 'Ferry', 'carroll.donnie@example.org', '699.322.7393x6288', '1975-01-17 00:38:08', '1994-02-11 11:49:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Francisca', 'Feeney', 'hbalistreri@example.com', '488-827-7513x9689', '1984-10-22 11:58:21', '1986-08-14 09:49:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Russell', 'Mayert', 'lblick@example.org', '342-670-2193x9185', '1989-07-10 04:49:56', '1998-11-15 10:32:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Cynthia', 'Langosh', 'hstamm@example.com', '+42(5)2878753248', '1986-11-23 05:42:48', '2018-12-27 13:37:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Blaze', 'Morissette', 'lpowlowski@example.net', '+79(7)1437212331', '2011-10-14 20:38:44', '1988-08-11 23:31:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Mathilde', 'Goldner', 'pbuckridge@example.net', '1-871-163-1513x962', '2005-12-01 14:16:47', '2013-01-06 14:35:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Elaina', 'Greenholt', 'nora09@example.com', '611-948-2332x595', '2010-10-07 20:38:11', '1989-03-08 18:21:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Jazlyn', 'Gaylord', 'bode.maci@example.org', '(340)666-5577x56244', '1977-08-06 18:17:01', '2016-02-13 07:38:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Nora', 'Gusikowski', 'joelle47@example.org', '(191)145-2228x808', '1979-05-27 03:15:14', '1977-09-26 22:31:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Abby', 'Pagac', 'gulgowski.dayana@example.org', '1-283-732-2041x77051', '1979-03-10 11:31:54', '2000-02-16 11:22:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Kassandra', 'Kuhlman', 'dane.o\'hara@example.com', '633.324.4718x5280', '1984-05-23 08:10:32', '1970-05-05 13:13:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Amaya', 'White', 'blake.marvin@example.net', '1-799-993-5818x0716', '2015-08-06 22:31:52', '1988-09-29 23:12:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Isobel', 'Schuster', 'jast.treva@example.com', '07600199123', '1987-11-06 08:32:21', '2003-06-05 22:02:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Matilda', 'Dach', 'ywatsica@example.org', '+25(6)2293983919', '1995-02-27 10:14:48', '1998-07-15 14:57:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Rashad', 'Feil', 'jany.ortiz@example.org', '(928)192-1965x1619', '2005-02-10 08:37:51', '2004-08-19 04:11:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Lelah', 'Dare', 'nash.klein@example.com', '861-893-0490x320', '2011-01-16 17:55:35', '2007-01-18 21:05:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Gustave', 'Bogan', 'alana.towne@example.com', '09381919030', '2012-11-01 22:46:28', '2009-06-23 16:28:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Bernice', 'Huel', 'lind.hilton@example.org', '1-400-000-7521', '1994-03-12 21:22:10', '1970-07-26 20:55:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Johnny', 'Stark', 'john37@example.org', '1-578-713-2592', '2008-09-17 13:37:53', '1985-01-11 06:27:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Lauretta', 'Hettinger', 'moriah09@example.net', '1-134-536-2667x036', '1971-08-25 22:14:38', '1978-07-24 13:46:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Courtney', 'Padberg', 'ysenger@example.net', '1-353-565-7114x799', '2007-11-13 17:04:24', '2011-05-16 11:39:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Hershel', 'Lemke', 'devonte.thiel@example.com', '1-763-380-0358x02856', '1978-10-19 13:06:43', '2020-12-25 19:23:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Yazmin', 'Metz', 'pparker@example.org', '452.352.7796', '1988-06-27 00:29:35', '1992-09-18 08:32:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Dortha', 'Green', 'bogisich.ewald@example.com', '1-319-742-3540x3971', '1996-11-08 10:27:00', '1984-10-22 06:30:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Santa', 'Runolfsson', 'gaylord.hank@example.net', '1-851-868-0603x680', '2005-04-13 21:22:51', '1999-05-22 14:20:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Esmeralda', 'Connelly', 'ybotsford@example.net', '(396)005-5666', '1983-02-06 14:59:16', '1972-09-03 11:42:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Rudolph', 'Lebsack', 'carli23@example.com', '1-301-707-0696', '2018-11-09 15:17:20', '2012-12-12 09:54:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Nicolette', 'Fay', 'htowne@example.org', '692-298-2170', '1994-07-28 21:25:03', '1997-05-17 19:41:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Stephania', 'Price', 'wilber.harber@example.com', '+44(7)3609862903', '1975-10-14 22:58:25', '1995-08-17 01:09:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Astrid', 'Veum', 'aurore.towne@example.net', '750.196.1321', '1991-03-17 18:55:16', '2018-02-02 20:15:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Ferne', 'Kemmer', 'otrantow@example.org', '(873)954-3122x91651', '1992-11-08 16:51:06', '1973-08-23 04:32:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Bernadine', 'Koepp', 'pklocko@example.net', '727-762-4748', '1981-09-14 05:43:04', '1991-05-28 07:53:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Tremayne', 'Abbott', 'roman15@example.org', '(739)324-3388x51377', '1978-05-10 01:32:23', '1988-07-14 09:19:17');


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'application/vnd.oasis.opendocument.text-template', '1999-10-03 16:23:08', '1999-06-02 18:57:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'text/vnd.dvb.subtitle', '2009-09-03 20:48:57', '2010-06-03 07:54:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'image/cgm', '1977-08-18 11:39:17', '2010-08-12 10:42:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'application/vnd.igloader', '1997-12-06 04:38:02', '1985-02-01 13:12:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'video/vnd.ms-playready.media.pyv', '1994-03-06 02:40:57', '1993-04-14 05:34:58');


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
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 30, 'omnis', 880163, NULL, 1, '2002-03-06 10:48:30', '1989-07-12 06:22:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 22, 'itaque', 369716, NULL, 4, '1978-10-01 21:29:42', '1978-06-24 17:02:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 12, 'amet', 937597, NULL, 5, '1973-02-16 02:19:13', '2020-06-06 22:32:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 58, 'et', 454973, NULL, 4, '1985-09-26 09:02:39', '2015-03-05 15:01:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 78, 'autem', 371200, NULL, 2, '2001-07-13 02:39:59', '1975-05-23 03:21:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 96, 'numquam', 733508, NULL, 2, '2008-11-03 18:29:51', '1991-10-15 10:33:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 49, 'numquam', 839471, NULL, 1, '1993-07-04 22:07:17', '1981-08-23 11:00:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 18, 'sed', 119955, NULL, 2, '1997-03-16 00:16:01', '2020-02-28 20:32:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 71, 'enim', 553139, NULL, 1, '2000-02-07 03:29:21', '2015-09-29 23:14:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 87, 'est', 991144, NULL, 5, '2005-09-27 06:02:16', '2001-12-11 01:27:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 23, 'est', 67349, NULL, 5, '1982-06-16 15:00:33', '1994-09-01 10:30:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 31, 'facere', 910180, NULL, 1, '2003-11-18 21:50:06', '1983-10-26 02:00:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 54, 'voluptates', 45804, NULL, 1, '2015-09-22 02:32:30', '2002-03-31 12:40:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 74, 'delectus', 467184, NULL, 2, '1979-06-18 02:04:20', '2008-09-10 16:15:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 17, 'qui', 530067, NULL, 3, '2009-06-22 18:31:49', '2000-03-12 01:11:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 3, 'officia', 176824, NULL, 3, '2004-05-22 16:45:41', '2007-09-21 00:43:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 57, 'non', 748399, NULL, 2, '2021-01-12 05:34:50', '2013-12-01 04:05:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 12, 'necessitatibus', 742375, NULL, 4, '1981-08-14 02:34:57', '1990-10-26 06:13:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 23, 'quia', 896114, NULL, 4, '1993-12-08 21:51:37', '1970-02-04 08:47:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 31, 'id', 125892, NULL, 5, '2016-09-15 06:38:32', '1979-04-24 12:06:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 6, 'nulla', 335080, NULL, 2, '2002-02-15 12:50:31', '2003-06-25 23:55:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 28, 'delectus', 114669, NULL, 3, '1984-03-03 02:52:53', '2013-07-11 19:29:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 37, 'placeat', 345944, NULL, 3, '1987-10-10 17:32:13', '1989-12-29 20:37:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 88, 'architecto', 127409, NULL, 1, '2005-11-02 05:05:55', '1970-01-16 15:35:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 57, 'vel', 148813, NULL, 4, '1977-06-01 21:09:54', '1993-12-13 03:42:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 89, 'est', 79212, NULL, 4, '1986-04-29 03:27:39', '1972-08-09 18:54:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 68, 'maiores', 947683, NULL, 1, '2013-10-23 02:10:58', '1986-07-16 06:03:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 91, 'expedita', 485682, NULL, 2, '2006-01-23 04:18:11', '2008-01-31 12:30:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 23, 'vel', 720940, NULL, 4, '2010-06-24 04:35:22', '2008-07-23 17:39:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 61, 'perspiciatis', 245075, NULL, 2, '2016-03-14 22:13:48', '1981-01-26 20:29:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 14, 'dolores', 642395, NULL, 4, '1993-12-27 05:55:29', '1973-04-16 01:37:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 86, 'recusandae', 98060, NULL, 4, '2009-11-12 05:18:45', '2018-02-19 04:52:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 88, 'aperiam', 861949, NULL, 5, '1971-10-17 14:05:05', '1997-08-23 02:57:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 39, 'earum', 140687, NULL, 1, '2003-11-07 10:54:34', '1976-11-26 00:00:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 65, 'voluptatem', 785797, NULL, 4, '2009-12-10 02:19:04', '1974-01-26 08:20:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 10, 'ipsum', 890611, NULL, 4, '2014-09-09 21:27:17', '1984-01-04 09:59:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 96, 'nisi', 717924, NULL, 2, '2001-06-30 15:21:38', '1988-11-27 15:46:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 25, 'repudiandae', 964687, NULL, 2, '2005-10-24 02:13:23', '1997-01-26 09:05:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 82, 'nesciunt', 688365, NULL, 1, '2008-03-22 11:43:38', '2007-05-14 11:36:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 39, 'vel', 985499, NULL, 2, '2000-12-18 20:15:01', '1999-04-08 07:56:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 86, 'a', 586988, NULL, 2, '1978-06-10 09:19:21', '2015-06-18 17:15:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 17, 'sequi', 756555, NULL, 3, '1983-01-06 19:54:52', '1989-03-14 22:27:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 47, 'consequuntur', 362403, NULL, 1, '1988-10-24 17:58:55', '1999-02-19 02:40:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 75, 'ea', 51360, NULL, 4, '1995-03-22 12:46:07', '1982-08-26 03:53:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 71, 'sunt', 255225, NULL, 2, '1990-03-09 19:06:42', '1988-02-22 19:54:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 8, 'et', 798346, NULL, 5, '2015-03-07 05:38:49', '2021-03-14 12:33:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 100, 'recusandae', 118417, NULL, 5, '1979-07-10 16:59:14', '1997-01-15 01:35:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 54, 'iure', 93349, NULL, 5, '1990-12-04 06:57:03', '1975-09-03 17:24:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 89, 'ut', 609885, NULL, 5, '1991-04-14 11:10:02', '1989-08-10 17:45:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 97, 'maxime', 568559, NULL, 3, '1976-10-29 01:27:05', '1970-03-24 12:33:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 61, 'error', 782671, NULL, 1, '1975-07-19 16:06:27', '1979-04-11 22:00:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 24, 'qui', 835494, NULL, 3, '2019-05-26 07:13:44', '1986-03-25 20:05:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 43, 'necessitatibus', 370880, NULL, 3, '2009-09-04 17:24:43', '2005-01-16 02:24:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 87, 'quidem', 182899, NULL, 2, '1974-01-14 14:00:33', '2018-10-26 16:54:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 61, 'ut', 545599, NULL, 2, '2008-09-25 04:37:43', '1973-01-11 08:59:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 62, 'porro', 55878, NULL, 3, '1971-09-21 08:53:41', '1974-01-21 13:17:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 53, 'quis', 44790, NULL, 4, '1998-10-13 05:33:48', '2013-06-23 21:56:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 100, 'corrupti', 414845, NULL, 5, '2004-04-30 09:30:08', '1998-12-13 07:39:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 86, 'et', 948823, NULL, 4, '1993-02-17 13:42:10', '1988-10-15 06:40:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 68, 'nobis', 703995, NULL, 3, '2003-11-21 16:48:20', '1993-07-10 01:53:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 11, 'voluptate', 709653, NULL, 4, '1976-01-03 04:18:39', '1993-08-21 11:10:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 39, 'non', 441676, NULL, 1, '1995-08-24 02:18:32', '1977-11-06 09:15:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 67, 'id', 509021, NULL, 5, '2009-02-19 00:51:04', '1980-08-31 04:34:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 97, 'non', 514625, NULL, 3, '1982-11-07 13:45:33', '2008-06-06 22:33:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 84, 'illo', 567378, NULL, 5, '2013-11-01 03:24:06', '2012-10-22 05:43:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 9, 'sit', 691634, NULL, 3, '2001-09-27 16:41:35', '2006-06-16 17:44:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 100, 'perspiciatis', 279552, NULL, 2, '1986-10-26 07:10:27', '1973-12-23 04:08:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 99, 'ex', 100133, NULL, 3, '1973-03-05 15:21:52', '1971-12-24 20:37:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 81, 'ut', 5744, NULL, 5, '2018-09-09 01:06:38', '2005-03-01 02:41:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 67, 'consequatur', 774999, NULL, 3, '1979-12-12 00:27:52', '1993-10-23 11:05:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 11, 'doloribus', 611506, NULL, 2, '1977-12-06 06:03:18', '2003-08-10 01:59:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 88, 'fuga', 155166, NULL, 4, '2016-12-23 23:37:32', '1997-02-09 02:01:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 7, 'eaque', 811671, NULL, 5, '2000-09-10 17:48:37', '1991-01-24 06:06:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 62, 'debitis', 167236, NULL, 5, '2009-02-14 00:26:36', '2016-02-04 13:11:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 63, 'nostrum', 854791, NULL, 2, '1973-08-16 10:44:27', '1993-08-23 03:56:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 48, 'dolor', 714395, NULL, 4, '1982-09-14 05:32:31', '2014-10-31 05:17:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 4, 'eveniet', 835952, NULL, 5, '2020-07-09 10:21:05', '1980-08-17 23:21:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 83, 'eaque', 209379, NULL, 4, '2012-10-01 01:23:05', '1984-11-06 15:12:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 78, 'reprehenderit', 643355, NULL, 4, '1975-10-27 09:07:07', '2007-05-30 03:48:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 26, 'hic', 901700, NULL, 4, '2009-11-10 23:03:34', '2001-05-26 11:36:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 74, 'ipsam', 723105, NULL, 2, '1983-08-07 08:44:46', '2000-03-01 17:08:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 5, 'aut', 974695, NULL, 4, '1997-05-29 18:35:27', '2002-07-09 02:13:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 68, 'eius', 333453, NULL, 1, '1981-07-06 20:01:24', '2010-04-28 01:31:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 16, 'provident', 842309, NULL, 3, '1998-06-09 07:01:20', '2008-06-22 18:23:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 89, 'voluptas', 780654, NULL, 5, '2014-10-21 01:26:18', '1974-11-08 00:29:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 90, 'voluptates', 205214, NULL, 5, '1984-01-01 01:10:34', '1971-11-24 21:26:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 12, 'ea', 597344, NULL, 4, '1994-12-30 06:11:47', '1971-03-17 23:33:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 63, 'id', 12858, NULL, 1, '2001-05-30 09:42:03', '1983-09-09 05:00:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 65, 'sed', 754529, NULL, 2, '2014-04-11 15:20:25', '1978-02-06 13:29:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 10, 'voluptatem', 553818, NULL, 2, '2018-06-09 11:50:41', '2014-09-21 14:18:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 54, 'sunt', 216762, NULL, 3, '2014-05-12 11:27:04', '1978-03-15 17:19:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 100, 'quae', 57737, NULL, 3, '1973-03-21 20:15:43', '1976-09-26 16:32:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 43, 'similique', 807970, NULL, 5, '2020-07-05 22:15:07', '1972-09-22 01:30:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 28, 'et', 300786, NULL, 2, '1990-01-23 14:23:53', '1970-03-12 02:52:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 63, 'dicta', 610695, NULL, 3, '1992-05-21 10:04:43', '1970-05-03 03:15:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 82, 'et', 981018, NULL, 2, '1995-06-29 22:44:05', '1975-04-18 01:56:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 89, 'delectus', 128631, NULL, 5, '2009-12-04 16:38:36', '2008-03-22 23:00:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 9, 'ad', 525949, NULL, 3, '1975-04-15 05:19:39', '2006-06-02 04:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 90, 'magnam', 733916, NULL, 2, '1996-10-10 08:30:25', '1996-01-23 14:21:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 4, 'atque', 690892, NULL, 4, '1984-01-10 09:41:14', '2015-12-21 22:58:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 8, 'enim', 529820, NULL, 5, '1997-06-02 15:13:31', '1992-12-17 02:22:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 78, 'culpa', 921462, NULL, 1, '2013-07-15 06:46:16', '1979-02-21 03:40:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 70, 'ea', 678782, NULL, 3, '2019-10-17 04:03:37', '1979-08-26 22:48:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 37, 'aut', 965789, NULL, 2, '2011-06-05 02:04:15', '1984-03-25 08:54:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 66, 'explicabo', 108498, NULL, 3, '1989-04-14 19:41:32', '2014-08-01 21:11:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 61, 'et', 264395, NULL, 1, '1976-11-30 23:31:22', '1977-09-06 16:35:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 3, 'debitis', 893352, NULL, 3, '1979-12-27 06:09:22', '1972-05-20 19:56:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 77, 'enim', 659237, NULL, 3, '2009-04-12 09:07:58', '2012-04-15 20:39:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 43, 'soluta', 995887, NULL, 1, '1980-03-31 19:05:48', '2004-06-01 12:14:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 66, 'fugiat', 685590, NULL, 1, '1990-01-07 15:06:11', '1996-04-19 17:57:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 59, 'quasi', 238527, NULL, 3, '1997-11-05 21:12:04', '2009-05-10 21:14:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 40, 'voluptatem', 689941, NULL, 3, '2010-12-12 22:02:38', '1977-11-05 07:08:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 34, 'ea', 748619, NULL, 3, '2010-01-04 23:01:29', '2000-03-15 05:17:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 2, 'ut', 199753, NULL, 2, '1987-09-04 01:20:39', '1972-07-25 11:33:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 74, 'ut', 104376, NULL, 1, '1976-09-18 03:11:51', '1996-10-07 01:59:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 2, 'deleniti', 309475, NULL, 5, '1997-05-29 05:46:47', '2003-07-23 19:34:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 99, 'a', 679895, NULL, 4, '2016-06-28 11:47:19', '1988-01-31 10:26:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 99, 'molestias', 341608, NULL, 4, '1999-09-29 11:45:57', '2011-01-15 08:24:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 21, 'ratione', 492101, NULL, 2, '2013-02-13 05:19:00', '1979-10-21 21:25:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 3, 'minima', 912107, NULL, 5, '2020-03-16 18:55:18', '1970-05-25 04:23:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 81, 'ad', 931514, NULL, 4, '1979-12-25 00:30:38', '1971-10-03 19:43:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 6, 'quos', 652269, NULL, 5, '2019-07-11 09:05:31', '1980-02-21 22:00:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 24, 'dignissimos', 212339, NULL, 5, '1973-04-19 16:58:13', '1987-10-04 19:41:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 28, 'cumque', 604817, NULL, 4, '1974-06-12 09:49:12', '2016-04-25 23:17:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 88, 'illum', 328693, NULL, 5, '2003-07-03 09:02:28', '2013-03-28 14:20:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 70, 'in', 43707, NULL, 3, '1997-09-07 18:41:38', '1996-08-16 00:24:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 41, 'quia', 674625, NULL, 1, '1981-08-26 03:37:47', '1981-08-12 21:26:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 92, 'distinctio', 849839, NULL, 4, '2001-11-22 23:07:24', '2011-08-13 01:53:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 58, 'sed', 212008, NULL, 5, '2004-03-11 15:56:43', '1977-05-30 04:22:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 98, 'placeat', 960394, NULL, 2, '2013-10-13 10:53:39', '2020-11-30 04:28:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 99, 'assumenda', 874826, NULL, 5, '2000-09-12 04:13:27', '2006-07-27 15:27:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 12, 'repellendus', 914808, NULL, 5, '1994-07-06 20:58:59', '1997-08-06 16:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 79, 'deleniti', 343385, NULL, 1, '1980-11-03 15:42:12', '1995-08-16 12:44:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 66, 'veritatis', 789067, NULL, 5, '1987-10-01 20:18:56', '1998-01-21 08:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 45, 'occaecati', 175404, NULL, 4, '2013-02-20 08:34:10', '1994-01-07 01:44:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 87, 'autem', 258672, NULL, 2, '2019-01-09 20:43:09', '2014-01-30 00:54:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 31, 'totam', 452010, NULL, 5, '2018-01-14 04:56:06', '1988-02-27 15:23:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 8, 'non', 476564, NULL, 3, '1993-07-05 23:43:17', '1978-11-08 04:29:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 75, 'corrupti', 987566, NULL, 2, '2007-01-19 03:49:29', '1985-08-14 16:48:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 19, 'pariatur', 218801, NULL, 4, '2005-09-24 15:13:10', '2010-10-31 15:10:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 29, 'qui', 106692, NULL, 5, '1988-07-02 17:23:55', '2004-04-18 11:02:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 8, 'ut', 813996, NULL, 4, '1982-09-30 23:51:26', '1977-11-21 02:54:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 98, 'esse', 289425, NULL, 5, '1971-07-21 14:41:36', '1975-04-19 12:22:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 43, 'reiciendis', 233547, NULL, 3, '1982-03-06 07:33:23', '1999-09-23 01:57:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 93, 'laboriosam', 565958, NULL, 2, '2018-01-11 08:23:18', '2018-03-05 05:18:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 87, 'sapiente', 94212, NULL, 5, '1988-01-11 12:35:36', '2010-07-27 17:59:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 39, 'inventore', 137853, NULL, 5, '2003-12-23 22:44:42', '2005-09-28 16:53:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 88, 'qui', 106836, NULL, 1, '2001-05-02 02:49:57', '2005-07-14 11:33:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 9, 'beatae', 744643, NULL, 3, '2016-04-15 18:40:30', '1990-04-25 02:18:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 18, 'eum', 712265, NULL, 3, '1982-01-09 19:14:36', '2012-06-05 04:36:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 21, 'consequuntur', 890542, NULL, 1, '1979-04-04 05:42:20', '2014-03-31 13:24:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 78, 'dolorem', 829041, NULL, 3, '1972-06-24 04:06:50', '2011-01-31 22:46:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (153, 96, 'ducimus', 403094, NULL, 5, '1983-06-27 15:26:17', '2004-05-30 16:58:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (154, 5, 'excepturi', 351933, NULL, 4, '1973-02-04 19:52:24', '1984-08-20 12:50:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (155, 20, 'odit', 98725, NULL, 2, '2008-12-04 12:03:34', '2011-03-23 09:49:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (156, 33, 'soluta', 767819, NULL, 3, '1970-03-13 08:17:49', '1972-04-07 17:15:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (157, 12, 'enim', 943448, NULL, 2, '2010-11-26 04:05:22', '1997-11-09 04:11:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (158, 17, 'numquam', 877504, NULL, 1, '2013-01-11 07:01:24', '1980-11-26 22:48:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (159, 39, 'sint', 770988, NULL, 3, '2012-06-26 04:32:21', '2001-11-04 03:41:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (160, 66, 'esse', 739047, NULL, 2, '1991-08-21 21:55:56', '2013-12-23 20:19:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (161, 99, 'voluptatum', 295295, NULL, 3, '2001-09-16 03:49:11', '2013-12-11 05:40:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (162, 23, 'asperiores', 219013, NULL, 2, '1999-10-06 19:32:04', '1983-03-09 10:54:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (163, 51, 'labore', 464969, NULL, 1, '1997-12-05 09:52:59', '1996-06-01 09:00:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (164, 56, 'aperiam', 979544, NULL, 3, '1971-09-09 02:06:58', '1981-11-11 13:14:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (165, 63, 'perspiciatis', 671336, NULL, 4, '2018-05-26 11:55:17', '1970-12-31 04:21:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (166, 12, 'voluptatem', 263126, NULL, 5, '2009-10-13 04:30:18', '1979-09-13 06:45:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (167, 77, 'numquam', 320494, NULL, 5, '2014-10-16 15:34:18', '2013-11-26 07:37:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (168, 35, 'possimus', 297885, NULL, 4, '1987-07-02 19:41:21', '1983-08-28 14:10:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (169, 74, 'fugiat', 943491, NULL, 2, '1996-07-30 23:14:53', '1991-09-10 20:53:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (170, 43, 'dignissimos', 582502, NULL, 5, '1986-07-22 20:45:33', '1977-09-10 09:49:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (171, 62, 'culpa', 529862, NULL, 4, '1991-02-24 15:34:34', '2008-11-28 15:05:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (172, 42, 'minima', 202885, NULL, 4, '1978-12-24 05:27:05', '2010-07-06 05:51:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (173, 15, 'id', 353582, NULL, 3, '1973-04-11 13:01:20', '2018-04-26 23:19:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (174, 83, 'est', 625175, NULL, 3, '1973-01-19 06:21:09', '2009-06-26 15:10:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (175, 17, 'repellat', 515640, NULL, 3, '1989-12-28 14:20:05', '2001-06-19 03:55:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (176, 85, 'doloribus', 578788, NULL, 1, '2014-11-25 00:26:05', '2013-07-22 02:50:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (177, 1, 'ut', 807146, NULL, 1, '2014-07-06 19:16:47', '2011-11-16 11:08:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (178, 53, 'ipsa', 118726, NULL, 3, '2008-04-08 08:07:21', '1989-01-20 10:45:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (179, 17, 'recusandae', 588921, NULL, 1, '2011-02-16 00:09:15', '1981-03-15 11:53:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (180, 10, 'magnam', 902972, NULL, 4, '2004-05-03 05:15:35', '1996-03-05 11:08:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (181, 80, 'dignissimos', 629837, NULL, 2, '1991-05-08 04:41:43', '1997-07-05 06:26:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (182, 63, 'at', 251613, NULL, 3, '1992-11-28 15:12:03', '1980-09-18 05:03:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (183, 10, 'non', 934020, NULL, 5, '2003-08-27 07:32:54', '2007-04-01 09:38:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (184, 28, 'et', 390061, NULL, 5, '2007-07-10 04:12:14', '2017-10-18 09:39:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (185, 36, 'nam', 593102, NULL, 4, '2016-12-16 01:51:57', '1996-08-14 07:32:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (186, 77, 'cum', 562549, NULL, 5, '1983-06-23 03:42:02', '2009-10-28 20:21:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (187, 45, 'facere', 334781, NULL, 1, '1978-11-14 07:43:55', '2016-06-08 07:58:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (188, 71, 'omnis', 812897, NULL, 3, '1986-09-24 04:23:41', '1980-08-17 16:17:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (189, 77, 'adipisci', 121813, NULL, 3, '2010-06-12 03:19:16', '1998-01-11 23:49:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (190, 12, 'quidem', 127281, NULL, 5, '2008-02-22 03:33:35', '1973-01-14 16:41:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (191, 2, 'quisquam', 756400, NULL, 5, '2017-07-20 02:54:34', '1997-11-13 14:30:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (192, 8, 'nihil', 569368, NULL, 1, '1987-03-04 12:54:31', '1983-08-18 12:59:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (193, 3, 'repellat', 672463, NULL, 4, '1991-06-12 17:25:15', '1973-12-13 16:15:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (194, 53, 'accusamus', 117579, NULL, 1, '2019-10-26 20:03:50', '1982-03-31 12:37:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (195, 68, 'pariatur', 428689, NULL, 4, '1992-11-26 00:00:31', '1985-01-17 04:25:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (196, 99, 'tenetur', 580953, NULL, 3, '2011-08-30 23:51:17', '2012-08-25 20:10:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (197, 83, 'animi', 285436, NULL, 4, '1974-03-21 17:04:47', '2010-10-14 06:33:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (198, 4, 'quo', 47772, NULL, 5, '2013-04-07 00:04:29', '2020-09-09 02:27:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (199, 59, 'et', 851558, NULL, 2, '2002-05-22 15:37:14', '1990-05-22 08:27:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (200, 75, 'assumenda', 156367, NULL, 5, '2002-05-10 20:41:23', '1988-11-16 14:34:46');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '2002-07-29', 193, 'Cum inventore sed molestiae li', 'Constantinfurt', 'India', '1994-08-08 05:21:26', '1986-04-22 15:11:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '2005-07-17', 36, 'Qui officia fugiat minus iste.', 'East Kirstenfurt', 'Malta', '2004-11-26 21:23:58', '2004-12-12 18:44:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1973-03-06', 127, 'Dolorem quo pariatur architect', 'Mannfort', 'Monaco', '2001-01-30 12:57:55', '2015-01-22 10:20:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '2000-04-04', 122, 'Accusamus asperiores labore ip', 'East Monroestad', 'Guinea-Bissau', '2001-11-02 04:56:44', '1979-03-14 21:45:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '2010-07-11', 160, 'Aut culpa fugiat labore sapien', 'Kilbackmouth', 'Paraguay', '1985-05-15 00:32:38', '1999-04-18 09:23:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '1970-12-16', 124, 'Consequatur non rerum debitis ', 'Goodwinchester', 'Antarctica (the territory South of 60 deg S)', '2001-12-03 16:03:49', '2006-10-21 23:49:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1981-02-07', 50, 'Soluta aut et aut qui ad cupid', 'Muellermouth', 'Lesotho', '1985-07-29 03:43:56', '2010-10-12 16:41:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1981-10-12', 86, 'Et dolore molestiae recusandae', 'North Terrillport', 'Japan', '1975-09-23 17:29:37', '2019-12-17 15:09:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '2002-07-17', 105, 'Quaerat aliquam soluta volupta', 'Wymanfurt', 'Guernsey', '1992-07-29 11:42:41', '1987-05-31 07:01:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '2005-07-02', 186, 'Incidunt quis cumque nihil ass', 'Johnstonchester', 'Mauritania', '1981-09-02 01:50:52', '1983-10-01 10:58:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '1985-12-01', 197, 'Autem repellat eveniet officii', 'Gerlachport', 'Montenegro', '1996-02-07 23:49:35', '2020-02-29 09:18:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1999-11-14', 6, 'Voluptate voluptatibus odit er', 'Schusterfurt', 'Jordan', '2014-08-02 10:03:27', '2018-02-04 19:22:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1995-06-30', 168, 'Aut aut ut quo repudiandae ill', 'Lake Tamiatown', 'Niger', '1993-01-26 02:32:29', '1977-06-20 14:17:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '1996-05-02', 6, 'Et vitae consectetur quos. Et ', 'Smithamshire', 'Guinea', '2003-10-01 05:55:37', '2010-05-08 15:28:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '1991-03-10', 22, 'Qui iure nam vel praesentium s', 'East Kristopher', 'Marshall Islands', '2015-03-27 12:41:08', '2008-05-11 04:44:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'm', '1993-04-22', 162, 'Ducimus et corporis nesciunt t', 'Wintheiserburgh', 'Jamaica', '2009-12-01 10:58:51', '2010-12-29 10:01:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '2019-10-30', 105, 'Quas dolores excepturi illum a', 'Lavernville', 'Czech Republic', '1981-10-10 18:46:26', '1975-12-12 18:40:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '2011-12-16', 58, 'Maxime culpa aut minus dicta. ', 'North Daynachester', 'Vietnam', '1990-08-28 11:22:40', '2014-04-25 23:55:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '2016-11-02', 162, 'Sequi consequatur dolores nihi', 'West Shania', 'Antarctica (the territory South of 60 deg S)', '1985-03-23 05:55:25', '1997-06-14 01:45:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '1972-12-20', 45, 'Numquam et aut repudiandae exe', 'East Claudineborough', 'Guinea-Bissau', '2001-03-03 02:27:46', '1995-07-10 02:50:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '2016-10-08', 144, 'Ratione sapiente consequatur d', 'Humbertoside', 'Zambia', '1996-08-02 13:58:43', '1976-12-29 17:51:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '1973-04-06', 34, 'Illum officia repellat non ips', 'McGlynnville', 'Cape Verde', '1988-03-22 13:01:32', '2002-10-10 18:34:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '1993-05-09', 48, 'Sed et quia quam consequatur a', 'North Noble', 'Comoros', '1999-11-07 15:16:29', '2020-03-27 06:34:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '1991-09-20', 46, 'Vel iste sit enim est dicta id', 'New Ruthie', 'Bangladesh', '1983-03-24 23:38:35', '1996-03-15 01:46:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '2002-07-26', 179, 'Ipsa delectus nihil et rerum i', 'Stefanieton', 'Czech Republic', '2015-03-02 05:13:31', '1983-12-14 17:13:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1973-06-28', 182, 'Et in officia officiis volupta', 'Kuvalisfort', 'Nauru', '2009-12-08 15:29:19', '1983-12-05 08:31:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '1984-10-21', 163, 'Quaerat quis aut facere quidem', 'West Darion', 'Korea', '1986-07-26 05:50:12', '1981-01-08 11:07:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '2005-11-15', 59, 'Sequi expedita culpa veniam ea', 'Ricebury', 'United States Minor Outlying Islands', '2004-11-12 20:09:53', '2009-04-10 13:15:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '2008-12-21', 78, 'Doloremque necessitatibus sint', 'West Immanuel', 'Morocco', '2008-02-10 17:22:19', '1994-05-27 20:55:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '2015-05-15', 182, 'Facilis sunt fugit aut blandit', 'Marcview', 'Djibouti', '1999-12-22 18:42:52', '1973-02-08 21:26:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'f', '1991-07-25', 139, 'Eum est quidem rerum sit illo ', 'Lake Marceloton', 'Malawi', '2009-04-28 17:37:02', '2003-07-15 07:33:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '2001-08-10', 71, 'Et adipisci cum labore consequ', 'North Shaniya', 'Ecuador', '1979-12-09 03:01:15', '2009-03-17 10:35:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1993-05-16', 18, 'Molestiae officiis fugiat dese', 'Ondrickaton', 'Canada', '2014-07-18 05:22:54', '2010-05-22 08:42:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '1995-10-21', 66, 'Maiores a modi quis hic vero e', 'Parkerchester', 'Christmas Island', '1980-04-10 04:44:36', '2000-05-10 12:06:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'f', '2012-01-14', 192, 'Nisi nisi perspiciatis aut non', 'East Devante', 'Togo', '1972-05-01 04:28:02', '1983-08-15 22:26:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '1987-10-22', 177, 'Aut omnis harum velit eum reru', 'Mariannehaven', 'Colombia', '1996-04-10 17:46:06', '1979-09-25 14:54:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1978-06-25', 189, 'Dignissimos et consequatur lab', 'Bradlyport', 'Solomon Islands', '2004-07-24 06:28:28', '1973-10-06 03:07:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '2000-01-22', 41, 'Quae laboriosam et aut vero ea', 'Port Tatyanaberg', 'Jamaica', '2008-04-25 04:38:49', '1974-05-01 06:54:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '2020-11-06', 63, 'Neque ad eos amet quasi conseq', 'North Kailyn', 'Kiribati', '2009-12-29 22:22:39', '1986-09-26 03:12:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '2001-04-28', 93, 'Est dolorum perferendis cumque', 'North Marjolaine', 'Ghana', '2003-07-07 19:20:18', '1979-11-25 19:00:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '2007-07-17', 27, 'Et tempora molestiae qui nostr', 'Hattieshire', 'Algeria', '1997-08-25 06:25:49', '1991-03-08 22:55:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '1971-04-08', 60, 'Soluta rerum atque non quas au', 'Langworthtown', 'Sweden', '1995-09-05 11:34:12', '1985-05-22 20:23:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '1989-08-15', 99, 'Quos veritatis accusamus esse ', 'Lake Vicentaville', 'Albania', '2003-10-01 07:05:44', '1995-07-07 06:09:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '1987-12-10', 195, 'Eum aut saepe voluptatem eveni', 'Alfordmouth', 'Anguilla', '2016-11-10 12:26:16', '2003-12-21 18:24:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '1994-04-29', 65, 'Dolore amet maiores sit qui de', 'Port Deontae', 'Micronesia', '1992-04-08 15:45:00', '1985-06-30 19:21:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '2009-10-02', 120, 'Minus voluptas vel dignissimos', 'Rueckerhaven', 'Isle of Man', '1985-02-07 18:16:20', '2021-04-14 19:38:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1998-04-03', 156, 'Est vero et modi alias quo. Pe', 'South Loren', 'Bahrain', '1991-02-09 13:16:59', '2010-03-04 17:59:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '2016-07-24', 170, 'Dolor alias ipsam placeat dolo', 'Jonesfort', 'Nepal', '2004-03-24 10:45:38', '1994-07-04 23:26:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1977-09-04', 178, 'Qui sint et in eveniet. Nobis ', 'Lake Kaylashire', 'Ireland', '1977-05-08 22:44:17', '1993-01-04 21:12:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1994-05-21', 118, 'Quibusdam sed earum cumque vit', 'Breitenbergchester', 'Jordan', '1987-06-16 12:19:09', '1995-07-27 03:02:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1991-10-27', 15, 'Quod temporibus neque accusamu', 'Flossieburgh', 'Benin', '2012-10-29 07:55:11', '2015-02-07 14:46:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2006-04-20', 122, 'Laboriosam voluptas ipsam numq', 'New Rogelio', 'Cote d\'Ivoire', '2005-05-07 03:56:58', '1986-09-25 07:23:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '1988-07-13', 152, 'Qui fuga molestias aut quo rei', 'North Kristinaborough', 'Isle of Man', '1973-11-29 12:43:41', '2011-12-06 17:36:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1984-06-21', 63, 'Quibusdam consequatur ipsam re', 'South Ignatiusfurt', 'Ethiopia', '1992-04-01 16:04:17', '1978-09-25 02:47:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2005-12-22', 168, 'Architecto saepe eos ad deleni', 'Kesslerhaven', 'Benin', '2001-10-29 18:01:27', '2009-01-16 23:25:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '2015-11-28', 130, 'Fugiat voluptatibus consectetu', 'Cobystad', 'Nicaragua', '1975-04-15 20:58:05', '2000-08-18 09:42:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'f', '2020-10-01', 44, 'Officiis ea et qui nostrum. It', 'Port Vedaville', 'Liberia', '2019-07-13 08:41:35', '1997-01-25 13:06:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '1983-08-09', 130, 'Inventore illo similique volup', 'Vonchester', 'Senegal', '1982-05-28 07:52:19', '1990-10-21 16:39:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '1996-10-22', 188, 'Id doloremque natus totam enim', 'Yvonneburgh', 'Jamaica', '1979-03-25 17:43:24', '2010-04-08 21:21:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '1984-11-25', 122, 'Ut et laudantium voluptate adi', 'East Hallieport', 'Cocos (Keeling) Islands', '2013-10-08 05:02:17', '1997-08-08 16:06:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1971-06-02', 112, 'Nisi esse voluptatibus molliti', 'New Tessieburgh', 'Czech Republic', '1978-04-22 09:40:29', '1984-09-30 21:58:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '1988-11-23', 127, 'Ut eaque vel porro quod volupt', 'Dejonville', 'Rwanda', '2002-02-12 16:50:08', '1970-03-08 03:19:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'f', '2014-03-31', 192, 'Quis laboriosam exercitationem', 'Hermannview', 'Reunion', '1980-04-11 12:46:45', '2017-12-02 12:30:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '2007-12-26', 130, 'Consequatur nihil ut voluptate', 'Abagailside', 'Uganda', '1991-01-17 11:22:10', '2013-08-25 02:07:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1995-08-08', 193, 'Et aut voluptatum nihil repell', 'Abshirestad', 'Macedonia', '2006-02-06 14:45:04', '1981-09-12 21:04:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '2018-04-28', 184, 'Ipsum harum impedit deserunt a', 'Mertzshire', 'Northern Mariana Islands', '1974-09-11 07:26:53', '2005-12-26 03:19:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '1995-09-26', 106, 'Eos quidem et voluptas labore ', 'West Blaze', 'Western Sahara', '2009-09-06 10:27:44', '2014-03-07 02:35:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2011-03-28', 181, 'Nemo non ut et voluptas modi n', 'New Moseschester', 'France', '1972-05-13 07:41:11', '2009-08-04 21:21:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '1998-05-19', 25, 'Dicta hic non qui consequatur ', 'Abdulmouth', 'French Southern Territories', '1983-07-03 18:54:49', '2011-09-26 15:24:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '2014-11-14', 168, 'Odio architecto voluptatem par', 'West Jannie', 'Cameroon', '2007-06-18 00:45:57', '2018-06-19 12:45:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '1989-06-26', 74, 'Culpa nihil dolore natus amet ', 'East Katelynchester', 'Latvia', '2007-07-12 09:02:28', '1974-09-27 01:26:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '2008-08-14', 51, 'Sit rerum vitae nisi et est ma', 'West Lorineport', 'Bouvet Island (Bouvetoya)', '2017-01-03 13:07:15', '1976-04-25 08:35:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '1971-07-12', 27, 'Excepturi numquam dicta at qui', 'New Ambrose', 'Saint Helena', '1988-05-22 12:55:20', '2005-01-27 16:30:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '1980-10-25', 172, 'Eum unde delectus dolorem solu', 'Shanelleside', 'Angola', '1970-08-05 15:15:41', '2008-05-01 15:32:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1985-01-30', 45, 'Laborum unde nam ipsum et ab. ', 'O\'Haraburgh', 'Monaco', '1983-10-29 08:13:21', '1992-05-21 04:31:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '1976-01-15', 92, 'Ducimus quia cumque quod tempo', 'East Elias', 'Netherlands Antilles', '1995-04-22 19:14:25', '2007-12-03 04:12:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '1994-01-22', 92, 'Repellendus impedit mollitia p', 'Deebury', 'Pakistan', '1985-12-31 23:46:34', '1997-02-05 05:17:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '2000-05-14', 1, 'Repudiandae tempora iusto fugi', 'South Henderson', 'New Caledonia', '2000-06-10 08:54:35', '1997-03-28 10:12:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '2015-10-07', 62, 'Non quas perferendis explicabo', 'Claudiashire', 'Saint Lucia', '2016-02-02 14:24:08', '2008-08-29 20:12:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '1986-05-07', 70, 'Et quos et dolor harum. Amet m', 'Grahamport', 'Lebanon', '1982-10-21 15:59:02', '2017-11-22 18:57:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1972-03-24', 118, 'Eos eum expedita aut perspicia', 'Norrisberg', 'Heard Island and McDonald Islands', '1999-07-18 00:17:02', '1972-01-28 22:33:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1993-05-01', 76, 'Libero aut est tempore ut quis', 'North Magdalenmouth', 'Turkey', '1996-01-21 17:24:53', '2004-06-02 07:15:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1980-02-18', 191, 'Dolores esse accusantium fugit', 'Minnieshire', 'Chile', '1975-05-27 01:52:13', '2008-07-12 08:00:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1976-10-16', 70, 'Consequuntur nam et eum est di', 'Port Maximillia', 'Peru', '1994-05-16 12:37:08', '1990-04-18 01:29:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '1988-02-20', 138, 'Deleniti facilis et sunt ipsam', 'New Daltonfurt', 'Senegal', '2000-02-29 19:50:20', '1993-02-20 16:07:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '2016-11-17', 158, 'Delectus maiores repellat non ', 'Runteport', 'Cape Verde', '2007-05-09 13:31:19', '2018-02-06 15:22:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '2011-07-19', 199, 'Sunt omnis est modi ipsa ut po', 'Cadechester', 'United States Minor Outlying Islands', '2010-04-06 02:02:17', '1971-06-12 05:32:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '2015-08-23', 182, 'Quis assumenda provident quis ', 'South Eden', 'New Caledonia', '2006-03-13 23:56:20', '1989-11-16 22:17:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '2020-09-19', 88, 'Esse natus hic velit quia libe', 'West Jonasland', 'Sao Tome and Principe', '2018-03-05 18:12:06', '1996-04-09 10:33:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1982-12-02', 187, 'Earum tempora consequatur cupi', 'Tracyview', 'Netherlands Antilles', '1993-07-06 05:39:05', '1997-04-18 17:30:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1982-09-27', 103, 'Facere ipsa natus numquam eos ', 'Maverickstad', 'Cote d\'Ivoire', '2002-02-26 09:23:48', '2002-11-15 01:03:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '2009-10-08', 200, 'Maxime ut qui quasi odio conse', 'Leifland', 'Zambia', '2020-04-17 10:26:04', '2000-07-05 03:15:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '1972-09-05', 114, 'Voluptatem dolor tenetur possi', 'Simonisbury', 'Greenland', '1983-05-17 20:27:29', '1994-10-25 08:33:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '2005-02-16', 94, 'Exercitationem velit dolores e', 'South Vincenzafort', 'Turks and Caicos Islands', '2008-04-06 23:36:43', '1984-11-02 05:45:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '2001-11-29', 129, 'Illum nihil commodi quae molli', 'Lake Violette', 'Holy See (Vatican City State)', '1985-06-29 13:11:49', '1982-07-22 05:15:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'm', '1998-10-24', 106, 'Qui iste est sunt voluptas ali', 'Lake Frederiquetown', 'Cayman Islands', '1974-08-25 16:55:52', '1997-01-01 11:39:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '2005-07-16', 77, 'Nemo blanditiis et reiciendis ', 'Ritaburgh', 'Mauritius', '1999-08-30 14:43:19', '1977-06-07 15:44:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '1993-03-07', 35, 'Nulla consequuntur illo adipis', 'South Aaronhaven', 'Northern Mariana Islands', '1992-12-17 17:37:47', '1990-11-16 00:57:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '1995-09-05', 87, 'Harum totam occaecati qui. Ita', 'West Eve', 'Greece', '2020-12-15 15:13:41', '2000-07-14 06:07:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '1976-02-06', 101, 'Dolore et debitis quidem conse', 'South Mikelbury', 'Myanmar', '1983-03-05 11:19:31', '1990-08-13 13:52:08');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил сообщение',
  `media_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на прикреплённое медиа',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст поста',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Посты пользователей';

INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (1, 24, 25, 'Et saepe quia quisquam. Quas non fugiat reprehenderit possimus fugiat vel beatae. Saepe non ut libero aut provident. Eum eveniet aut voluptatibus laboriosam. Sit dicta in qui autem.', '2021-02-07 17:45:41', '1995-10-12 13:56:27');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (2, 86, 114, 'Ut aut repellendus accusantium unde quod dolorum qui. Delectus adipisci et eos dolorum.', '1990-11-09 03:56:37', '1987-02-03 16:46:47');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (3, 35, 144, 'Molestias quas dolores nemo dolorum temporibus cumque. Dolorum molestiae nostrum ea cumque repellat impedit possimus. Quos a sint omnis magnam.', '2015-04-10 06:10:42', '1983-01-26 03:24:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (4, 54, 165, 'Dolores sit occaecati et ea dignissimos. Facere est similique est et omnis quas. Ut enim accusamus voluptatem autem delectus velit et.', '2000-10-02 15:28:46', '2012-11-07 07:52:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (5, 81, 72, 'Facilis omnis sit nisi repellendus. Qui excepturi aut saepe iste distinctio et. Iure fugiat laborum alias qui accusamus. Quam quia sed velit.', '2015-03-29 00:03:03', '2011-12-07 16:24:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (6, 30, 32, 'Dolorem deserunt nihil dolor molestiae. Repellendus exercitationem et omnis est dicta illo. Impedit eligendi reprehenderit quisquam alias magni et dolor itaque. Voluptas non qui officiis. Consequatur occaecati repellat quaerat aut.', '1980-11-02 05:35:25', '2011-06-05 08:28:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (7, 14, 110, 'Rerum eveniet perferendis reiciendis nobis. Est accusamus minima consectetur vel non quam provident. Officiis nesciunt dolor suscipit non molestiae ea. Illo nesciunt voluptatem et quam tenetur libero exercitationem.', '1984-12-20 19:15:55', '2020-04-14 18:27:46');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (8, 38, 89, 'Dolores est dolor dicta consectetur rerum. Quibusdam odio explicabo id sed. Quidem dolorum placeat quis pariatur. Eum quia quo molestias.', '1999-01-10 11:02:38', '2000-04-23 19:57:06');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (9, 56, 109, 'Aut dolorem maiores velit. Atque et consequuntur aliquid labore totam provident nihil. Ea omnis laboriosam quis nulla fuga minima.', '1996-12-23 08:36:20', '1999-11-22 18:42:57');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (10, 17, 42, 'Ad eaque rem distinctio in quisquam et et. Id earum ipsa eos assumenda maxime ipsam tenetur. Delectus quidem enim eos sit nostrum sit. Error sunt officiis ea et harum quas.', '2013-03-22 16:07:08', '1971-04-13 03:42:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (11, 27, 157, 'In impedit non ut voluptatem. Minima sint saepe architecto aut officiis. Asperiores enim dolorem nisi ducimus sed quia sint.', '2013-07-20 00:22:11', '1977-12-10 03:59:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (12, 28, 9, 'Rerum qui ut ipsum laboriosam ratione. Architecto dolorem sequi est cupiditate fuga est. Repellat sunt eos et maxime eos voluptas qui.', '1973-10-28 00:08:33', '2016-11-24 15:03:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (13, 47, 198, 'Qui debitis modi ullam voluptates atque quae rem voluptatibus. Molestias exercitationem culpa sit sequi distinctio soluta commodi. Voluptas nulla sed ullam perspiciatis. Assumenda voluptas veniam doloribus sint.', '2002-10-23 23:12:12', '1994-09-23 13:36:06');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (14, 97, 140, 'Iure dignissimos culpa suscipit laborum eveniet occaecati. Quo omnis ad rerum labore facere. Excepturi ut vel dolore aliquam temporibus soluta aut. Ut amet sapiente harum officia. Excepturi occaecati repellat non non dolor.', '2001-03-10 02:42:48', '1985-06-12 20:42:02');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (15, 32, 37, 'Delectus maiores ut praesentium aliquid odio cum ducimus. Natus ratione consequatur quia non a ex. Vero sed rerum ut eius molestias aliquam.', '2014-01-28 10:46:44', '1973-07-28 23:23:47');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (16, 50, 112, 'Corrupti optio architecto dolores necessitatibus consequatur incidunt distinctio eligendi. Molestiae quaerat ut nobis molestiae alias. Autem necessitatibus aperiam quos voluptatibus aperiam qui a. Quia occaecati soluta in iure eligendi.', '2008-12-20 04:42:35', '2006-07-11 13:51:42');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (17, 31, 70, 'Error soluta soluta sit enim necessitatibus recusandae cum. Qui esse quae eveniet est sed qui. Aut sit eaque distinctio. In velit iure iusto quam accusantium.', '2002-12-21 03:48:19', '1998-07-25 22:26:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (18, 13, 131, 'Molestiae sit sunt nihil reprehenderit. Molestiae perspiciatis deleniti ut hic. Animi ab repellat ducimus et.', '1991-04-06 09:12:52', '1985-07-22 00:29:31');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (19, 7, 133, 'Vitae et ad omnis qui facere ipsam. Sit dolor architecto voluptas. Reprehenderit ipsam voluptas in temporibus deserunt veritatis fugit. Autem totam aut officiis id aut quasi numquam ea.', '1981-01-28 12:47:01', '1986-07-11 13:58:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (20, 48, 174, 'Iste occaecati voluptatem ullam iure. Qui in sed aperiam facilis et dolores molestiae. Officiis eaque saepe itaque quia delectus repudiandae. A debitis reprehenderit consequatur commodi ut ea.', '1999-12-01 14:10:08', '2019-01-10 12:09:12');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (21, 3, 155, 'Mollitia eos cupiditate et ullam mollitia. Eius repellendus ipsa illum nisi unde aperiam voluptatem.', '2016-04-27 05:50:47', '1994-05-13 14:19:35');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (22, 3, 32, 'Ut et est non omnis. Aut accusantium non vel commodi magnam cumque reiciendis. Et nemo tempore aperiam maiores. Est placeat et error non. Voluptatum provident blanditiis beatae et.', '2017-05-07 10:13:46', '2010-12-27 11:21:29');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (23, 32, 82, 'Recusandae quasi qui molestiae soluta. Necessitatibus ut necessitatibus repellat et similique dolorem. Officiis voluptas ut ab est fuga quisquam cupiditate.', '2016-05-30 12:11:28', '1997-04-23 01:33:36');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (24, 60, 175, 'Harum quo architecto atque aut et eos. Quis tenetur libero officia voluptatem. In error adipisci qui eos iusto et iste. Laboriosam quidem sed vitae perferendis.', '2019-06-12 22:38:13', '2003-04-06 03:36:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (25, 96, 153, 'Consequatur fugit sunt minus molestiae. Odit nulla ullam inventore corrupti fuga veritatis consequatur. Laborum voluptate quasi et excepturi eveniet et. Illum assumenda ut quia officiis ut.', '2005-09-29 19:08:56', '1972-08-26 08:33:28');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (26, 9, 44, 'A eos similique laboriosam perspiciatis necessitatibus porro est. Dolores culpa consequuntur aliquam iure sit omnis quos. Non in mollitia et aut maxime pariatur. Placeat recusandae at eius qui nostrum.', '1980-06-19 13:26:12', '1988-08-06 09:12:45');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (27, 55, 71, 'Accusamus in aliquid repellendus dolores aut quos. Placeat iusto temporibus sunt ut rerum. Ipsam magnam minima voluptatem minus. Et harum atque voluptatum et rerum.', '1972-12-18 00:24:13', '2012-01-17 12:31:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (28, 26, 1, 'Quaerat sed non voluptate quisquam aliquam sunt. Consectetur porro recusandae nostrum laudantium libero est inventore. Et officiis voluptas repellendus placeat est ut quia. Quia nemo velit a aut sapiente.', '1988-06-05 01:40:37', '1986-01-09 04:41:20');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (29, 35, 45, 'Quia suscipit voluptatem sapiente suscipit. Ex adipisci qui totam consectetur quia molestiae omnis. Ducimus unde ut sed labore ut.', '2005-07-08 03:28:24', '1980-09-07 15:05:56');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (30, 71, 133, 'Qui aut dolore voluptatem alias. Qui magni necessitatibus blanditiis nesciunt. Qui veniam nisi illum omnis ducimus. Quo accusamus ab autem laborum consequatur doloremque necessitatibus ut. Voluptatem quia fugit sit ut sapiente debitis aut.', '1978-10-04 23:53:10', '2003-11-04 04:08:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (31, 41, 40, 'Esse ut cumque sed hic aut et error. Illo qui non reprehenderit nobis vero earum illum. Nihil est et corporis esse eveniet odio quasi rem. Eligendi exercitationem quae magni soluta quibusdam perspiciatis ratione.', '1991-12-25 20:39:08', '2011-09-30 17:08:36');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (32, 22, 143, 'Nesciunt nihil ratione consequatur recusandae. Provident officia voluptatem eligendi exercitationem. Quia sit nihil consequuntur. Soluta et dolorem magnam officia consequatur inventore.', '2015-04-15 16:39:49', '1973-12-09 04:26:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (33, 55, 69, 'Hic soluta et consequatur et quo possimus et ut. Tenetur in ullam accusamus nihil commodi nihil. Sequi et recusandae illum porro et suscipit totam. Odit suscipit temporibus dignissimos vero et tenetur.', '1984-06-15 19:23:38', '2009-05-19 15:40:21');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (34, 37, 122, 'Distinctio ipsa et aut deleniti velit voluptatum praesentium veritatis. Voluptatem amet sit alias totam facilis tempore voluptatibus nisi. Nam repudiandae commodi dignissimos.', '1983-07-11 00:27:11', '1997-12-20 21:19:18');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (35, 1, 168, 'Neque sint quas iusto nihil ut at. Quo earum harum ullam eum voluptatem. Non facere iusto voluptas qui et. Incidunt ullam facilis repellat consequuntur eligendi.', '1975-08-12 10:53:38', '1987-03-03 06:43:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (36, 48, 6, 'Perspiciatis molestias distinctio ex voluptatem repellendus eos omnis. Non aperiam aut molestiae qui. Possimus dolores voluptas aut. Et et voluptatem voluptatem enim.', '2006-06-10 05:13:45', '1995-03-23 16:03:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (37, 62, 101, 'Culpa deleniti expedita aut est deleniti aut nisi. Iusto aspernatur repellendus veniam et qui. Sint optio debitis eligendi iste.', '1994-01-19 16:48:36', '1985-12-06 02:36:22');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (38, 19, 186, 'Repudiandae velit odit aut sapiente qui amet. Minima similique iste dignissimos ipsam ut minima dolorem.', '2005-01-18 00:36:20', '2016-10-13 00:56:39');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (39, 91, 157, 'Quibusdam sed iste aspernatur mollitia assumenda quo. Dolor placeat quia ullam ut alias sapiente ducimus iure. Voluptatem dolor quis in quo qui est dignissimos. Quos iure ea et laborum. Qui a ut sequi excepturi reprehenderit illum delectus.', '2021-02-06 11:23:19', '1994-11-30 19:43:02');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (40, 81, 172, 'Sunt rem quas aut totam rerum voluptatem. Eum id et sint in provident. Quia ut consequuntur rerum recusandae nobis. Velit et corporis et consequuntur laboriosam facere.', '2013-03-28 21:07:51', '1979-09-11 04:41:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (41, 55, 177, 'Eum voluptatem incidunt ab veniam voluptatem ut earum. Et velit sed harum officiis iste nihil nisi. Quam officiis voluptas est ut qui optio. Sed praesentium odio nobis est ut dignissimos numquam.', '2014-05-24 18:39:18', '1984-08-23 06:49:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (42, 8, 17, 'Modi qui quia consequatur nihil eum maxime quos adipisci. Neque dolores similique odit voluptatum veritatis rerum. Eaque dolorum corrupti omnis omnis. Tempore optio enim incidunt laboriosam rerum qui perspiciatis.', '1982-11-26 02:51:07', '2019-02-23 18:35:16');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (43, 24, 67, 'Omnis consequatur dolores illo quaerat voluptatem sunt et. Rerum omnis nemo est magnam deleniti. Ut aliquid vel voluptatem nulla natus. Et sit officiis dolor rerum.', '2001-12-18 19:54:16', '1980-02-07 04:22:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (44, 9, 117, 'Porro ut eum nostrum est maiores autem. Laborum non molestiae dolorum eligendi magni. Molestias laboriosam eos nemo voluptatibus dignissimos aut. Quis aspernatur consectetur ullam blanditiis aut. Adipisci laborum exercitationem ut.', '1980-05-05 16:35:57', '2017-08-29 08:19:15');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (45, 56, 158, 'Deserunt rerum temporibus doloremque alias dolorum quod. Alias voluptate accusantium veniam quidem ea. Itaque et voluptatem et saepe dolorem. Laborum ut non aut reiciendis totam consequatur consectetur.', '2013-12-21 08:52:14', '2006-11-16 03:00:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (46, 25, 194, 'Eligendi aut nisi sint odit modi. Assumenda et sed possimus doloremque. Vel nulla tempore nobis sint sed. Atque qui dolor tempora. Nisi odio eligendi vero ut cum.', '2011-12-02 15:52:45', '2009-03-07 14:30:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (47, 99, 93, 'Quibusdam labore omnis temporibus animi unde in ab. Facere ut ab delectus architecto veniam ut et. Sit quo perferendis non sint reiciendis eveniet. Adipisci unde eveniet illo sequi aut quo. Dolor ut reprehenderit a quae.', '1981-06-17 05:41:39', '2006-02-20 21:12:36');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (48, 69, 107, 'Dicta laborum impedit dolores. Ipsam atque sapiente beatae exercitationem. Aliquid accusantium qui modi et. Est magnam et facilis laboriosam veritatis assumenda.', '1996-04-27 19:33:21', '2016-12-31 10:51:57');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (49, 81, 10, 'Dolore nesciunt repudiandae ab autem. Ab aut et non est. In maxime quaerat impedit veritatis aut facere incidunt. Ratione et quas provident reprehenderit numquam temporibus harum.', '1985-10-24 20:19:26', '1999-04-25 14:36:18');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (50, 14, 163, 'Libero autem sapiente temporibus nostrum architecto est. Distinctio maiores aliquid eum voluptatibus aut omnis amet. Quo alias temporibus laborum maiores aspernatur ex. Et ut sapiente quaerat consequatur.', '2010-01-31 15:10:34', '1998-02-16 00:51:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (51, 89, 123, 'Quisquam eum cumque et temporibus dolore repellendus tenetur. Sint voluptatum non aut neque. Ullam quibusdam ut autem ex ex et nulla et.', '2011-06-13 01:12:22', '1970-02-03 09:06:19');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (52, 84, 100, 'Libero error eaque nihil velit sint ut explicabo magnam. Ut fugiat rem assumenda animi in aut alias. Voluptas et deleniti cumque autem occaecati ut soluta.', '1992-02-01 04:19:47', '1972-12-10 15:16:57');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (53, 12, 5, 'Rerum facilis tempora et provident qui nemo excepturi. Ex accusamus ex quae dolore fugiat eius sit quis.', '1988-04-17 20:54:13', '1992-09-01 22:55:20');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (54, 43, 5, 'Earum rerum minus commodi voluptas. Est natus tempora odio doloremque earum harum. Est reprehenderit nihil quo sed ut voluptas non odit. Delectus quo rerum ea velit et doloribus sit.', '1989-01-22 03:32:33', '2003-05-04 18:30:42');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (55, 81, 47, 'Provident voluptatem dolores voluptates quae iure maiores. Delectus quibusdam fugit dolores. Sint enim omnis quos porro dicta distinctio possimus.', '1987-10-29 00:42:15', '2007-07-01 09:49:37');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (56, 89, 70, 'Odio quae qui dolor quisquam at. Consequatur tenetur non voluptatem voluptatem ab quia nemo. Fugit est sit iure nobis ducimus possimus provident. Est est consequatur rerum praesentium mollitia et.', '1980-05-05 06:37:50', '1991-09-01 08:27:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (57, 12, 192, 'Sequi iste magnam repellendus qui et. Eum est molestiae maxime id. Et deserunt neque ad ipsum quia beatae voluptatibus.', '2000-03-27 23:17:13', '2005-04-01 01:46:42');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (58, 43, 71, 'Tempore facere quis omnis dicta explicabo aut. Occaecati dolorem eaque nulla pariatur quia vel. Et et quasi et. Magnam error quis ut quidem adipisci voluptatem voluptatem et.', '1988-05-31 18:43:32', '1981-04-16 12:35:35');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (59, 30, 104, 'Voluptatum architecto dolores nihil voluptatibus culpa voluptatem non. Inventore aliquid voluptatem sunt labore perspiciatis odit provident. Ipsam aspernatur saepe consequatur enim et culpa.', '1979-08-09 10:54:13', '1984-09-19 21:03:29');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (60, 94, 171, 'Et necessitatibus molestiae aperiam debitis omnis debitis quis. Eveniet ea libero quod quia at quis. Voluptatem dolores vel nemo quia. Nulla eos architecto illum hic ab quae iste cumque.', '1985-12-09 02:23:09', '1988-01-22 13:31:33');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (61, 31, 37, 'Eos repellat odit quod non qui nihil voluptas. Dolorem sequi sunt itaque quis delectus. Totam qui iure eum qui et.', '2019-10-03 06:16:58', '1980-07-25 00:09:16');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (62, 82, 59, 'Exercitationem quia ipsa vel et ut quo. Quis odio quia et rerum. Voluptatibus odio voluptate ut animi sit.', '1972-01-17 02:48:44', '1984-09-01 05:02:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (63, 65, 100, 'Exercitationem harum in sapiente quo et animi. Similique eum tempore ullam magnam. Quis eum est quisquam doloribus. Quia nobis pariatur ea non.', '2016-12-02 20:15:31', '2012-03-22 09:13:47');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (64, 83, 90, 'Perspiciatis at explicabo iure quaerat voluptatem et facilis. Ut quia quod laboriosam laboriosam cumque rerum.', '2020-02-17 00:17:24', '1989-11-20 18:27:02');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (65, 55, 194, 'Dolor aut repellendus aspernatur vel officia in. Culpa sit qui id omnis rerum. Adipisci qui sit quisquam nostrum ab voluptatem ut necessitatibus. Qui voluptate necessitatibus commodi.', '2009-05-16 22:25:35', '2008-03-31 20:26:13');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (66, 26, 87, 'Neque est modi et. Vel non est quos eos. Officia quos facilis dolor ut tempore distinctio.', '2004-12-19 23:24:26', '2005-01-28 18:39:28');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (67, 58, 19, 'Est sed odio minima quo. Repudiandae optio delectus similique esse quo. Sint id consequatur sunt id id veniam.', '1988-05-09 01:58:25', '1985-06-08 22:30:56');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (68, 94, 139, 'Amet amet sint adipisci excepturi eum. Est rem deleniti sed et. Voluptate veniam soluta aut occaecati nihil labore neque. Est itaque voluptatem veritatis iure corrupti consequatur repellendus.', '1995-10-05 18:37:03', '2018-01-11 21:51:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (69, 12, 73, 'Temporibus sed magnam eius ut. Iure repudiandae unde suscipit sit eos doloremque. Et architecto atque cumque veniam consequatur explicabo id.', '1994-04-11 14:20:03', '2010-06-04 13:29:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (70, 72, 184, 'Ducimus alias quae dolores dicta in harum tempora. Ullam sit quaerat eos ut aut qui ullam. Qui sunt distinctio nam est nihil est sed.', '2010-12-11 17:45:53', '2003-03-04 10:41:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (71, 60, 120, 'Praesentium rerum illo omnis sed assumenda. Perspiciatis dolor sit molestias deserunt. Aut mollitia explicabo voluptas temporibus repudiandae. Saepe repellat excepturi laudantium expedita ea quia distinctio.', '1981-03-07 09:08:50', '1988-09-29 07:11:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (72, 27, 142, 'Necessitatibus iusto quia possimus magnam minus. Nobis ullam possimus dolores. Fugiat qui ut libero velit tempore. Repellendus quia hic voluptatum.', '1978-12-31 23:12:15', '1992-07-12 03:47:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (73, 56, 139, 'Nostrum quia maiores excepturi voluptatem. Quidem quod magnam voluptatem id. Odio dolore quae voluptas illum suscipit error.', '2015-03-24 02:19:12', '1979-03-03 18:48:12');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (74, 7, 169, 'Aut adipisci occaecati deleniti est. Sunt enim magni error fuga possimus pariatur corporis sit. Repudiandae similique dolor est nobis iure.', '1981-12-17 00:36:18', '2007-06-09 09:34:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (75, 22, 200, 'Ad rerum ut dicta. Mollitia rerum consequatur culpa ipsum libero sit sit. Mollitia fuga eius ut sunt aut porro.', '1985-07-14 23:42:41', '1978-10-06 15:36:54');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (76, 70, 104, 'Ab esse est suscipit consequatur. Error aut enim ut reiciendis veniam iure fugit non. Dicta perspiciatis vel suscipit praesentium.', '1977-10-07 10:45:31', '1976-02-01 17:09:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (77, 18, 103, 'A reiciendis sed ratione dolor neque. Aut enim nam ex numquam velit dolor est quaerat. Laudantium velit autem saepe tenetur.', '2016-05-12 16:56:04', '2018-10-16 03:52:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (78, 82, 165, 'Totam id a non quaerat laboriosam. Dolor molestias eum voluptatibus officiis ullam animi dolor. Modi quibusdam sit dolores ab deleniti ut explicabo.', '1986-10-16 06:51:18', '2012-12-22 16:52:48');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (79, 2, 128, 'Temporibus quasi qui dolores ab veniam qui magnam commodi. Repellendus consectetur est quos occaecati minus omnis veritatis mollitia. Fugit recusandae est corporis consequuntur labore.', '2011-09-12 10:29:50', '2006-06-25 01:54:15');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (80, 27, 112, 'Et architecto quae adipisci omnis aut maxime. Quis maiores voluptas eos quisquam ad molestiae fuga.', '1999-03-02 04:46:44', '1973-03-11 01:18:33');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (81, 61, 105, 'Doloremque dolorum nisi officia autem deserunt nisi. Aperiam hic voluptas voluptatibus blanditiis vero asperiores molestiae. Necessitatibus excepturi ea consequatur id inventore.', '2010-09-22 12:31:02', '2016-07-01 23:24:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (82, 100, 37, 'Neque fuga et at commodi iste. Qui quod veritatis suscipit nihil molestias et. Rem repudiandae eum nulla est repellat. Reprehenderit accusamus rerum culpa non a sapiente.', '2016-03-24 04:05:05', '2009-02-24 21:10:09');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (83, 62, 186, 'Vel et id eos neque. Eum rerum officia voluptas eum voluptatem totam non. Voluptas ut neque sed qui ex occaecati. Veniam ad ullam aspernatur eum ipsam.', '1979-05-04 15:49:12', '1995-03-21 15:36:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (84, 88, 147, 'Et vitae quidem blanditiis tenetur. Libero officia aut ducimus facere porro. Quo nostrum totam accusamus ut.', '2004-05-04 06:53:59', '1970-03-19 04:31:16');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (85, 29, 118, 'Accusantium omnis illum dolorum eos. Qui in nobis est nemo est in excepturi. Vitae nemo natus dignissimos sapiente. Ducimus odio error qui cumque.', '1970-04-26 14:23:53', '2015-10-11 04:05:17');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (86, 66, 177, 'Deserunt nihil neque sed sit est eligendi. Temporibus quibusdam in rerum rerum repudiandae ad possimus. Maiores sit adipisci non enim alias harum exercitationem. Adipisci et cum quam rerum quia animi eos omnis.', '1988-10-29 19:18:45', '2004-01-15 08:55:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (87, 19, 184, 'Amet eligendi autem sint. Voluptas eum saepe eos similique dicta corrupti pariatur error. Aut autem in sequi quisquam.', '1992-07-08 05:21:29', '2004-11-30 23:59:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (88, 60, 148, 'Nihil error et consequatur vel. Consequatur voluptates inventore eius. Minus aperiam et odit est excepturi at. Perspiciatis odit dolor atque ut neque neque nulla non.', '1972-05-01 01:04:09', '2007-03-20 18:11:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (89, 62, 132, 'Non enim voluptatem est nisi id. Qui pariatur neque vitae nisi temporibus. Totam voluptatem sed nesciunt a nam quia quas nostrum. Omnis fugit voluptas similique autem in qui.', '1986-05-23 05:05:15', '1987-12-31 20:43:21');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (90, 58, 165, 'Voluptatem debitis provident voluptates quia. Ut sapiente et ut vitae facilis tempora odit. Eum at non ut at et nulla.', '2004-11-11 13:40:56', '2019-10-29 20:41:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (91, 66, 55, 'Pariatur non tenetur placeat dolorem et aliquam. Nemo debitis voluptatem odio sint non. Sit consequatur sit soluta incidunt voluptates. Deserunt occaecati rem voluptatem a.', '2016-04-30 07:24:05', '1982-02-18 20:16:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (92, 35, 168, 'Numquam est aliquam possimus est est. Fugit est nisi dolor necessitatibus.', '1973-11-22 08:05:06', '1991-04-28 22:04:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (93, 79, 31, 'Magnam ab nam et nemo est velit rerum. Maxime sequi nisi doloremque dolores dolorum aut nemo. Fugiat qui deserunt dolore excepturi sequi voluptatum itaque aperiam. Commodi est corrupti ut nostrum nesciunt quis.', '1992-08-23 11:42:52', '2017-11-06 01:50:36');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (94, 66, 160, 'Nam aut accusantium at quaerat aut consequatur quaerat. Praesentium facilis illo voluptate qui numquam. Voluptatibus incidunt placeat doloremque debitis fugit aut illum. Omnis tempora consequatur dignissimos laudantium consectetur.', '2017-09-10 02:18:08', '1998-11-28 00:16:31');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (95, 80, 185, 'Sit saepe ducimus ut. Eveniet ab eum repellat. Cumque hic explicabo et ea.', '1985-06-26 05:13:51', '1985-10-01 15:54:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (96, 36, 80, 'Sed voluptas hic provident autem esse dolorum. Iure vitae et non quis. Eos officiis eos numquam pariatur accusantium harum. Cumque qui deserunt quaerat tempore similique et.', '2016-07-18 12:21:12', '2013-02-04 08:45:14');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (97, 45, 70, 'Reiciendis totam rerum voluptas sapiente hic. Quas eum sed quibusdam sit qui praesentium deserunt. Aspernatur esse et quod qui perferendis sit illo qui. Adipisci incidunt quos animi tenetur delectus iusto. Ea officiis ex maiores quod sit.', '1984-04-22 00:46:05', '1999-02-28 09:37:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (98, 58, 13, 'Et consectetur commodi voluptatem debitis perspiciatis. Vel quos in quia dolores.', '1996-03-18 07:55:32', '2015-10-08 08:52:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (99, 28, 91, 'Iusto suscipit totam qui sed voluptates et qui. Velit et voluptatibus non expedita aut officiis inventore. Numquam eum rerum voluptatem dicta officia laudantium.', '1975-04-12 05:59:17', '2011-02-27 12:27:24');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (100, 80, 113, 'Enim ad pariatur hic. Aperiam eius nulla assumenda veniam nobis quibusdam. Odio animi quis esse.', '2005-06-28 17:25:58', '2004-06-28 09:33:52');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (101, 4, 90, 'Ut assumenda eligendi explicabo eos neque. Voluptatem vero fugit quisquam ad ex alias et. Vel cum qui temporibus omnis aperiam.', '1975-08-21 19:48:36', '2016-03-05 18:47:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (102, 45, 45, 'Dolor fuga et nihil voluptas recusandae perspiciatis omnis repudiandae. Rem deleniti rerum qui sunt ut nihil excepturi ipsa. Quam assumenda est ut exercitationem expedita ut harum a. Necessitatibus ratione tempora nulla iure repellendus sequi eos.', '1983-01-06 20:29:00', '1979-06-28 06:38:21');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (103, 37, 9, 'Ipsa animi consequuntur eaque nostrum id voluptatum minus. Nam minima quo aut voluptatem. Natus optio aut voluptatibus amet non cupiditate rerum. Debitis quia reprehenderit temporibus id expedita.', '2010-10-13 06:49:47', '2002-05-25 22:04:24');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (104, 96, 196, 'Suscipit molestias laudantium asperiores culpa. Tempore tempora corrupti harum quis suscipit debitis omnis ut. Facere illum fugiat dolores facere quae nesciunt. Atque ea placeat est ratione voluptatem.', '1971-06-08 14:51:29', '1986-09-12 21:43:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (105, 71, 108, 'Commodi numquam possimus rem culpa nesciunt suscipit. Recusandae iusto deleniti laborum ratione fuga consectetur ea. Voluptatem reprehenderit suscipit nihil aliquam nihil ea consequatur. Et et mollitia quam non corporis dolorem.', '2020-05-19 01:51:04', '1984-05-04 23:31:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (106, 81, 72, 'Cumque incidunt repellat praesentium voluptatum aut dolor repellat. Quibusdam nobis maiores blanditiis laudantium quia quo. Temporibus ipsum ut qui deserunt officia esse.', '1986-03-14 19:53:45', '1992-04-19 14:59:12');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (107, 82, 29, 'Voluptate autem veniam ut consequatur. Eaque dolores eos et ducimus illo ea. Voluptatum exercitationem molestiae unde distinctio ut hic sint. Iusto ducimus voluptas doloremque omnis et ut mollitia.', '1997-06-21 19:51:44', '2020-10-05 01:15:15');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (108, 20, 120, 'Numquam eos suscipit rerum ut. Ratione omnis eligendi ullam blanditiis. Consequatur minus rem eos eius accusamus et. Quaerat non qui voluptatem.', '2013-03-12 17:57:01', '1995-03-19 10:19:13');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (109, 30, 170, 'Omnis iste cupiditate earum praesentium vel distinctio. Saepe aliquam illum optio aperiam. Ad perspiciatis explicabo maxime molestiae sit veniam.', '2008-09-17 18:06:08', '2018-07-25 21:45:28');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (110, 40, 19, 'Est omnis et et at. Aspernatur minima placeat quas et praesentium accusantium. Nihil doloremque qui quo sed voluptatem vel molestiae. Alias neque dicta sit autem.', '1971-12-27 06:21:05', '1989-12-27 07:18:26');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (111, 78, 150, 'Eius ipsa aspernatur molestias at vero fuga nobis ipsa. Et vel dolor et tempora hic recusandae.', '2010-03-09 19:39:53', '1993-11-24 21:09:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (112, 49, 44, 'Velit veritatis in et ut molestiae. Reiciendis ipsa dolores facere dolorem maiores et adipisci hic. Non illo pariatur unde doloremque laborum.', '2016-07-04 11:44:13', '1991-11-05 04:44:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (113, 10, 14, 'Id ipsum quibusdam maiores dolorem expedita et. Consequatur accusamus laboriosam est voluptates porro.', '2005-02-12 06:51:38', '2012-06-03 07:21:54');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (114, 29, 75, 'In quo non libero et aliquam. Dicta voluptatum assumenda iste fugiat asperiores. Perspiciatis eos voluptate qui voluptatem. Magnam ea excepturi iusto.', '2003-09-24 03:18:27', '1974-08-21 19:05:17');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (115, 52, 16, 'Sed praesentium voluptas sequi et inventore. Quis natus recusandae sed officiis aut ut est. Maxime ut doloremque est illo. Placeat dolorem excepturi voluptatibus provident eum alias. Ut maiores eligendi quod explicabo aperiam tenetur aut.', '2016-12-23 04:20:15', '2000-11-02 11:54:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (116, 94, 112, 'Voluptatem enim dolores explicabo et dolorem quo exercitationem. Vel perspiciatis ad eum aliquid pariatur. Qui nostrum porro dolores eos maiores aut nulla. Cum harum cum officiis et dolor.', '2010-08-03 10:16:50', '1975-06-25 13:41:46');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (117, 53, 77, 'Omnis et neque aut quaerat natus accusantium aut. Quaerat soluta consequuntur nemo quae commodi voluptates. Accusantium modi quam quia sed hic dolores architecto voluptas. Recusandae corrupti voluptas nam qui qui sunt.', '2020-12-24 00:44:03', '2000-07-18 08:10:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (118, 79, 179, 'Illum aliquid sed omnis id. Et sint unde cupiditate amet ut. Alias consequatur rerum tempore aut dolores enim sint.', '1982-08-16 21:26:07', '1996-03-11 09:05:46');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (119, 43, 148, 'Aliquam quae qui numquam fuga officiis asperiores. Reprehenderit ut voluptates eos eum. Accusamus placeat incidunt dolorem. Eos corrupti consequatur aut quam. Quo labore esse ducimus.', '2005-11-09 00:38:26', '1972-02-03 01:12:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (120, 87, 26, 'Eum a excepturi facilis rerum culpa repudiandae impedit aliquam. Veniam cumque non autem quia sit. Illum repudiandae et cupiditate ut similique omnis impedit. Sit consequuntur aliquam odio et at laudantium.', '2017-02-25 12:25:25', '2020-08-27 04:31:06');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (121, 28, 134, 'Sint ad nesciunt officia eos ex qui facere. Nihil sed libero quaerat culpa. Similique consequatur facilis earum voluptas asperiores ipsam.', '2019-06-30 15:28:03', '2017-03-26 01:15:35');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (122, 49, 18, 'Sit ducimus est rerum voluptatem quia in. Praesentium iure qui ducimus asperiores fuga. Velit repellendus nisi sunt similique doloribus delectus placeat sunt. Omnis est ratione est deserunt mollitia doloribus perspiciatis.', '2017-03-30 03:57:03', '2006-09-26 22:56:21');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (123, 82, 136, 'Sint aut incidunt vitae cupiditate officiis dignissimos. Officiis voluptas eligendi ducimus cum omnis voluptas sed. Et soluta praesentium aliquid dolores. Ad et cumque consequatur nemo molestiae.', '2005-01-15 02:23:04', '1988-07-06 22:56:50');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (124, 69, 23, 'Et temporibus cupiditate dolore aut qui. Qui autem quas saepe iusto sint ut. Sequi molestiae possimus consequuntur ut corporis nostrum natus dolor.', '1990-10-26 04:49:42', '1973-09-17 11:26:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (125, 53, 17, 'Et magni ea corrupti voluptatibus dolorum soluta possimus. Ab labore molestiae quia eum. Non error sunt non numquam aut nam dolores dicta. Ullam sunt autem voluptas at voluptas omnis.', '2007-07-27 20:21:11', '1996-12-19 03:54:45');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (126, 21, 60, 'Autem rerum est velit aut libero. Exercitationem ab ut ex ut mollitia molestiae quae. Asperiores sint voluptas rerum perferendis est modi unde voluptatem.', '1976-07-13 05:23:45', '1978-12-25 12:07:35');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (127, 84, 139, 'Vitae doloremque dignissimos a. Laboriosam ut quo quidem unde autem ipsa quod. Ut dolorem ex voluptas et rerum omnis unde.', '1992-08-17 07:45:31', '1975-12-15 18:31:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (128, 52, 186, 'Nobis ea laudantium ut libero et quasi. Dolorem maxime quis laborum id ut. Aut necessitatibus sit beatae quia commodi tempore.', '1998-02-28 13:32:58', '2016-03-07 10:30:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (129, 76, 160, 'Ad temporibus iusto occaecati magni vitae placeat magnam. Distinctio saepe dolore cum est aspernatur quisquam perferendis nam. Nobis velit temporibus ratione velit repudiandae quia illo quaerat. Atque est cupiditate natus nam iusto accusantium.', '1976-07-28 19:05:08', '2016-08-29 09:56:33');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (130, 30, 56, 'Rerum ducimus et libero cupiditate molestias a. Ex impedit sunt vitae dolorem impedit magnam. Cupiditate eum quia dolorem.', '2021-03-16 03:42:10', '2016-02-26 22:41:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (131, 88, 47, 'Temporibus omnis fugit qui illo eius. Aliquid dolore harum repudiandae natus quis. Qui et voluptatem aut dolores iure fuga. Illo reprehenderit nesciunt odio voluptates facilis quos ea iure. Laborum aspernatur eius molestiae dolor qui.', '1999-07-21 00:35:48', '1999-12-07 07:53:15');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (132, 84, 80, 'Omnis ab quisquam et voluptas quam inventore esse. Voluptas in architecto quasi est. Eum ea ut est. Quia repudiandae fugiat quia id dolor.', '2010-10-28 16:49:18', '1970-06-10 20:54:16');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (133, 62, 124, 'Aut dolorem quia fugit animi modi et. Rerum at corrupti dolorem dolor. Sint amet neque qui atque cumque impedit corporis.', '2019-01-06 06:59:12', '2015-12-09 04:35:52');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (134, 29, 8, 'Amet consectetur inventore animi voluptatem. Sit ut qui maiores dicta iure quo autem nulla. Non enim ducimus distinctio laudantium est. Ducimus exercitationem molestiae dolorem quaerat est.', '2016-02-06 03:29:47', '2012-06-09 11:40:49');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (135, 36, 32, 'Deserunt error aliquid ab sunt deleniti. Fugit occaecati accusamus error quis ipsum suscipit explicabo.', '2007-05-02 04:59:33', '1970-03-05 03:54:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (136, 17, 127, 'Nostrum vero officia accusamus. Ea et beatae veniam aperiam ut quia dolorem sunt. Rem exercitationem id velit et minus perspiciatis.', '1988-04-24 21:40:47', '1997-08-09 13:31:37');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (137, 83, 130, 'Et assumenda et beatae excepturi architecto enim. Minima et id veniam iste aut natus qui. Voluptas earum consequuntur autem asperiores maiores eum et.', '2017-05-13 20:20:08', '1994-12-27 18:26:56');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (138, 72, 129, 'Qui quia qui dignissimos officiis qui. Sequi numquam dolor harum voluptates a suscipit. Velit atque quis deserunt quia quo possimus.', '1974-06-26 01:28:56', '1974-01-21 07:32:24');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (139, 33, 81, 'Voluptate qui voluptatum animi natus molestiae sequi velit velit. Consequatur natus adipisci magni excepturi odio placeat et quibusdam. Quia aliquam dolores harum explicabo. Sed consequatur fugit perferendis consequuntur non. Sit laborum ad excepturi voluptas velit.', '2011-07-01 15:11:44', '2008-03-04 01:12:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (140, 76, 170, 'Quasi nemo saepe rerum. Asperiores ipsa maiores harum at quisquam fuga nobis. Deserunt est voluptatibus quia quae optio unde impedit. Dolorem repellat aut pariatur in.', '2009-09-21 03:35:47', '2017-10-24 15:07:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (141, 49, 191, 'Explicabo nisi voluptatem quis debitis et officia autem. Autem odit earum similique debitis sint tempore dolorum. Placeat non voluptas rerum culpa laboriosam sapiente nam.', '1977-08-13 03:39:20', '2007-06-21 19:15:26');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (142, 15, 64, 'Autem officia neque quia nulla maiores. Assumenda vel nobis asperiores ut. Soluta labore aut corrupti illum. Possimus est nam et eveniet aut sit.', '2006-02-26 13:33:12', '1981-04-11 11:26:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (143, 65, 133, 'Excepturi eum inventore fugit vel beatae aut. Quisquam impedit at suscipit culpa. Non sapiente alias nesciunt rerum dicta autem quas. Quis et aut iure ab.', '2010-04-28 06:03:56', '2008-12-12 06:12:59');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (144, 25, 81, 'Rerum mollitia dignissimos unde exercitationem est laborum. Consequatur quia repellat optio aut. Distinctio quae debitis sint ad voluptatem tenetur. Mollitia veniam et sint nesciunt omnis repudiandae.', '2003-01-07 21:55:45', '1975-06-25 00:53:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (145, 46, 109, 'Voluptatum aliquam et quidem reprehenderit voluptates. Sed incidunt voluptas in quisquam vel. Qui impedit dolore voluptatum qui et quia. Tenetur vitae commodi nihil quibusdam deserunt. Libero ab qui provident.', '2013-04-09 20:55:20', '1993-11-08 19:10:37');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (146, 68, 67, 'Vel nisi asperiores fugit rerum accusamus dolore. Omnis nemo eaque eius. Quam quo blanditiis illo ipsum autem quibusdam non et.', '2019-12-10 20:19:15', '1979-02-13 05:01:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (147, 78, 104, 'Nam eum eligendi voluptatem veritatis id et dolor. A alias autem sed qui doloremque. Velit et blanditiis voluptas et laborum qui qui.', '2010-05-28 18:43:43', '1994-05-12 06:35:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (148, 74, 78, 'Impedit error ut soluta incidunt doloribus. Totam id similique numquam molestias ut. Enim vero et voluptatum quia blanditiis sint. Adipisci laboriosam et voluptatem ut sed iusto consequuntur.', '2015-11-22 01:42:08', '1984-01-21 21:33:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (149, 14, 5, 'Sint alias sapiente voluptatem et mollitia fugiat. Officiis ut autem reprehenderit. Laboriosam laudantium neque nisi rerum. Sunt delectus ea beatae nam pariatur et quisquam et.', '2004-05-11 11:05:14', '2009-01-06 17:36:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (150, 43, 98, 'Eos accusantium consequuntur eos nesciunt qui. Eum voluptatem explicabo velit incidunt numquam laboriosam. Aperiam explicabo aut rerum incidunt maxime voluptatem ut.', '2019-05-03 10:26:48', '1980-07-10 18:38:35');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'nostrum', '2013-02-08 22:23:23', '2007-03-25 21:55:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'soluta', '2017-09-19 11:23:00', '2009-03-04 13:18:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'vitae', '1972-04-21 10:51:26', '1978-05-25 23:34:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'cumque', '1985-10-04 08:24:23', '1988-08-05 23:54:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'dicta', '1996-03-11 10:52:30', '1970-09-03 07:13:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'harum', '1981-06-24 03:17:53', '1983-01-21 18:25:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'possimus', '2003-04-03 18:10:51', '2015-06-06 19:51:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'et', '2009-01-12 10:40:46', '1977-10-31 14:27:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'quia', '1970-05-03 17:18:40', '2001-04-15 02:28:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'dignissimos', '1988-02-01 03:29:09', '2003-07-20 00:10:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'similique', '2009-10-09 18:28:31', '1981-03-09 05:36:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'modi', '2010-12-27 03:58:07', '1990-01-12 23:34:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'nam', '2017-06-11 11:11:04', '2017-10-05 15:32:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'laudantium', '2012-04-02 01:19:07', '2010-06-01 07:28:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'dolorem', '1976-08-17 10:34:06', '1983-05-09 06:47:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'tempora', '2016-06-28 10:47:59', '2009-06-20 14:01:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'consequatur', '1990-04-11 22:12:37', '1985-07-16 19:48:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'architecto', '1977-01-20 08:55:06', '2021-01-31 16:15:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'voluptas', '2019-08-23 00:21:24', '2005-05-30 05:10:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'aut', '1992-04-23 05:16:53', '1999-11-06 23:08:11');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `user_id` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 9, '1985-10-29 05:00:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 18, '1970-02-03 19:03:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '1978-01-22 16:37:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 45, '2001-06-19 05:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 57, '1979-08-04 04:54:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 65, '1976-09-29 06:51:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 80, '2003-01-05 18:22:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 95, '1983-02-13 21:32:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2013-08-01 07:44:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 37, '2018-10-01 23:06:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 49, '2016-12-04 01:25:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1975-10-25 20:14:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 56, '1971-07-29 08:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 68, '1990-08-12 18:01:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 86, '2020-11-13 00:54:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 98, '2002-05-09 14:03:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 1, '1992-09-03 21:10:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 4, '2020-06-29 20:44:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '1970-03-28 17:21:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 15, '1983-01-24 14:15:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 30, '1984-04-05 19:19:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2008-08-12 16:45:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 61, '1970-01-20 02:56:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 82, '1998-02-22 12:27:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 87, '1972-06-23 09:29:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 88, '1973-10-14 01:27:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 95, '2012-11-13 13:01:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 11, '1979-02-22 09:41:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 16, '2016-10-27 19:31:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 47, '1970-07-29 13:43:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 51, '1973-05-20 09:09:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '1992-02-23 05:45:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 87, '1987-01-25 21:54:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 96, '1999-02-22 15:21:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 3, '1979-09-26 12:56:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 26, '2009-10-26 17:59:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 33, '1994-07-25 05:59:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 36, '1992-05-05 05:51:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 62, '1992-08-30 09:48:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 93, '1978-01-26 01:46:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 3, '2002-03-19 19:05:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 13, '2006-02-26 01:04:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 34, '1977-08-25 23:49:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 45, '1972-12-29 18:16:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 57, '2019-07-28 11:47:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 58, '1981-09-06 08:34:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 63, '1982-06-23 05:48:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 65, '1973-01-10 04:21:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 83, '2018-04-13 19:55:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 19, '1981-09-12 05:40:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 29, '2017-12-06 19:36:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 55, '1997-03-27 00:24:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 72, '2016-11-19 15:29:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 75, '1991-08-29 00:34:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 4, '2010-07-23 14:09:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2015-12-29 04:40:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 75, '1998-01-16 21:24:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '1970-05-08 00:19:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 6, '1976-08-26 15:10:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '1971-08-04 00:10:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 38, '1981-07-03 08:06:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 45, '1986-08-24 19:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 47, '2009-09-19 11:53:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '1987-11-18 19:01:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '1971-11-28 05:04:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '1992-12-04 01:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 5, '1973-10-05 13:53:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2014-11-08 04:19:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 25, '2009-12-01 02:30:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 28, '1991-09-05 01:23:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 31, '2002-04-29 16:31:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 44, '1980-04-12 18:41:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 87, '1992-12-23 15:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 89, '2007-11-30 11:05:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2000-02-19 03:14:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 99, '1983-06-17 19:45:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1975-02-09 03:04:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 16, '2003-04-23 16:08:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 19, '1980-09-15 18:08:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 55, '2002-01-19 05:35:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 57, '1974-05-25 03:46:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 69, '2016-09-04 12:16:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 6, '1991-07-14 21:30:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 27, '1993-01-14 02:19:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 42, '1984-04-29 18:26:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 70, '2009-08-25 04:08:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 93, '2016-09-06 09:59:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 12, '2007-03-14 00:03:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 31, '1991-03-15 13:38:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 63, '1986-05-12 03:51:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 41, '2004-02-03 06:27:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 51, '2007-11-28 14:38:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 52, '1978-06-25 04:36:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 53, '2014-05-03 01:12:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 59, '1993-02-10 18:05:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 87, '1987-07-03 15:09:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 93, '1995-10-06 03:18:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 98, '1974-08-22 20:30:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 99, '2007-10-31 12:32:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 13, '1992-02-28 17:18:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 14, '1997-05-24 11:48:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 31, '1972-02-22 22:22:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 46, '2003-04-24 17:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 62, '2018-02-13 11:49:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 68, '2016-04-15 17:34:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 77, '2011-11-24 05:37:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 81, '2014-05-21 21:01:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 84, '2007-10-13 12:39:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 97, '1999-01-06 23:32:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 4, '2014-12-05 07:05:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 26, '1978-12-16 14:34:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 51, '2017-04-22 04:35:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 56, '1980-11-09 16:51:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 69, '1975-12-19 11:07:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 74, '2010-12-08 22:14:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 79, '2000-05-25 09:48:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 80, '2010-07-11 13:04:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 2, '2011-02-05 17:49:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 31, '2002-07-17 22:14:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 47, '2001-06-01 01:07:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 96, '2000-01-08 00:01:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 97, '2005-03-24 09:19:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 1, '1978-04-25 17:22:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 16, '2010-11-23 07:50:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 32, '1978-01-17 13:30:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 35, '1989-01-04 02:04:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 59, '1987-09-13 03:14:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 70, '1996-06-11 02:28:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 79, '2000-12-03 22:17:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 87, '2020-04-23 04:31:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 92, '1984-11-24 12:49:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 93, '2015-04-07 09:45:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 4, '2000-02-09 09:54:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 7, '1972-10-31 14:12:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 12, '1980-06-17 03:21:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 50, '1998-09-12 13:17:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 69, '1975-04-09 02:42:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 70, '2009-06-12 05:52:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1980-12-20 22:38:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 23, '2020-06-09 04:54:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 40, '1982-04-30 05:12:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 79, '1973-02-21 00:06:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 82, '2007-12-31 00:05:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 86, '2004-04-16 00:31:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 92, '1978-06-05 05:18:08');


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'eaque', '2002-05-31 21:32:44', '2010-05-25 02:12:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'quidem', '2006-11-16 13:32:27', '2017-11-21 09:43:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'soluta', '1995-10-31 11:08:08', '2012-06-23 18:49:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'cum', '1990-05-11 09:31:02', '1997-09-12 06:11:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quis', '2000-11-08 20:27:33', '2013-02-19 21:40:36');


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
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ',
  KEY `friend_id` (`friend_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendship_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 1, 1, '2009-01-21 17:51:59', '1984-03-19 22:52:48', '1972-06-12 05:04:34', '2012-09-10 10:46:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 30, 2, '1975-07-02 04:47:09', '2010-09-24 01:11:45', '2002-04-07 08:53:46', '1980-05-14 06:43:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 95, 3, '2017-11-15 16:27:56', '2007-05-15 23:16:01', '1996-04-28 17:20:58', '2020-09-02 17:33:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 61, 3, '1989-07-09 23:50:03', '2012-01-09 00:03:45', '2015-11-30 01:33:38', '2013-09-25 19:36:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 80, 1, '1971-10-19 01:26:12', '2002-04-29 04:36:14', '1996-04-10 05:20:53', '1980-06-21 03:43:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 96, 3, '2000-06-07 09:43:53', '1996-07-28 22:57:38', '1991-12-22 05:00:02', '1977-01-08 16:51:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 10, 2, '1981-07-23 02:33:02', '2008-08-09 21:23:11', '2015-10-18 09:43:43', '1984-06-17 08:42:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 21, 4, '1993-09-30 16:21:41', '1979-02-12 23:13:57', '2004-06-02 10:44:06', '2002-11-21 13:41:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 28, 5, '1973-10-02 21:15:21', '2002-11-30 07:46:40', '2008-06-25 09:26:31', '1994-10-30 08:22:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 12, 1, '1992-06-27 13:25:08', '2020-07-02 04:07:10', '1985-09-22 09:39:05', '2015-06-13 00:15:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 38, 1, '1971-01-30 05:50:52', '1984-05-01 21:30:22', '1986-08-31 07:45:50', '2010-10-15 10:30:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 46, 4, '2001-07-12 16:59:14', '1971-04-08 18:32:01', '2002-09-28 08:33:40', '2005-02-27 22:00:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 52, 3, '1976-02-06 08:38:03', '2003-12-30 02:58:27', '2007-01-14 03:43:29', '1985-12-03 09:22:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 98, 1, '1975-06-07 12:13:55', '1990-09-11 08:20:59', '1982-05-11 20:08:44', '2019-01-21 01:31:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 35, 3, '2008-05-28 01:55:51', '2014-06-12 03:38:19', '2021-05-05 00:19:13', '1979-03-16 16:04:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 70, 3, '1971-05-18 02:31:45', '1989-03-29 12:48:04', '2014-03-24 08:02:02', '2020-03-09 07:29:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 91, 4, '2002-09-09 14:54:04', '2010-10-28 07:31:01', '2014-01-31 21:08:25', '1985-11-25 07:38:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 30, 2, '1995-06-25 01:50:31', '2016-06-06 04:10:01', '2000-09-29 04:36:48', '1974-03-31 14:53:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 97, 4, '2018-04-12 23:54:00', '1978-09-10 22:59:47', '2002-02-25 07:12:54', '1985-10-21 21:28:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 7, 3, '1986-04-10 17:27:12', '2014-02-12 20:40:50', '2004-02-04 06:19:30', '2013-12-29 01:07:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 24, 4, '1989-08-22 12:57:06', '1973-10-04 22:15:14', '1980-11-22 17:54:51', '1991-09-18 16:35:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 30, 4, '2006-11-18 05:04:41', '1985-10-10 01:57:31', '1974-10-26 22:11:57', '1980-02-13 13:30:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 31, 2, '1993-06-04 05:18:43', '1998-10-19 18:36:16', '2008-05-19 20:42:06', '1980-06-04 13:22:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 52, 1, '1999-10-20 10:45:51', '1984-04-27 04:32:22', '1970-10-16 05:30:45', '1993-08-08 13:14:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 57, 1, '2011-09-11 04:12:37', '2013-06-17 17:27:34', '1980-11-03 12:19:36', '1975-05-03 21:11:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 68, 1, '1979-10-17 05:41:34', '1970-04-23 18:06:01', '1987-04-18 07:23:21', '2006-05-11 00:30:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 77, 4, '1984-05-10 09:41:37', '1997-02-20 10:15:12', '1986-12-19 07:37:39', '1982-10-12 20:00:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 91, 2, '2014-05-24 14:23:47', '2020-01-08 15:12:34', '2014-04-04 14:48:21', '1999-04-20 06:25:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 70, 1, '1986-01-30 07:06:42', '1971-07-24 19:05:36', '1982-10-11 07:22:29', '1992-08-24 02:41:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 80, 5, '2002-09-06 02:31:17', '1983-06-02 09:59:29', '2019-09-15 08:41:30', '1996-06-20 12:06:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 10, 4, '2005-08-28 02:52:05', '2004-09-20 17:39:43', '2012-06-08 01:15:40', '1970-08-28 20:14:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 60, 2, '1987-03-01 09:23:51', '2007-12-30 06:58:08', '1981-04-01 18:12:03', '1988-03-26 05:42:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 78, 5, '1988-08-17 16:29:08', '1982-10-04 11:36:22', '2000-12-05 11:00:34', '2016-12-18 06:18:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 85, 2, '2005-07-14 21:09:52', '1988-12-03 05:42:28', '1998-04-27 20:29:52', '1983-05-20 03:03:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 14, 5, '1986-09-11 03:57:44', '1989-04-01 21:31:22', '1991-03-02 05:03:59', '2020-04-09 17:35:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 31, 4, '2009-03-27 10:32:38', '1988-01-01 02:21:24', '1996-06-21 20:45:10', '1995-09-03 20:11:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 40, 4, '2008-11-12 10:26:59', '1996-03-20 15:51:46', '2018-05-11 13:31:53', '1995-04-06 10:40:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 43, 1, '2016-08-21 20:57:50', '2019-09-08 14:59:17', '1975-09-09 14:56:47', '1973-10-18 05:34:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 44, 1, '2008-02-02 09:02:06', '2012-05-26 10:05:15', '1983-03-05 07:08:09', '2004-08-01 07:15:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 52, 5, '1970-02-04 23:35:48', '1983-07-23 08:43:43', '2006-06-12 13:43:49', '2003-07-18 04:33:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 6, 1, '2006-01-22 08:44:20', '1998-09-15 03:33:22', '1982-02-18 09:13:03', '2011-03-17 06:07:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 63, 1, '1987-09-13 02:06:14', '1998-07-18 18:52:48', '1989-07-29 12:06:52', '2011-08-27 03:57:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 97, 3, '1979-04-04 06:26:21', '1974-08-07 15:47:13', '1990-03-14 15:51:24', '2013-03-25 05:09:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 41, 1, '2021-04-07 11:52:55', '1990-11-25 03:25:32', '1987-07-09 06:16:31', '2012-10-29 14:50:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 67, 2, '1990-09-28 09:56:58', '1972-03-21 16:08:07', '1976-02-15 04:01:37', '2013-10-27 01:10:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 96, 5, '2001-10-15 20:32:59', '2009-04-15 22:57:45', '1976-09-14 01:21:14', '1985-12-18 01:40:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 5, 5, '1992-05-24 02:50:27', '2020-07-31 15:05:06', '1978-03-26 00:12:40', '2006-01-15 19:30:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 37, 5, '1971-05-26 07:51:55', '1981-09-14 23:45:56', '2005-09-08 02:08:36', '2017-06-24 19:45:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 54, 5, '1988-03-07 22:40:33', '1997-11-20 21:02:46', '1983-10-10 00:59:21', '1983-02-04 04:10:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 63, 1, '1987-10-19 02:55:07', '1972-12-11 02:51:59', '2009-09-11 08:50:16', '1976-11-13 01:50:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 56, 3, '1991-03-15 17:26:03', '2016-05-02 19:22:11', '1995-08-09 00:48:16', '2009-03-04 16:54:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 86, 3, '2017-02-28 15:05:05', '1985-05-01 11:14:43', '2008-12-15 17:10:14', '2001-01-23 10:55:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 59, 2, '2010-10-11 12:37:52', '1976-04-03 16:37:44', '2006-12-23 02:37:31', '1974-01-11 04:09:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 38, 4, '1984-09-11 16:21:23', '1997-02-19 17:07:35', '2009-06-22 20:44:02', '2019-07-13 04:54:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 39, 1, '1970-04-04 14:54:03', '1997-09-20 11:25:27', '2003-02-07 23:04:58', '1982-11-13 02:42:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 30, 3, '1981-06-20 01:28:01', '2020-02-12 04:11:25', '1979-01-09 06:27:03', '1985-11-29 00:51:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 81, 5, '2009-10-25 04:49:09', '2015-01-25 18:51:15', '2006-02-02 07:34:46', '2006-12-24 02:00:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 37, 4, '1980-10-12 06:13:16', '2012-08-08 22:21:26', '1983-12-10 21:01:09', '2009-08-20 15:30:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 77, 4, '1983-01-20 11:45:48', '2007-09-04 08:59:53', '2006-01-27 09:55:14', '2007-07-21 16:26:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 89, 5, '2000-05-08 09:15:27', '2004-05-07 09:41:27', '1990-12-02 12:10:40', '2012-08-01 04:30:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 74, 1, '1984-10-09 17:49:04', '1994-06-24 03:04:29', '2009-08-22 06:54:42', '1997-01-28 10:39:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 76, 2, '1984-10-09 14:19:00', '1974-01-21 09:08:00', '2007-02-21 03:08:07', '1997-11-15 03:16:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 26, 2, '1979-09-21 06:27:33', '2019-05-05 11:28:40', '1983-07-25 19:07:52', '1994-05-23 23:12:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 83, 3, '1971-04-04 09:19:49', '2012-08-16 09:51:48', '2015-08-19 20:25:17', '1976-09-08 22:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 3, 3, '2007-04-03 12:58:49', '2019-10-02 18:04:10', '1988-03-27 14:43:44', '1992-02-16 10:09:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 87, 1, '2007-01-25 14:31:20', '1987-05-14 22:02:26', '2005-09-13 09:41:07', '2016-12-22 05:38:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 27, 3, '2013-09-25 16:59:36', '1982-04-15 09:17:55', '2020-07-22 06:47:30', '1979-10-20 19:39:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 8, 1, '1996-12-15 14:36:53', '1982-10-19 19:48:27', '1987-10-01 14:46:19', '1980-04-14 22:52:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 60, 3, '1977-02-02 11:15:23', '1970-10-31 11:40:30', '1994-12-24 16:40:15', '2006-04-26 15:40:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 53, 3, '1992-03-29 13:38:20', '1989-03-10 02:44:57', '1986-01-14 15:56:31', '1980-10-04 13:00:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 28, 2, '2014-09-24 17:38:36', '1976-08-06 17:19:11', '2018-03-07 03:02:44', '1971-08-26 03:37:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 31, 5, '1989-01-20 22:45:04', '1977-12-15 11:08:34', '2002-04-05 15:33:44', '1980-03-01 00:50:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 39, 4, '2013-01-08 00:37:36', '2013-10-17 02:50:32', '1991-06-12 12:17:59', '1983-05-26 20:31:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 60, 2, '1987-11-20 05:19:45', '2013-01-10 06:38:41', '1979-05-05 06:44:13', '2005-03-22 22:06:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 66, 1, '1990-05-15 15:17:41', '2006-07-28 03:10:22', '2018-06-20 22:53:50', '1980-02-29 17:12:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 85, 1, '1981-06-16 04:13:43', '1999-07-14 03:22:04', '2013-08-10 05:45:37', '1991-07-12 17:25:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 15, 2, '1977-05-15 19:03:36', '1995-04-21 01:57:36', '1982-07-15 10:03:11', '1997-06-01 00:55:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 18, 4, '2012-10-14 14:32:27', '1991-01-01 20:35:15', '2020-05-24 00:27:29', '1997-05-11 01:08:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 67, 3, '2008-04-07 07:34:51', '2020-12-26 04:54:22', '2002-01-20 01:23:54', '2021-03-11 18:18:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 96, 1, '2018-05-11 02:00:05', '2007-12-09 08:10:07', '1988-07-01 05:58:32', '1978-08-19 16:08:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 1, 5, '2002-05-12 09:00:25', '2006-06-03 21:30:10', '1991-12-28 11:04:11', '2012-07-01 23:48:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 76, 4, '1987-07-27 20:14:33', '1988-03-18 11:50:34', '1974-05-29 20:54:21', '1983-06-23 13:17:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 91, 2, '1981-03-24 23:13:10', '1985-03-02 17:23:27', '2021-02-07 06:23:48', '1998-12-28 09:10:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 22, 2, '2002-05-21 19:59:28', '1990-05-18 08:40:51', '2015-09-03 21:47:21', '1994-11-28 11:17:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 78, 1, '1971-11-27 23:11:04', '2002-09-09 16:13:21', '1979-09-01 13:25:01', '1996-02-06 15:08:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 97, 1, '2004-01-19 12:59:12', '2014-05-22 21:27:53', '1990-02-16 17:15:06', '1971-12-20 14:33:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 2, 4, '2003-09-07 21:49:44', '2020-07-06 05:29:04', '1984-10-07 08:04:15', '2004-03-13 11:48:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 78, 3, '1973-07-02 07:59:34', '2019-12-20 07:56:44', '2008-07-24 06:29:19', '1996-10-09 05:12:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 56, 4, '2012-12-10 06:00:32', '1973-08-31 01:02:43', '2008-10-10 02:50:46', '1986-03-29 21:10:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 89, 1, '1990-10-01 08:18:10', '1988-05-16 18:53:07', '2009-07-09 05:15:08', '1981-01-10 08:14:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 29, 5, '2016-07-10 18:22:17', '2003-01-12 01:49:53', '2018-02-19 01:17:19', '1984-02-05 20:39:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 50, 3, '2005-03-29 20:46:57', '2021-02-21 14:16:55', '2006-11-24 11:47:38', '1994-08-18 15:15:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 62, 1, '2018-07-01 09:38:01', '2009-01-30 09:45:05', '2011-02-06 06:42:13', '1971-08-04 17:05:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 84, 3, '1988-12-12 19:38:39', '2012-06-26 18:51:26', '1990-12-25 07:51:18', '1987-04-29 23:58:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 7, 5, '2007-04-21 15:33:09', '1997-06-21 10:44:13', '2004-04-09 00:39:56', '1990-06-04 14:16:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 80, 5, '2020-08-02 19:17:13', '2016-09-08 13:37:10', '1976-05-14 22:31:16', '1993-03-20 08:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 52, 5, '1999-11-11 12:06:50', '1972-11-05 05:52:19', '1986-12-27 15:49:53', '2001-07-25 22:50:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 66, 2, '2009-05-12 01:46:06', '1984-12-29 22:46:21', '2004-09-04 14:06:25', '1976-05-10 11:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 23, 3, '1972-02-15 08:59:13', '2003-07-01 20:40:06', '1980-06-23 07:15:47', '1978-04-22 09:40:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 66, 1, '1972-03-21 02:45:31', '1995-10-05 11:53:35', '2020-08-14 17:49:31', '1985-06-18 06:38:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 28, 4, '2003-12-30 03:29:23', '1971-02-10 14:26:53', '2020-11-02 19:11:00', '2016-08-19 03:38:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 14, 2, '1999-03-07 02:14:45', '1976-10-24 12:17:32', '2003-12-13 18:20:16', '1983-08-23 10:09:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 20, 2, '1987-04-05 20:21:31', '1998-02-17 19:49:09', '1995-08-23 21:19:27', '1982-04-30 08:10:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 43, 2, '1980-09-27 01:33:50', '1986-05-05 21:50:00', '2020-08-04 22:20:17', '1984-03-25 18:29:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 71, 3, '2020-06-09 11:06:39', '2011-08-29 11:16:36', '1977-04-24 17:15:20', '2004-10-29 15:18:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 96, 3, '1975-09-05 05:40:38', '1995-10-21 06:27:01', '1996-08-23 22:25:21', '2007-01-08 10:39:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 17, 4, '1982-05-03 01:32:47', '2017-08-22 12:23:23', '1988-01-23 02:43:17', '1985-05-08 17:45:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 32, 5, '1984-10-18 17:37:57', '2009-06-17 16:27:55', '1990-09-24 12:52:03', '1980-01-18 22:40:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 62, 4, '2016-03-03 14:38:45', '1986-06-06 04:16:10', '2002-11-24 16:56:30', '1984-05-16 19:57:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 20, 4, '2014-12-13 20:34:16', '1983-11-29 17:35:31', '2002-07-03 01:34:04', '2000-03-30 04:18:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 97, 4, '1988-07-06 16:03:56', '1972-02-16 16:00:09', '2011-04-08 08:47:16', '1989-01-14 08:22:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 45, 5, '1985-09-29 23:29:07', '1991-09-21 22:26:46', '2004-02-09 23:55:50', '1970-08-23 02:25:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 56, 4, '1989-10-16 06:12:18', '1981-05-03 05:36:33', '1976-01-07 08:12:42', '1981-03-01 10:47:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 83, 2, '2004-11-27 01:41:17', '2004-12-24 09:36:59', '1997-12-24 21:43:34', '2003-05-13 15:18:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 98, 4, '2016-01-29 10:35:46', '2008-01-31 08:19:10', '2014-08-21 03:43:34', '1975-10-08 10:47:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 90, 4, '1980-09-02 00:23:27', '2010-01-31 16:23:33', '1994-06-28 22:45:08', '1974-09-27 04:28:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 23, 2, '2015-05-18 04:03:30', '1992-04-08 14:17:09', '1981-06-02 06:03:49', '2009-01-10 09:21:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 30, 2, '2006-02-09 10:49:07', '1980-01-19 07:49:59', '1989-03-06 03:46:04', '1982-10-08 04:07:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 35, 4, '1980-12-27 15:32:10', '1976-08-24 06:20:31', '1993-04-23 20:01:31', '1997-06-20 07:49:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 59, 2, '2016-07-03 00:27:17', '1970-08-28 21:25:10', '2009-04-20 03:46:04', '2004-01-04 01:48:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 55, 3, '1985-04-19 03:45:17', '2000-05-14 07:38:05', '1992-05-15 03:09:11', '1970-06-14 07:14:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 78, 3, '1973-09-27 04:03:46', '1989-06-18 10:48:12', '1983-06-09 08:20:20', '1994-05-29 18:00:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 88, 5, '1988-06-30 06:30:55', '1982-03-28 20:16:26', '2014-12-01 08:56:28', '1997-12-13 13:15:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 20, 3, '1985-03-21 19:22:32', '1973-06-30 02:02:35', '1990-02-10 20:04:34', '2011-02-18 21:48:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 77, 1, '1993-08-25 04:37:23', '1998-04-06 16:14:19', '2007-05-19 09:41:21', '2013-11-29 09:44:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 91, 2, '1976-10-22 10:24:25', '1980-05-05 14:24:13', '2009-01-19 09:21:31', '1998-05-04 15:35:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 28, 4, '1998-04-03 04:39:50', '1976-05-25 04:53:23', '2019-10-16 10:56:32', '2002-10-09 10:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 32, 1, '2017-09-11 14:48:41', '2009-05-12 03:58:11', '2008-06-02 15:32:43', '1982-12-22 08:04:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 24, 4, '2017-01-15 20:39:22', '1981-09-13 03:52:21', '2009-03-29 03:45:46', '1995-08-12 23:59:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 54, 3, '2017-04-17 22:27:31', '1981-04-04 06:27:28', '2001-07-22 03:55:43', '2002-12-01 19:45:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 58, 3, '2011-12-05 15:18:06', '1972-09-15 15:56:30', '1977-01-31 19:22:17', '2002-03-08 02:20:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 22, 2, '1990-08-14 00:08:17', '2006-04-04 21:59:57', '1975-06-09 08:35:13', '2016-12-01 15:57:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 11, 1, '1972-05-17 02:08:25', '2012-08-12 19:47:21', '1989-12-29 21:36:21', '1986-05-22 13:22:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 1, 2, '1987-04-08 16:06:38', '1971-09-24 12:45:55', '1982-05-06 11:20:39', '1996-09-14 13:28:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 78, 1, '2005-03-06 08:08:09', '1976-10-03 05:33:09', '2020-01-13 16:24:42', '2012-02-10 12:41:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 51, 4, '2009-10-15 11:51:30', '2018-12-18 06:07:27', '1992-12-25 10:26:29', '1988-03-12 06:38:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 59, 5, '1990-07-17 21:36:25', '1995-12-09 18:20:29', '2014-02-16 23:10:07', '1992-09-16 19:05:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 90, 1, '1982-10-28 14:29:13', '1993-02-26 11:04:35', '2010-05-08 03:06:06', '1990-04-02 08:33:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 21, 5, '1997-03-03 03:36:59', '1975-10-13 02:20:53', '1998-12-24 00:14:29', '2000-01-22 17:26:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 45, 3, '1983-05-07 10:42:53', '2014-06-10 12:54:23', '2018-03-28 12:06:09', '1979-05-07 17:57:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 71, 1, '1980-09-30 16:14:43', '2010-07-06 09:41:56', '1984-08-13 20:52:43', '2003-01-19 14:27:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 33, 3, '1972-11-14 00:50:10', '1984-12-21 01:44:22', '1975-02-20 23:05:17', '1981-12-07 14:05:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 45, 3, '1998-01-09 01:25:09', '1973-08-14 00:39:17', '2003-03-01 04:44:53', '2003-11-16 23:13:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 76, 4, '2009-05-12 16:58:45', '1983-09-09 20:19:39', '2009-07-26 19:39:49', '1979-12-09 19:50:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 96, 3, '1998-07-14 20:19:05', '1978-09-03 14:40:54', '2014-06-01 14:13:52', '2018-04-15 13:06:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 97, 2, '2012-06-19 12:54:39', '2018-12-02 15:11:52', '2016-02-22 12:38:25', '1990-12-13 12:40:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 15, 4, '1971-08-23 17:33:32', '1972-01-30 08:58:57', '1987-08-23 00:48:23', '1979-05-25 15:32:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 11, 3, '2018-07-17 00:18:40', '2003-02-05 14:28:05', '1977-03-06 01:36:34', '2007-10-05 07:20:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 88, 5, '2017-08-22 16:14:11', '1997-09-19 08:51:55', '1990-03-15 04:57:52', '2004-04-29 01:50:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 1, 3, '2010-06-12 13:49:05', '1971-07-06 08:57:31', '2004-01-06 17:37:56', '1981-05-08 20:16:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 67, 1, '2006-08-04 11:13:08', '1991-03-14 12:01:56', '2003-06-04 10:47:45', '2009-08-19 13:42:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 92, 3, '1990-04-02 03:23:56', '1976-08-13 22:13:23', '2002-12-13 14:38:03', '1975-09-05 10:01:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 54, 1, '1982-01-05 03:01:33', '2020-02-11 07:07:29', '1977-02-02 15:59:26', '1989-12-23 01:45:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 66, 3, '1982-04-25 11:27:29', '2011-02-10 19:53:12', '1997-01-24 05:16:14', '1989-09-28 01:11:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 9, 1, '2016-12-05 01:13:58', '1999-04-18 10:39:29', '1979-02-19 06:16:45', '2018-12-18 02:40:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 29, 2, '1985-02-17 17:21:39', '1994-05-08 11:13:40', '2001-10-25 08:37:28', '2016-09-04 16:11:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 38, 3, '2004-10-14 19:15:02', '2012-02-12 19:43:06', '1981-02-15 20:55:42', '1995-01-18 00:53:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 67, 4, '1987-11-15 11:11:55', '1993-02-28 06:32:36', '2017-12-16 10:40:46', '2005-03-12 15:41:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 91, 1, '1970-11-14 16:35:02', '1970-04-25 05:32:46', '1988-12-09 22:57:32', '1973-05-29 10:48:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 14, 3, '2015-09-06 12:00:12', '2005-08-22 08:01:29', '2004-09-22 14:04:25', '2015-12-09 11:27:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 76, 4, '2007-09-22 19:15:21', '2008-03-27 23:08:01', '2012-05-03 22:47:18', '1986-08-26 22:42:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 81, 2, '2019-04-26 20:57:24', '1981-05-31 20:54:25', '1990-05-06 11:45:19', '1991-06-08 09:00:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 60, 3, '1975-07-01 14:09:54', '2004-02-08 04:33:00', '1983-09-19 18:25:59', '2009-09-14 23:25:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 44, 5, '1973-01-30 13:45:49', '1996-08-12 13:21:10', '2011-01-03 22:26:54', '2007-05-21 11:44:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 64, 1, '1988-11-25 19:20:41', '1986-12-20 07:28:47', '1984-05-15 23:27:16', '2013-10-10 20:10:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 88, 4, '1975-03-15 17:57:46', '1996-05-08 04:42:41', '1992-08-20 02:22:37', '1990-05-26 19:42:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 73, 3, '1987-10-29 07:41:27', '1998-11-14 14:10:49', '1983-08-05 23:58:48', '2009-04-14 00:36:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 22, 1, '2016-12-08 19:51:23', '1982-08-19 22:20:52', '1991-09-18 23:31:28', '1977-11-18 01:18:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 24, 2, '1989-10-20 21:39:33', '2018-04-21 22:10:55', '1982-03-11 02:52:09', '2010-05-01 01:45:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 66, 3, '1999-11-24 13:40:54', '1985-09-19 05:33:40', '1974-02-25 23:48:55', '1975-03-02 01:12:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 95, 4, '1978-02-17 00:18:15', '2021-01-22 11:12:29', '2011-08-04 18:27:37', '2012-06-19 07:15:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 1, 4, '1973-01-29 12:13:02', '1975-06-15 16:13:31', '1980-01-09 13:37:38', '1977-02-01 21:50:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 59, 4, '1988-10-25 23:28:43', '1990-10-04 20:23:39', '2004-03-18 08:05:51', '1977-07-20 17:21:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 15, 2, '1993-12-10 07:35:40', '1972-11-04 19:03:02', '1989-06-08 10:44:11', '1990-06-27 09:11:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 52, 1, '1991-02-27 22:55:59', '1996-05-11 02:58:48', '1977-04-27 19:50:16', '2019-05-29 02:53:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 93, 5, '1995-09-13 22:00:36', '2004-12-27 12:36:20', '2014-04-08 01:36:03', '1992-10-25 00:13:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 85, 3, '1990-03-21 19:13:46', '2017-02-25 06:05:06', '1998-08-20 22:07:52', '1991-10-10 03:47:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 35, 2, '1974-07-01 01:38:57', '1999-09-30 09:03:32', '2005-07-30 11:48:25', '2006-09-01 08:04:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 19, 5, '2013-02-12 20:41:05', '2006-08-05 11:35:52', '2008-10-16 01:29:14', '1972-07-21 10:58:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 29, 2, '2019-02-16 07:12:15', '1970-06-07 10:56:24', '1978-04-03 01:46:58', '2011-11-24 01:43:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 32, 4, '2016-12-25 02:58:34', '2014-07-23 11:05:03', '2005-08-18 10:36:19', '2002-02-07 09:49:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 49, 5, '2013-12-30 15:49:09', '1998-04-22 11:38:41', '2018-09-13 17:26:14', '1992-10-25 05:45:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 60, 1, '2006-10-16 11:18:41', '1984-04-07 08:25:51', '1986-09-28 04:45:47', '2008-04-03 07:00:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 26, 1, '1987-09-23 07:16:56', '1992-07-26 21:27:20', '2000-02-13 12:20:15', '1977-02-16 02:00:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 48, 5, '1973-06-01 00:26:57', '2017-08-13 00:18:02', '2003-09-27 16:06:15', '2009-10-09 19:55:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 98, 4, '2016-01-21 01:09:16', '1988-12-05 06:28:24', '1983-10-21 12:12:35', '1996-05-25 19:41:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 10, 4, '1972-01-09 10:48:43', '1973-10-01 15:41:10', '2008-10-23 10:48:38', '2005-09-07 16:06:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 41, 5, '2020-06-05 01:14:14', '1998-01-06 08:41:41', '1989-05-22 18:55:57', '2012-12-29 12:46:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 60, 5, '1975-05-24 21:30:07', '1989-10-20 19:20:33', '1992-06-20 22:55:23', '2016-12-25 03:34:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 79, 5, '2001-11-18 12:35:42', '2005-06-14 09:33:04', '2014-06-18 10:09:08', '2007-01-01 04:00:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 84, 1, '1983-09-30 10:57:06', '2015-07-27 11:17:40', '1988-03-25 21:00:25', '1979-11-17 16:44:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 43, 4, '1997-05-22 20:28:36', '1994-04-25 09:12:34', '2013-03-08 20:49:07', '1972-02-28 10:34:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 64, 4, '1989-01-28 12:43:02', '1994-09-29 05:00:40', '1986-02-04 00:46:58', '2009-12-11 19:07:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 72, 1, '1993-04-25 01:08:25', '1990-02-12 21:45:28', '1977-04-02 06:24:30', '1982-10-06 14:44:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 23, 3, '1989-08-28 00:14:37', '1999-07-02 01:17:20', '2005-05-19 05:01:24', '1986-05-07 05:31:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 64, 1, '2004-06-22 06:25:24', '1991-01-08 17:20:51', '2016-05-13 19:33:18', '1979-06-24 19:09:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 59, 3, '1987-06-12 11:10:49', '2005-01-15 16:47:39', '2010-02-18 18:25:10', '1982-02-20 07:11:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 78, 5, '2016-12-03 18:49:22', '2003-12-31 16:53:27', '1996-12-10 01:39:01', '2007-04-01 16:14:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 90, 1, '2007-09-11 03:12:55', '1981-07-24 11:39:19', '1986-04-08 08:23:35', '2000-05-12 15:38:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 21, 3, '2012-10-20 02:03:11', '2010-06-30 00:46:39', '1972-04-28 02:30:47', '1977-02-19 03:03:14');


DROP TABLE IF EXISTS `likes`;

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
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 65, 95, 'Cumque totam animi ut vitae dolorum voluptatum cupiditate quas. Rerum numquam minus consequatur. Voluptatum itaque numquam cumque enim.', 1, 1, '2017-09-28 22:30:56', '1992-01-18 20:05:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 72, 99, 'Recusandae atque et deleniti nisi molestiae. Libero ex est minima recusandae blanditiis. Ut minima fuga est.', 0, 0, '1999-11-05 09:36:39', '2014-02-22 07:08:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 24, 70, 'Facilis ipsa recusandae dolor sit ipsum. Cum explicabo accusamus sequi quo molestiae eum sunt.', 1, 1, '2020-01-27 04:55:15', '1987-01-21 16:56:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 21, 74, 'Quo deleniti voluptatem et odit fugiat consectetur autem. Enim quis nam inventore repudiandae. Quia animi est natus. Occaecati qui sunt incidunt recusandae voluptates non libero.', 1, 0, '2010-01-22 02:32:48', '2017-07-11 06:18:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 61, 85, 'Iure id aut officiis eum ex sint. Nobis autem eveniet facilis alias numquam sed voluptas excepturi.', 0, 1, '1971-06-04 11:34:47', '1975-05-25 22:41:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 2, 52, 'Nihil rerum consectetur beatae a. Velit animi neque voluptatem tempora neque in. Itaque illum et laboriosam minus sit suscipit.', 1, 0, '2003-10-05 20:22:09', '2009-06-12 16:15:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 33, 62, 'Molestias ab suscipit quibusdam distinctio. Quod eius ut eaque consequatur. Eligendi qui quam dignissimos eligendi ut ad quidem.', 1, 1, '2012-05-15 14:32:06', '2001-08-21 13:04:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 14, 49, 'Est rerum aut rerum non optio. Exercitationem vel ipsa commodi sapiente suscipit et. Esse consequatur est perferendis et reprehenderit autem dolorem.', 0, 0, '1998-03-22 14:34:00', '1989-08-22 07:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 75, 80, 'Ab veniam facere asperiores consectetur qui. Temporibus amet quia fugit rem doloremque. Est voluptas quidem atque qui. Qui ut accusamus inventore in mollitia ut assumenda architecto.', 1, 1, '1978-02-27 15:12:18', '1975-02-16 09:28:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 19, 54, 'Dolorum consequuntur quia velit a pariatur sit labore. Neque ea nisi doloremque earum. Dolorum porro non atque aut.', 0, 0, '1981-01-24 03:00:47', '2017-02-21 07:30:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 87, 30, 'Et quia amet omnis. Et similique placeat ex perferendis illum dolores.', 1, 0, '1991-10-01 02:51:53', '1979-10-29 18:28:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 59, 14, 'Qui facilis atque mollitia architecto magni. Dolorem accusantium magnam numquam saepe. Maxime incidunt aspernatur qui repellat. Accusamus et doloremque dolore itaque. Quia non molestias in.', 0, 1, '1993-10-15 05:38:11', '1974-01-21 08:02:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 33, 63, 'Veniam numquam qui ea dolor nulla beatae eum. Deserunt architecto dolorem quam ab repudiandae totam ipsa. Consequatur doloremque enim quis et et.', 0, 0, '2016-06-06 17:12:35', '1997-06-23 05:09:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 45, 63, 'Quasi laborum sit et suscipit. Impedit officiis debitis et vitae facilis doloribus qui. Culpa cupiditate distinctio amet qui ea asperiores.', 0, 1, '1987-09-04 06:52:04', '2005-05-04 17:16:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 85, 60, 'Laborum earum itaque et odio. Voluptatem dolor odio praesentium laboriosam. Similique et qui qui quo veniam culpa quis omnis. Nobis animi sequi iste fugiat unde ullam.', 0, 0, '1986-01-01 14:44:16', '1982-01-25 04:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 17, 49, 'Adipisci itaque molestiae est repellendus nisi et recusandae qui. Qui asperiores iste et impedit molestiae. Aliquid commodi natus modi quidem et.', 1, 0, '1988-08-10 08:53:04', '2008-07-29 19:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 55, 88, 'Tenetur nisi sunt sit voluptatum deserunt pariatur dolor. Consequatur tempora laudantium quam nisi eaque est molestias quis. Doloribus voluptatem vel vel at perspiciatis quasi quia.', 0, 0, '2017-03-25 02:48:38', '2012-01-23 11:37:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 48, 79, 'Rerum sunt laudantium aut sunt similique nostrum. Dolor qui culpa rerum. Aperiam vel dolore ea nihil debitis et.', 0, 0, '2017-11-28 06:32:58', '2002-02-13 04:04:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 58, 69, 'Nam porro ipsa fugit. Nobis nihil voluptas aut aut. Dignissimos ut iste commodi occaecati fugit. Modi non dolorum sint minus. In magnam quae sed sequi voluptatum error non.', 1, 1, '2013-06-05 15:11:55', '1974-12-27 05:05:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 52, 19, 'Dolores facere dolores maxime impedit atque ea maiores. Numquam pariatur fugit quidem porro omnis ut. Qui veniam minima voluptatem esse debitis fuga tempore. Assumenda architecto fuga inventore eum ad repellat autem.', 1, 0, '1991-01-24 01:24:20', '1978-09-17 09:11:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 53, 54, 'Non praesentium voluptatem repellat harum sed et odio. Perferendis deserunt voluptatem dolor fugit ea. Neque aliquam vel et quis vel quidem in omnis. Optio ipsum veritatis voluptatem ullam optio. Et est cum deleniti.', 0, 0, '2000-02-18 23:14:41', '1973-07-14 18:47:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 70, 86, 'Eveniet illum sapiente sint aspernatur id beatae iusto. Animi quae id facilis aut. Voluptas aut vel consequatur corporis. Tenetur quisquam et sequi vitae dolor ea neque.', 0, 0, '1970-01-26 13:19:05', '1982-06-14 22:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 16, 83, 'Omnis animi qui sed cupiditate aspernatur ea. Amet aut corrupti optio eligendi deserunt libero. Rerum amet sequi alias voluptatibus sed unde natus.', 1, 1, '2012-06-24 18:37:37', '1975-03-18 00:07:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 35, 90, 'Libero accusamus ex qui culpa fugiat esse. Et necessitatibus ipsam minima reiciendis illum. Numquam vitae voluptas debitis sunt voluptas velit ducimus. Saepe ut illum minus maxime ex. Excepturi voluptatibus voluptatum quidem earum natus consequatur.', 1, 0, '1982-03-22 05:16:34', '1992-07-07 23:25:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 63, 54, 'Voluptatem neque amet rem atque accusantium provident officia. Architecto et est voluptatem possimus voluptates voluptas qui. Quam sunt dolorem consequuntur.', 1, 1, '1993-02-11 19:08:05', '1974-01-03 12:08:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 44, 50, 'Et corporis sit aliquam assumenda. Maiores recusandae et sint fugiat dolor omnis exercitationem.', 0, 1, '2015-10-29 14:12:46', '1987-10-21 08:02:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 84, 2, 'Repudiandae voluptatem ut unde laborum laudantium. Non repellendus ipsam et cumque ut est molestiae. Quia ut consequatur magni sequi quibusdam sit quis ratione.', 1, 1, '1984-03-03 02:15:52', '2002-05-11 08:06:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 63, 16, 'Aut nihil vitae explicabo. Minima deleniti fuga maiores quam qui. Qui labore quos error quia qui expedita.', 0, 1, '2005-01-03 06:09:38', '2013-01-22 07:38:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 65, 7, 'Dolorem et dolore necessitatibus voluptatem. Ipsa odit officiis in ratione expedita omnis. Voluptas atque ut nesciunt dolores.', 1, 0, '1982-01-27 23:24:53', '2009-12-25 13:48:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 78, 49, 'In qui blanditiis eos distinctio consequatur maiores aliquid. Perspiciatis numquam et possimus occaecati. Laborum dolor necessitatibus et. Ab autem quo ab.', 1, 0, '2014-11-25 07:51:48', '2011-05-23 16:52:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 67, 95, 'Dolorum qui sint doloribus eum. Dicta ducimus accusantium enim et dolores repudiandae est.', 1, 0, '1998-02-17 16:05:37', '1970-01-20 21:45:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 98, 22, 'Laboriosam id error quia labore quis et. Magni voluptatibus ipsa ut et corporis. Tempore consequuntur et quo harum sed soluta. Quasi incidunt aliquid et.', 1, 1, '2011-04-16 00:20:58', '2013-12-08 20:02:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 83, 46, 'Et et et harum sunt est. Sunt et quia non. Tempore quisquam maxime harum tempora aliquid et.', 0, 1, '1977-06-13 00:59:52', '1977-09-17 20:07:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 100, 40, 'Consequatur quia praesentium minus omnis et est ducimus. Incidunt debitis temporibus in repellat. Incidunt dolorum molestias voluptatem illo quia. Laudantium vero sed sed cupiditate laudantium odio. Autem dolor cupiditate delectus nesciunt repudiandae vero omnis qui.', 0, 0, '2000-11-20 06:15:10', '1981-02-03 16:52:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 14, 52, 'Dolorum et quidem omnis a consequatur. Illum impedit a ipsum sapiente repellat voluptatibus consequuntur. Dicta consequatur et quos nostrum.', 1, 1, '1993-11-06 07:06:49', '1979-04-27 06:01:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 58, 67, 'Minus voluptates ratione dignissimos recusandae aliquid. Dolor harum est distinctio illum. Molestiae mollitia quam quae iure ut est quae.', 0, 0, '1982-05-24 08:53:32', '2008-04-06 11:00:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 5, 27, 'Fuga et eos quaerat laudantium aut est. Dolores eveniet asperiores ut magnam nihil ea. Consequatur et placeat debitis. Aliquid sint molestias nulla eum sint iure nihil. Magnam commodi ducimus voluptas vitae.', 0, 1, '1990-01-16 04:53:36', '2017-12-18 12:02:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 53, 20, 'Voluptatem eaque et molestiae officia et blanditiis voluptatum. Exercitationem consequatur velit nisi sed iure consequatur exercitationem. Expedita nam accusamus rerum quod asperiores est porro.', 1, 0, '1999-11-28 01:41:28', '1998-02-06 18:27:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 10, 88, 'Omnis beatae a occaecati amet ipsa. Quas ut est rerum fugiat. Beatae consectetur blanditiis porro laboriosam iusto omnis veniam.', 1, 1, '2001-07-14 00:48:59', '1996-07-05 12:12:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 10, 73, 'Consequatur dolorum doloremque voluptatibus quasi. Non aut aperiam commodi voluptate eum neque dolorem nostrum. Et non aspernatur impedit aut. Aut culpa qui aliquam et blanditiis.', 0, 1, '1997-07-03 01:57:06', '1991-08-20 01:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 53, 'Corporis et eos earum possimus. Enim nemo ut qui repellat similique.', 1, 0, '1993-10-19 12:32:05', '2015-08-30 21:17:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 22, 25, 'Laboriosam quis quam aliquid earum perspiciatis voluptatem. Et consequuntur quas accusamus doloribus illum quis velit. Sunt quos ut quae rerum qui. Aut quo nesciunt et temporibus et expedita. Provident nihil labore modi ratione sit qui amet.', 0, 1, '1978-02-17 05:54:47', '1991-04-22 09:24:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 55, 85, 'Aperiam nemo quas laborum nisi error quod. Ut ea laborum numquam nulla natus aut quam ratione. Enim et ex id officia velit velit.', 0, 0, '2020-01-10 08:44:42', '1979-01-29 00:32:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 40, 19, 'Deserunt ut quis sunt et. Nostrum quae sit ducimus in repellendus. Neque nesciunt sed similique reprehenderit. Sunt sunt voluptas qui et accusamus.', 0, 1, '2008-08-19 21:30:11', '1980-06-14 22:37:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 91, 18, 'Non sapiente assumenda porro vero voluptas voluptas dolor voluptatibus. Consectetur id est accusantium fuga quidem. Dolores sed maiores quo earum. Harum sed enim optio repellat in.', 0, 0, '2008-07-04 05:03:23', '2015-01-18 05:44:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 68, 58, 'Blanditiis ullam fugiat magnam architecto. Reiciendis voluptas pariatur mollitia aut et occaecati. Recusandae velit explicabo veritatis at.', 0, 1, '2002-07-11 08:12:13', '1974-06-19 19:07:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 12, 65, 'Mollitia quo ea veritatis quam. In cupiditate quisquam et accusamus cum. Earum adipisci quas aliquid magni sunt. Blanditiis sunt asperiores at sed consectetur.', 1, 0, '2015-01-29 14:32:39', '1983-06-28 13:35:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 80, 95, 'Expedita nam reiciendis sit est soluta qui sunt. Quos quidem quasi velit sit. Voluptas alias id molestias consequuntur nobis eaque non. Eum dolor ut in.', 1, 0, '1994-01-11 04:06:13', '2012-05-10 19:09:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 10, 79, 'Odit voluptatem perspiciatis laborum. Exercitationem aliquam tempore minus autem. Dolor et inventore nisi minima voluptate nostrum. Quod et ut in est hic aut provident excepturi. Ut excepturi animi nesciunt nostrum distinctio.', 1, 0, '2016-02-29 15:00:51', '2000-12-13 00:19:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 34, 24, 'Error cupiditate nostrum provident inventore omnis. Incidunt nobis maiores et quisquam deserunt excepturi corrupti. Facere culpa dolor voluptas ducimus.', 1, 0, '1991-03-14 21:37:10', '2010-04-04 23:18:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 31, 92, 'Natus esse assumenda et dolorem iste. Quaerat dignissimos et a eum. Ut illo quaerat porro voluptas repudiandae.', 0, 1, '2019-03-27 14:25:16', '2007-05-29 04:39:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 90, 35, 'Minus at est dolorum aspernatur ut fuga velit magni. Fugiat excepturi aut architecto similique. Id pariatur quo ullam quo qui omnis exercitationem totam.', 1, 1, '2017-12-20 05:21:29', '1974-10-29 06:40:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 19, 42, 'Eaque et repudiandae quasi possimus. Unde numquam et laudantium voluptate laboriosam similique. Suscipit eius voluptas quas sint officiis. Omnis hic unde nostrum pariatur. Maiores sit dolorem necessitatibus pariatur dolor.', 0, 0, '1987-05-10 09:58:04', '2001-09-14 10:03:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 55, 29, 'Voluptatibus aperiam eos quia repudiandae molestias et ab. Molestiae commodi sit ratione aliquid. Dolore eos itaque officia quis.', 1, 0, '2018-01-21 02:21:52', '1971-05-23 19:13:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 30, 65, 'Assumenda est alias reprehenderit omnis. Facilis quas maxime quia aut iusto veritatis consequatur. Veritatis dignissimos voluptas dolorem.', 0, 1, '2020-11-04 18:55:04', '2008-09-17 02:23:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 1, 70, 'Est soluta expedita architecto omnis. Molestiae maiores voluptatum nostrum. Dolores est aspernatur molestiae ex a aut.', 0, 0, '2017-08-05 15:07:25', '2012-04-08 00:21:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 18, 22, 'Sed dolore non et inventore eveniet voluptates. Aut facere perspiciatis eius laudantium. Et voluptatum mollitia porro enim consequatur.', 0, 0, '2020-04-24 10:54:55', '1994-03-20 22:36:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 94, 73, 'Sunt qui cumque ut neque aliquam rerum corrupti. Explicabo recusandae ea sint aut aspernatur ut ex. Itaque numquam quis quo incidunt qui qui quia. Commodi libero quia consequatur expedita cupiditate.', 0, 0, '1972-08-07 00:11:50', '1993-03-26 03:59:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 7, 34, 'Omnis id est libero aspernatur. Ea accusantium placeat suscipit fuga ipsum. Ab a voluptatem eligendi libero porro ut quod. Voluptatem corporis quae voluptatem consequuntur.', 1, 0, '1985-07-05 07:09:00', '1978-02-08 13:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 92, 98, 'Quo ratione vel expedita corrupti. Nemo et velit autem tempore quia necessitatibus ad. Natus aliquam inventore aut aperiam consectetur quia incidunt repellat.', 0, 0, '2012-04-27 14:53:59', '2014-02-21 01:10:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 51, 59, 'Et sit sequi dicta molestiae delectus. Possimus laborum nihil in optio distinctio ut ut voluptas. Harum temporibus odio aut sint culpa consequuntur. Sed voluptatem eum quasi.', 0, 0, '2005-04-24 04:09:29', '2004-06-21 21:38:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 55, 63, 'Ut aut nihil eum porro porro quo unde. Et nostrum quia dolores aperiam. Enim temporibus laboriosam maxime atque excepturi consequatur exercitationem.', 0, 0, '2004-04-28 23:03:40', '1986-01-14 21:50:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 24, 35, 'Deleniti voluptatem omnis aspernatur quae non blanditiis aliquam. Et nulla quibusdam vero accusantium unde aut debitis. Quae soluta autem et esse. Sint et sit veniam doloremque quis hic eos.', 0, 0, '1977-08-31 15:34:15', '1978-11-20 07:32:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 57, 34, 'Nam asperiores cupiditate aperiam non et. Modi ut dolores voluptas ipsum. Possimus aliquid quasi quod omnis iusto nam unde.', 0, 1, '2005-12-07 02:36:10', '2001-09-18 21:07:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 13, 91, 'Aut qui mollitia reiciendis architecto velit sit voluptas. Ut veritatis voluptates labore consectetur. Modi fuga debitis eum quibusdam dolorem.', 1, 0, '1977-01-15 09:19:04', '2011-12-06 12:25:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 57, 43, 'Fuga quia et dolores culpa fuga consequatur. Aperiam hic consequatur sapiente veritatis quasi eligendi consequatur. Natus qui eos culpa esse ullam pariatur. Similique odio odit tenetur illum ducimus voluptatem accusantium et.', 1, 0, '1979-01-02 21:16:38', '1982-12-12 00:31:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 82, 47, 'Quod qui dolorem consequatur illo animi eveniet. Fugiat provident rerum tempore consectetur veritatis. Provident consequatur atque autem non id provident molestiae ducimus. Accusantium earum at repellendus non.', 1, 0, '1983-01-13 20:05:02', '1998-12-03 11:49:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 78, 100, 'Et expedita qui tempora est rerum. Tempore sit rem ut delectus vero. Dolorum nihil in sit minima vel omnis.', 0, 1, '2011-09-24 01:32:32', '1981-09-05 21:12:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 89, 33, 'Voluptas cumque nihil voluptatem quasi at voluptatem inventore. Labore omnis eos sit hic voluptate dolor dolore dolor. Enim quam dolore qui omnis vitae animi in. Itaque aut magnam nesciunt consectetur id aut quae.', 0, 0, '1988-10-14 22:17:43', '1999-08-01 13:05:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 29, 18, 'Iste corporis est sunt corporis dolore nostrum sint. Qui aliquam quis officiis. Ipsam molestias rerum natus necessitatibus aut in id minus.', 1, 0, '1996-07-25 21:17:00', '1983-09-17 15:12:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 98, 29, 'Dignissimos dolore facere ea deleniti et et molestiae. Porro eum libero id. Omnis sunt sit dignissimos enim.', 1, 0, '1987-03-02 16:22:59', '1975-01-26 11:07:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 87, 15, 'Id non reprehenderit officia perferendis aut magnam. Deleniti temporibus ducimus ut a laudantium perspiciatis rem eius. Earum dicta unde excepturi est libero repellendus perferendis.', 0, 1, '2003-11-11 04:32:02', '1985-08-05 23:57:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 51, 81, 'Dolores sapiente rerum voluptatum labore. Maxime corporis reiciendis ex est. Ea ut nostrum autem et ut.', 1, 1, '1996-07-13 02:02:09', '1970-07-24 11:27:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 87, 57, 'Enim perspiciatis quia eum. Sed quo fugit autem. Excepturi non error ratione cum iste sit maxime. Dolorum et vero sequi quos dolores.', 0, 0, '1993-04-03 03:09:20', '1982-11-16 09:00:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 15, 78, 'Praesentium porro sit occaecati soluta quibusdam provident. Iure quo error voluptatem non illum perferendis. Voluptatibus aut rem voluptas voluptatem quasi. Et sed alias saepe ea. Modi qui dolore possimus eveniet molestiae pariatur.', 1, 0, '1994-12-19 09:30:45', '2009-04-15 10:48:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 54, 65, 'Dignissimos sit praesentium non odit. Aut maxime suscipit culpa eveniet corporis molestias quia est. Dignissimos fuga voluptates odio repudiandae quidem dolores esse nihil. Quo modi commodi aut et aliquam.', 0, 0, '2001-06-25 03:13:10', '1999-11-17 18:49:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 37, 9, 'Labore ut commodi qui modi ut culpa similique fugit. Nulla quaerat labore cumque amet in quaerat. Illum ut id aut id est.', 1, 1, '2000-09-08 01:27:24', '1991-11-08 09:17:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 28, 60, 'Totam et sed qui omnis. Repudiandae voluptatem labore et et nihil culpa. Tenetur neque nostrum perspiciatis quidem.', 0, 0, '1997-07-22 17:38:06', '2011-12-28 19:27:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 43, 84, 'Autem dolor earum quidem. Est a in ea ea. Voluptas aut itaque autem accusantium totam.', 1, 1, '2002-10-23 11:56:40', '1987-09-08 06:38:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 93, 55, 'Esse nam corporis molestiae et veritatis nostrum ratione. Debitis molestiae neque similique nisi dolor nesciunt dolor ut. Maxime voluptates tenetur temporibus distinctio repellat libero et libero. Autem numquam ea id repellendus ut.', 0, 1, '1988-03-24 06:25:34', '1971-12-21 21:53:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 74, 50, 'Occaecati qui molestiae eum molestiae incidunt. Quia autem optio nulla minus laboriosam sunt. Asperiores quisquam perferendis numquam omnis non minus perferendis. Nemo voluptas ea mollitia dolor ea.', 0, 0, '2020-12-22 10:38:07', '2007-11-15 21:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 98, 56, 'Pariatur ut ut rerum maiores ratione eos voluptates. Sed quisquam harum exercitationem voluptas. Nobis asperiores eaque veniam ut illo.', 0, 0, '1990-09-09 05:41:30', '1993-03-07 21:34:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 96, 76, 'Repudiandae sint ducimus et cumque sapiente aliquam. Voluptas nulla nihil temporibus aut voluptatem quod. Exercitationem dolores quasi sit et esse rerum minus.', 1, 0, '2008-05-11 18:08:09', '2004-02-17 21:29:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 56, 84, 'Asperiores fuga quam repellendus explicabo consequuntur dolorem. Ea ea neque sapiente dolorum veritatis. Eos fugit temporibus quae nam omnis et dolorem corporis.', 1, 1, '2007-08-20 22:00:54', '1996-02-27 18:05:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 8, 84, 'Tempora inventore neque blanditiis neque similique. Est officia adipisci dolorem eveniet atque. Ad tempora facere neque.', 0, 1, '2000-06-25 07:58:22', '1978-07-07 17:11:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 1, 5, 'Error minima rem quia. In rerum reiciendis magni voluptatibus culpa veniam. Qui qui voluptatem rerum neque libero repudiandae optio ut.', 0, 0, '2012-10-18 14:14:58', '1993-02-15 23:00:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 12, 88, 'Ut aut magnam deleniti excepturi voluptas saepe dolor. Et veniam qui quo vel. Ea aut doloremque quo ipsum nisi. Nulla ut assumenda architecto unde dolores.', 0, 1, '1982-02-17 10:13:15', '2020-10-12 12:59:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 20, 63, 'Aut velit pariatur possimus dolorem minus quam. Earum eum odit dolores qui recusandae aspernatur. Sunt excepturi numquam vero perspiciatis et dolor voluptates. Ipsum neque aliquid commodi iure porro.', 0, 1, '1996-01-21 07:01:33', '2004-05-04 17:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 69, 6, 'Officiis quam veniam voluptates. Maxime explicabo voluptate et nisi nulla aliquam. Molestiae quas vero nemo consequatur dolore.', 1, 1, '1972-09-01 14:16:13', '1985-06-28 08:59:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 19, 83, 'Numquam facere explicabo hic quisquam. Illo consequatur eligendi numquam nihil minus et rerum.', 0, 0, '2011-08-27 00:47:40', '2019-11-11 04:42:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 84, 73, 'Cupiditate quod quasi recusandae facere accusantium maiores hic. Ad minus sit quas voluptas eveniet iusto itaque. Eos sunt et officia eos eligendi qui. Ex necessitatibus error enim distinctio suscipit.', 0, 0, '1976-08-12 05:17:08', '1993-10-23 17:23:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 48, 20, 'Quo doloribus harum corporis nemo dignissimos ratione. Sequi cupiditate vitae nam consequatur consequatur velit nihil. Quia aut voluptatem aspernatur ipsam nisi dicta quam. Est architecto et est placeat adipisci.', 1, 0, '1970-07-01 22:51:44', '2001-02-04 11:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 81, 75, 'Ex labore ut similique doloremque et. Necessitatibus nesciunt deserunt harum nesciunt soluta. Qui occaecati ad necessitatibus quae iste ipsum in. Illum illum ut aut cum facere voluptatem voluptatem. Aut nulla sint aperiam est aut similique accusantium nihil.', 1, 0, '1979-02-08 09:32:53', '1998-09-01 01:45:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 79, 23, 'Facilis quia qui consequatur officiis suscipit ex. Tenetur porro ducimus quaerat tenetur. Voluptatem at sed enim quis vel fugiat.', 1, 1, '1971-03-30 05:31:46', '2017-02-23 13:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 58, 72, 'Cum consequatur nulla qui voluptatem accusantium odio eum. Perspiciatis nam dolorem esse nobis esse aperiam.', 1, 1, '2000-06-02 15:42:11', '1998-07-30 10:43:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 78, 32, 'Nihil ab perferendis impedit saepe sit. Consequatur rerum possimus ex iure eos ipsa. Voluptatem fuga asperiores quis hic.', 1, 1, '2004-03-01 02:08:47', '2010-12-02 06:58:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 21, 76, 'Nam et odit illo earum aut possimus quisquam. Maiores maiores labore dolor doloremque ut accusantium. Consequuntur quia veritatis blanditiis eaque sit. Sit dolorem totam ipsam occaecati illo aliquam assumenda.', 1, 0, '1976-11-07 02:31:30', '2011-12-01 15:35:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 88, 16, 'Accusamus delectus blanditiis non rem quis et. Eos veritatis dolorem dolor ut dolorum impedit. Quo aperiam nulla minus modi. Suscipit nam iure fuga aliquam nesciunt repellendus magni. Aut omnis quo rem aut ea.', 0, 0, '1998-07-11 23:10:40', '1970-04-27 16:28:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 51, 43, 'Et non voluptate excepturi qui porro est. Sit maxime consectetur autem esse ullam mollitia. Omnis culpa voluptas neque nihil.', 0, 0, '2011-07-24 04:04:56', '1975-01-06 15:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 99, 58, 'Consequuntur necessitatibus quod ea adipisci cupiditate rerum id. Labore culpa laborum voluptates sunt. Aspernatur illo sit ea reiciendis beatae.', 1, 0, '1976-07-18 18:26:45', '2009-07-13 06:42:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (101, 27, 100, 'Inventore excepturi eius reprehenderit molestias dolore. Molestiae ea autem eveniet illum corporis. A est eveniet incidunt.', 0, 1, '1981-09-27 20:51:14', '1991-08-22 11:33:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (102, 63, 39, 'Quam quia voluptatum quia perspiciatis qui tempora. Consectetur placeat mollitia a illum praesentium quae corrupti. Fugiat officia labore similique ad ex omnis. Beatae voluptas recusandae est suscipit est.', 1, 0, '2006-09-08 13:24:18', '2004-11-21 13:45:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (103, 87, 82, 'Aut ut quia doloribus molestiae et dolorem quis maiores. Quaerat dolor accusamus quos quaerat rerum. Sed veritatis hic dolorem facere libero earum quia laborum.', 0, 1, '1973-04-11 09:47:36', '2020-01-20 03:42:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (104, 1, 56, 'Maiores qui sunt voluptatem aliquam libero eum. Ut repellat ut quia rerum delectus nemo. Et aut molestiae saepe vel quidem alias. Quo sit quasi sit enim sed. Vel corrupti illum ut vel velit.', 1, 1, '1989-09-19 19:01:05', '1999-03-09 12:33:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (105, 88, 19, 'Id necessitatibus voluptas rerum. Modi mollitia ut doloremque nobis neque deserunt saepe. Libero et iure et natus repudiandae voluptate dolorem. Reprehenderit aspernatur officia ab est eveniet sit.', 1, 0, '1976-05-12 15:20:29', '1984-06-17 20:49:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (106, 38, 72, 'Vitae modi saepe quaerat omnis. Excepturi unde aperiam omnis eveniet. Occaecati tenetur quis atque qui illum. Similique reprehenderit quis dignissimos.', 1, 1, '2010-06-28 16:41:29', '2020-08-25 15:07:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (107, 91, 85, 'Sed quia nihil animi consectetur quae sed nihil qui. Eius quidem id tenetur et eum consequatur dolores. Iste et sit et aperiam et. Asperiores enim officia est sit esse laudantium aspernatur.', 1, 0, '2006-07-27 10:38:54', '2010-04-08 17:39:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (108, 91, 72, 'Qui qui deleniti accusamus sit ipsam dignissimos consequatur. Sit accusamus et eaque maiores. Enim expedita ex ex magni.', 1, 1, '1991-09-19 00:38:51', '1984-08-05 08:50:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (109, 60, 70, 'Ratione earum nesciunt assumenda labore iure quia laudantium. Quo quae rerum velit excepturi id molestiae inventore. Sed quibusdam voluptatem occaecati perferendis dolores quam autem.', 0, 1, '1980-03-29 01:00:51', '2009-02-12 23:27:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (110, 94, 18, 'Adipisci quos reiciendis laborum quis dolores atque. Debitis repellat laboriosam est. Non porro enim minima et in molestias consectetur. Deleniti quia aliquam voluptatem animi ab natus.', 1, 0, '1997-11-15 09:27:17', '2018-06-18 20:02:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (111, 41, 72, 'Rem et ex perferendis libero fugit hic earum. Eaque atque tempora dolorum omnis. Itaque odit nam qui id velit. Ducimus animi blanditiis libero velit et quibusdam quia.', 1, 0, '1975-03-09 14:01:09', '2014-01-03 05:28:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (112, 49, 62, 'Eos aspernatur ullam unde illum aliquid corporis dolor aliquam. Odit excepturi maxime repudiandae ea autem sapiente placeat. Ut rem alias expedita harum aut.', 1, 0, '2021-04-22 20:04:40', '2013-12-18 22:31:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (113, 47, 36, 'Aut voluptates esse dolores vel sed earum. Consequatur ipsa qui est quaerat corporis sed. Dolore corrupti id aliquam quas omnis saepe.', 0, 1, '1993-08-28 14:08:53', '2021-01-26 02:54:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (114, 77, 97, 'Autem tenetur nihil et facilis laboriosam commodi. Est quae et ut consequatur et dolorem eligendi. Doloribus et molestiae enim natus. Vel minima odit exercitationem.', 1, 1, '1985-02-19 10:52:27', '2006-09-20 11:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (115, 79, 76, 'Ullam aliquid quisquam consectetur eius ex atque quibusdam. Suscipit animi repellat assumenda fugit. Earum rerum qui quaerat.', 0, 1, '2012-03-29 16:45:21', '1999-07-27 10:04:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (116, 55, 5, 'Provident mollitia vel molestiae omnis nostrum. Molestiae maxime quia dignissimos occaecati non error corrupti. Sed consectetur sed eveniet quis assumenda aut. Et qui sunt iure porro ad libero iusto.', 1, 1, '1977-11-17 20:26:19', '2016-10-23 07:57:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (117, 76, 18, 'Voluptatem sit ut quia. Provident dicta et commodi. Nostrum aut corrupti numquam voluptatem nobis non quo.', 1, 1, '2009-07-04 20:02:37', '1993-07-02 01:31:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (118, 43, 63, 'Totam quia facere rerum placeat excepturi eaque fuga ullam. Eum dolorem fuga architecto assumenda dicta sapiente. Sint quisquam qui quasi exercitationem. Quisquam neque dolores ipsum nostrum et ipsa.', 0, 0, '1990-01-18 08:39:21', '2004-07-31 14:37:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (119, 100, 43, 'Nihil reprehenderit alias sed ea sunt nisi veniam. Earum et ipsam voluptatibus consectetur. Dicta aut voluptatem dolores ipsum laboriosam et provident.', 0, 0, '1992-10-29 17:03:42', '1981-05-05 00:26:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (120, 18, 87, 'Et nesciunt porro sint a enim. Voluptas et minus illum nemo atque voluptas accusantium in. Atque voluptas a asperiores explicabo aut eveniet vel. Magni omnis dolore dolorem sit.', 1, 1, '1989-06-17 00:10:36', '2016-06-05 04:12:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (121, 62, 56, 'Earum sit officia sit sed. Voluptate velit error quibusdam vitae. Illo adipisci corrupti dignissimos non dignissimos. Omnis aperiam vero maiores. Culpa et ut ut harum.', 1, 0, '1998-11-29 05:00:33', '2008-02-11 06:55:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (122, 58, 53, 'Occaecati qui qui nesciunt ex consectetur officiis est. Nemo unde quam voluptatibus in in aperiam numquam. Et et fuga consequatur iusto. Non incidunt et voluptatem ipsa architecto libero est.', 1, 1, '1971-01-25 09:40:52', '2016-01-30 11:15:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (123, 40, 49, 'Dolore animi aperiam accusantium quo corporis beatae. Minus veniam architecto dolorum vel expedita excepturi tenetur optio. Qui et porro reiciendis occaecati molestiae et sint nihil. Soluta inventore quis non beatae.', 0, 1, '1972-08-19 11:23:51', '1980-12-31 00:15:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (124, 25, 100, 'Maiores accusamus dolores veritatis iste. Qui beatae et quos molestias optio modi. Et facilis ea ut tenetur.', 1, 1, '1978-02-23 19:57:19', '2016-07-19 18:23:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (125, 18, 18, 'Alias quod aut blanditiis quia quia velit. Fuga sed laborum in sit. Exercitationem eum maxime soluta et unde suscipit. Pariatur et est vel adipisci error adipisci. Est provident nostrum ipsam vero beatae quas.', 0, 1, '1973-12-29 23:34:07', '1972-07-11 20:07:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (126, 17, 59, 'Autem sequi illum voluptas voluptates iste. Qui minima in rerum beatae. Est et voluptates saepe et architecto laborum et. Ut neque sit consequuntur dolorem eum deserunt autem voluptatem.', 0, 0, '1980-04-01 17:07:53', '1992-02-15 02:25:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (127, 90, 65, 'Numquam alias quod non pariatur dicta aut. Ut numquam aut assumenda enim ea. Quisquam vel placeat excepturi quod et. Eos ut beatae quidem sint dolorem rerum.', 0, 0, '1995-01-13 19:27:04', '1993-09-11 16:53:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (128, 20, 36, 'Molestias inventore ab cum. Quo aut accusantium similique quae aut officiis non. Quia voluptate est perferendis reiciendis sunt.', 0, 0, '1971-12-24 05:50:50', '2000-11-18 11:54:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (129, 1, 97, 'Consectetur reprehenderit et animi voluptatibus eveniet molestiae. Itaque sapiente dolor aut iure. Voluptas aliquam distinctio qui.', 0, 1, '1988-07-11 12:45:47', '1979-05-24 23:37:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (130, 33, 80, 'Sit sunt adipisci officiis enim a. Natus aut corrupti id rerum id. Corporis id sed maiores quas impedit eligendi reiciendis.', 1, 1, '2019-05-05 20:18:58', '2009-11-03 00:45:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (131, 73, 88, 'Ea quo nesciunt et quia ut sapiente. Nam debitis natus et aut hic illo eius sit. Voluptatem nemo tenetur quasi et accusantium illum. Iste accusamus et sapiente accusantium id consectetur. Voluptatem autem est aut ducimus ut eum.', 0, 0, '1998-09-26 19:32:22', '2003-04-03 19:22:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (132, 84, 48, 'Quos qui vero et commodi quo reiciendis. Rerum veniam in aut illo ad suscipit aspernatur. Itaque ad quis dolorem.', 1, 1, '1974-08-24 10:55:00', '1974-11-10 00:29:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (133, 5, 27, 'Repellendus ut facere aut. Vel et non est optio nobis quidem. Enim impedit eos tenetur at.', 1, 0, '2019-12-17 11:41:41', '2018-01-08 06:43:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (134, 11, 4, 'Voluptates laborum qui quos ea corrupti eos. Excepturi nam voluptatum aliquid aut. Corporis qui reprehenderit magni et sit laborum ex. Sunt ducimus nobis quisquam soluta modi vero voluptatibus.', 0, 0, '1993-10-18 10:28:56', '2013-09-21 07:27:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (135, 70, 28, 'Error eos ipsam laudantium qui dolor eveniet illum. Qui odio incidunt quaerat sint. Corrupti nesciunt omnis nulla excepturi beatae ipsa doloremque. Qui consequatur optio delectus est ex et.', 1, 0, '2003-07-25 12:45:10', '2010-03-31 02:24:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (136, 91, 32, 'Reprehenderit sit non quis officiis voluptate id. Et officiis magnam expedita reprehenderit reiciendis. Repudiandae nulla rerum suscipit.', 0, 1, '2007-09-07 01:40:14', '1970-12-05 15:03:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (137, 83, 49, 'Ut reprehenderit est dolore esse qui. Necessitatibus incidunt sint earum perferendis quasi. Laborum ipsam ad optio odio eum autem velit. Corporis facilis quae eos voluptatibus eius.', 1, 1, '2000-01-04 23:17:38', '2002-11-05 13:13:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (138, 85, 23, 'Dolores voluptatem sint molestiae numquam minus. Porro qui est ut animi. Quaerat dolorem minus eos qui ut.', 1, 0, '1996-04-26 01:32:05', '1982-09-14 07:48:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (139, 97, 9, 'Molestiae suscipit quos reprehenderit illo qui voluptas ullam. Nesciunt est fugit nulla vero illo cupiditate quo facere. Qui dolorum voluptatem et architecto sit assumenda.', 1, 0, '1990-12-05 20:18:53', '2013-10-26 15:38:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (140, 22, 15, 'Similique magnam iusto dignissimos labore maxime. Sed illo quidem perferendis nulla voluptatem. Dolorem qui voluptas officiis consectetur ut eveniet temporibus sapiente.', 1, 1, '2002-11-20 01:45:20', '2012-04-06 23:39:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (141, 27, 38, 'Iusto veritatis eum autem voluptatem. Provident minus delectus sint possimus. Et rerum qui rerum autem.', 0, 0, '1972-03-07 23:41:59', '1974-05-15 20:42:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (142, 73, 16, 'Dolor distinctio repudiandae atque totam qui vel impedit dolor. Molestiae autem quis fuga odit.', 1, 0, '1982-09-04 06:17:07', '1983-05-03 01:43:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (143, 3, 93, 'Et non occaecati explicabo corrupti aperiam enim sit. Rem officiis ad est ut qui officiis. Soluta debitis quam itaque aut voluptatibus inventore. Quo error voluptas facilis quae tempora laudantium.', 1, 0, '1988-01-14 02:52:49', '1973-08-30 11:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (144, 52, 3, 'Temporibus excepturi quibusdam doloremque ex velit ipsum similique. Quis enim sit sint ipsa soluta suscipit est. Voluptas aut qui hic eveniet nemo assumenda aut. Quia dolor consequuntur et nostrum.', 0, 1, '1989-10-30 00:37:34', '1996-03-25 03:40:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (145, 90, 84, 'Enim nostrum voluptatem nihil necessitatibus doloremque voluptatem et est. Nobis vel molestiae atque est fuga cum. A molestias nemo explicabo asperiores aliquid.', 1, 0, '2015-09-28 14:28:49', '1993-03-29 20:37:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (146, 83, 63, 'Cum molestiae velit et quo. Est eaque quia nisi sit rem distinctio quia exercitationem. Fugit quas ut eligendi non cum neque cumque.', 1, 0, '1972-02-02 05:56:30', '1988-10-08 01:30:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (147, 72, 67, 'Praesentium nesciunt itaque doloribus nihil. Sed qui laudantium minus autem. Neque rerum qui quasi qui earum id impedit.', 0, 0, '2015-05-05 18:15:29', '1971-06-03 09:28:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (148, 11, 77, 'Et et eius aut blanditiis voluptas. Sapiente unde ipsum laudantium deleniti laudantium voluptatibus voluptatum. Inventore ipsa non ab consequuntur totam quidem et et. Eum exercitationem ea ab.', 1, 1, '1987-10-29 02:56:31', '1989-10-11 10:19:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (149, 93, 21, 'Eum error non quasi qui sit officiis. Consequatur necessitatibus facilis quo qui sit. Corporis consectetur quaerat molestias quia quaerat. Et alias iure dolor repellendus itaque.', 1, 1, '2019-07-23 10:02:47', '1984-12-17 18:07:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (150, 80, 63, 'Consequatur illo et et. Quas error quas et. Ex repellat aut ut nihil quam. Commodi illo omnis perferendis eum est voluptatibus.', 0, 1, '1997-01-19 13:43:54', '1995-04-26 13:55:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (151, 48, 71, 'Hic suscipit et et nisi sunt doloribus. Illum atque aut qui. Veritatis labore modi autem distinctio sapiente. Aut quo qui mollitia voluptatum enim architecto aut.', 0, 1, '1974-10-04 12:28:48', '2015-09-03 00:49:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (152, 94, 31, 'Rerum aperiam aspernatur distinctio ad consequuntur non sed. Qui ea ex officia et voluptatem. Saepe perferendis et sit quaerat fugiat quia voluptatum.', 0, 0, '1992-02-06 05:14:43', '2003-09-03 20:22:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (153, 19, 78, 'Quia illo eaque ut. Eius voluptas qui vel temporibus similique architecto.', 1, 1, '1982-09-23 20:26:58', '2013-06-05 01:37:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (154, 53, 15, 'Officia ea hic eveniet qui optio aspernatur cumque. Quas perferendis nam dicta ab. Est exercitationem optio excepturi molestias et qui natus molestiae.', 1, 0, '1994-07-16 00:15:57', '1990-05-29 10:49:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (155, 86, 74, 'Libero vel praesentium veniam consequatur illum. Tempora reiciendis vel est placeat consequatur maiores.', 1, 0, '1984-11-13 12:59:33', '2020-01-02 19:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (156, 29, 13, 'Dignissimos ullam laudantium doloribus corporis numquam. Quo sed quod necessitatibus quia delectus exercitationem voluptates. Et itaque quam praesentium tempora dicta consequuntur eius.', 1, 0, '1998-02-19 21:43:48', '2017-07-22 20:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (157, 12, 2, 'Veniam numquam laborum id ipsum rerum distinctio. Rerum et eaque explicabo. Animi qui reprehenderit facilis tenetur autem. Nihil qui qui qui et dolorem esse necessitatibus. Enim quasi odio laudantium sit et.', 0, 0, '1999-01-24 12:41:08', '1997-11-08 01:04:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (158, 28, 14, 'Minus ipsa et temporibus in consequatur sint. Et doloribus reprehenderit aut corporis atque id. Voluptas hic quia provident excepturi voluptas. Ratione cupiditate harum facilis quas architecto.', 0, 0, '1978-05-26 11:21:03', '2021-02-12 20:53:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (159, 95, 79, 'Libero quibusdam qui ex est ut. Accusamus animi pariatur numquam. Ratione doloremque sed veritatis modi voluptas rerum expedita. Aut deserunt aut adipisci.', 0, 0, '2020-08-16 09:57:57', '1980-10-24 05:50:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (160, 17, 84, 'Minus sint molestiae neque. Eum eius deserunt autem modi itaque suscipit delectus. Eos deleniti voluptas dolore et.', 0, 1, '1991-07-17 10:00:28', '1977-09-03 00:54:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (161, 63, 99, 'Pariatur error sequi fuga id rerum saepe perspiciatis. Provident quos ullam et doloremque eveniet. Reprehenderit harum autem sequi asperiores iusto aut fugiat.', 0, 0, '1979-03-20 21:18:18', '2012-02-16 08:39:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (162, 46, 34, 'Non facilis sit soluta maiores eligendi quo occaecati. Reiciendis non vero nulla rerum et iste quos. Qui voluptatem enim recusandae consequatur aut et ut. Neque quis dolorem facilis aut voluptatem sit. Deleniti ut qui dolores dignissimos rem quam delectus qui.', 0, 0, '1999-05-15 18:39:17', '2001-03-25 11:08:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (163, 65, 57, 'Qui omnis harum eos quibusdam tenetur quia quaerat qui. Repellendus quos quos officia. Non quibusdam dolorem sed cum. Sint facere delectus rerum nulla. Eligendi ratione temporibus deleniti et perspiciatis.', 0, 1, '2012-02-19 21:22:07', '1992-05-19 15:11:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (164, 10, 57, 'Laboriosam aut qui amet officiis quae quia. Voluptates non natus sunt. Enim facilis eveniet natus velit culpa qui.', 1, 1, '1995-05-10 15:09:51', '2012-10-17 23:50:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (165, 77, 90, 'Voluptatem rerum consectetur distinctio nobis. Voluptatem voluptates qui et. Dolorum necessitatibus et in earum qui.', 0, 1, '1989-12-19 00:00:03', '1975-02-03 02:30:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (166, 20, 24, 'Odit sint voluptas perspiciatis fuga. Est facere quo in blanditiis. Omnis voluptatem quos cum cupiditate.', 0, 0, '2020-11-07 20:15:32', '1991-02-01 10:11:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (167, 60, 13, 'Consequatur dignissimos beatae voluptatibus omnis qui non. Et aut esse non recusandae itaque. Corrupti cum facere nihil laborum suscipit. Enim qui cum aut placeat corporis.', 1, 1, '2007-03-06 14:05:39', '1995-11-03 22:56:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (168, 54, 79, 'Dolorem ex ea similique dolores. Et aperiam adipisci dolorem voluptatem vel. Dolorem magnam adipisci voluptatem veritatis autem rerum provident. Blanditiis iste voluptas magnam voluptatem.', 1, 1, '1985-05-18 02:35:45', '2017-05-20 18:12:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (169, 91, 7, 'Voluptates quia nisi rerum natus. Praesentium ratione consequatur reiciendis possimus deserunt ex sit. Quisquam dignissimos dolores provident sed non amet nulla.', 1, 0, '1983-11-05 16:58:11', '2013-08-30 03:35:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (170, 93, 77, 'Eveniet minus delectus sed molestiae. Porro aut ad voluptas nihil dolorum. Mollitia labore eaque aliquam quaerat rem aut. Atque sunt est aut asperiores corporis.', 0, 0, '2001-11-03 23:49:26', '1999-11-16 15:00:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (171, 81, 22, 'Rem quia laudantium a. Quas nisi quibusdam praesentium dolorem sit omnis quos. Rerum modi possimus beatae dolorem qui. Incidunt velit rerum et et vero. Asperiores corrupti ad nulla consequatur unde voluptatibus maiores.', 0, 0, '2000-03-19 08:55:34', '2008-01-25 23:11:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (172, 89, 92, 'Reiciendis eum quisquam ut ut quos et et. Aliquam nemo qui molestiae eum ut possimus ullam. At reiciendis porro provident recusandae est id. Quas est unde est alias magni vitae nulla ea. Qui sed eveniet aperiam velit dolor repellendus.', 1, 1, '1985-09-07 07:41:38', '1976-10-30 01:12:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (173, 24, 16, 'Neque nobis ipsam nam aperiam excepturi sequi. Qui quia animi aut quos repudiandae illo asperiores. Consequuntur ipsa dolor repellendus odio. Doloremque at et vitae quidem atque rerum et. Perspiciatis repellat ea repellat quis natus.', 1, 0, '2012-06-30 12:38:59', '1977-09-23 14:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (174, 5, 18, 'Ipsam nemo rerum fuga vitae. Ipsum iusto perferendis autem dolorem libero rerum eos. Labore enim rerum voluptatum consequatur ea unde.', 0, 0, '2006-05-29 17:15:46', '2000-02-06 03:53:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (175, 95, 21, 'Nihil dolorum fugiat illo molestiae sunt modi. Et illum porro quaerat ab et debitis est totam.', 1, 0, '1993-03-24 03:11:29', '1983-09-04 11:28:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (176, 2, 58, 'Nihil nemo officia sint sunt et occaecati eius. Inventore quaerat ratione dolorem assumenda iure eligendi id. Ut dolor iure dolores incidunt sunt ratione at.', 1, 1, '2017-02-09 02:58:07', '2010-01-09 09:16:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (177, 20, 48, 'Necessitatibus perspiciatis totam odit aspernatur. Iste nemo fuga architecto nisi sit sapiente autem. Eum quia voluptas sunt enim facere. Sint ut eos atque ipsam accusantium maxime.', 1, 0, '1973-10-06 16:31:15', '1974-08-10 17:46:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (178, 92, 84, 'Veritatis libero qui est. Nulla nulla porro itaque numquam nihil repudiandae voluptatum. Blanditiis eos alias omnis voluptatibus eos iusto. Dolor distinctio quae molestias laudantium nihil perferendis similique. Quia aspernatur dolorum error illum vel.', 1, 1, '1993-06-01 12:57:03', '2004-04-05 03:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (179, 4, 2, 'Corrupti aut repudiandae veniam libero harum sit. Natus tenetur eum qui ipsum ut et tempora minus. Labore sed occaecati sint laudantium qui fuga et eligendi. Sapiente nemo ea maiores alias in.', 1, 1, '1992-06-24 03:01:21', '2003-09-28 11:44:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (180, 41, 80, 'Voluptas qui est doloribus ipsum qui veniam officiis. Ipsam rem molestiae vel iste iure minima nemo culpa. Neque aliquid qui earum laborum. Delectus est pariatur earum sed reprehenderit.', 0, 1, '1997-06-25 14:14:24', '2006-02-16 21:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (181, 91, 60, 'Possimus ipsum et praesentium omnis et est repudiandae est. In placeat placeat excepturi ex. Totam optio id inventore.', 1, 1, '1982-07-15 21:10:01', '2018-12-04 19:07:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (182, 4, 51, 'Amet et maiores officiis autem ut. Aliquid quis pariatur quia totam quo. Nulla itaque pariatur iure exercitationem rem ipsum. Architecto quod provident molestiae illum.', 0, 1, '1990-02-14 00:08:47', '1992-03-10 10:40:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (183, 73, 58, 'Qui quod harum sed minima nihil velit et. Qui commodi aliquid nemo placeat voluptatem incidunt quia aut. Harum voluptas sint molestiae saepe quidem molestiae. Rerum omnis at delectus fugiat est a ut.', 1, 0, '1990-06-20 07:50:44', '2007-02-17 03:07:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (184, 30, 63, 'Laudantium rerum vitae aut dolores odio et aut. Qui corrupti placeat culpa veniam aut velit. Asperiores sint quidem expedita et maxime placeat reiciendis. Cum est vel quidem odit exercitationem.', 1, 0, '2008-04-02 10:46:41', '1997-10-22 09:09:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (185, 64, 22, 'Quasi animi qui consequatur. Dignissimos eaque expedita delectus. Harum eos deleniti nostrum dignissimos non.', 1, 1, '1974-11-25 02:33:45', '2000-01-01 19:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (186, 40, 44, 'Impedit ipsa quos neque est necessitatibus voluptatibus. Iure et sunt optio totam omnis asperiores quo voluptatem. Doloribus animi voluptatem et maiores quis.', 0, 1, '1995-11-02 08:59:36', '2010-06-09 05:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (187, 44, 28, 'Totam voluptas sequi sit et. Eum velit ad rerum. Eos consequuntur nobis omnis ut.', 1, 0, '2012-06-23 22:07:44', '1992-10-30 12:35:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (188, 35, 67, 'Excepturi debitis veniam illo at repellat sed. Nesciunt neque voluptatem quasi et dignissimos omnis adipisci. Ex quae asperiores unde id atque qui aspernatur. Fugit dolore velit laboriosam adipisci eos.', 1, 1, '1974-04-02 20:57:55', '2016-01-13 02:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (189, 44, 40, 'Est eius voluptatum atque quidem ducimus officiis. Provident sit ratione maiores doloribus est suscipit at rerum. Sed officiis impedit expedita itaque iusto.', 1, 1, '1982-05-27 08:45:21', '1998-02-04 12:56:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (190, 85, 38, 'Quae aut illo optio consequatur velit sapiente. Id impedit ipsum quos soluta hic.', 0, 0, '2013-05-10 05:37:32', '2002-01-09 01:50:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (191, 61, 86, 'Quae est quod autem perspiciatis atque sed consectetur repudiandae. Similique et doloribus eos et.', 0, 1, '2004-06-13 13:38:03', '2017-04-11 07:54:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (192, 96, 80, 'Sed atque rerum cum temporibus hic. Quo omnis eius veniam similique magnam recusandae. Nesciunt eum aut consequatur voluptatum laboriosam omnis. Accusantium molestiae ea ratione voluptatem voluptatem et.', 0, 1, '2010-07-03 10:03:24', '1980-02-04 15:15:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (193, 34, 87, 'Reiciendis iste doloribus doloremque aut assumenda repellat. Molestiae amet aliquid officiis autem. Maiores et ullam debitis vel ducimus voluptas aut.', 0, 0, '2016-06-14 13:41:15', '2001-09-26 14:27:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (194, 64, 37, 'Ea ut nihil illum molestiae omnis aliquid ullam. Magni consectetur ipsa et ex aliquid. Quia quia rem corporis ut explicabo illum ut.', 1, 1, '1972-08-28 04:11:38', '2017-03-01 03:59:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (195, 88, 4, 'Est voluptas aperiam recusandae ex consequatur soluta. Sed sit vitae explicabo laborum cupiditate. Et placeat et saepe veritatis minus repudiandae architecto. Voluptatum accusamus nulla omnis similique sint aut.', 0, 0, '1990-05-18 05:10:40', '1985-04-04 01:46:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (196, 17, 79, 'Ut voluptatem dignissimos odio sint dolorem. In non ut rerum aperiam. Qui laboriosam culpa alias.', 0, 1, '2011-04-04 23:42:11', '1976-09-08 07:18:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (197, 64, 20, 'Repudiandae impedit inventore veritatis qui ducimus necessitatibus qui. Et ipsam necessitatibus ipsum et quae vel possimus. Iste sunt quod molestias sint ea. Eligendi maxime eum velit quibusdam aperiam.', 1, 1, '1992-11-25 20:56:40', '1997-04-17 00:28:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (198, 30, 36, 'Laudantium rerum ut voluptatem consequatur ut eos dolores. Ipsam distinctio quas nesciunt corrupti. Ipsam beatae esse dolor qui. Distinctio ipsa repudiandae vitae aperiam mollitia eos.', 0, 0, '1971-12-22 03:49:57', '2017-12-28 02:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (199, 77, 59, 'Ipsum doloribus quia corrupti odit blanditiis. Eum sed quas unde. Et aut earum architecto nihil perspiciatis sed voluptatem.', 0, 0, '1971-05-26 09:05:45', '1995-04-10 02:31:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (200, 99, 40, 'Facere provident rem dolorem excepturi eius consequatur fugiat. Ipsum nostrum nobis et nesciunt dolore consequatur voluptatum. Et illum nihil voluptatem architecto totam sit et.', 1, 0, '1978-07-30 00:50:34', '1993-01-27 12:40:24');


CREATE TABLE liked_content (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  content_type VARCHAR(30) NOT NULL COMMENT "Тип контента для лайков"
) COMMENT "Типы контента, который можно лайкнуть";

-- Её наполнение
INSERT INTO liked_content (content_type) VALUES
  ("media"),
  ("post"),
  ("user");
 
-- Таблица лайков
CREATE TABLE likes (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на лайкнувшего пользователя",
  content_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  content_id INT UNSIGNED NOT NULL COMMENT "Ссылка на лайкнутый контент",
  PRIMARY KEY (user_id, content_type_id, content_id) COMMENT "Составной первичный ключ",
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (content_type_id) REFERENCES liked_content(id)
) COMMENT "Лайки пользователей";

INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (74, 2, 4);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (12, 2, 53);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (77, 3, 17);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (8, 2, 58);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (11, 3, 51);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (7, 3, 62);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (62, 2, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (18, 2, 65);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (10, 1, 77);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (57, 3, 65);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (95, 3, 68);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (57, 2, 88);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (69, 3, 95);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (14, 2, 73);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (15, 3, 62);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (92, 3, 56);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (57, 2, 77);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (58, 2, 78);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (14, 2, 4);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (87, 3, 80);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (47, 2, 82);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (63, 1, 73);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (52, 1, 72);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (72, 2, 8);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (4, 2, 81);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (40, 1, 58);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (19, 2, 66);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (64, 3, 86);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (48, 2, 49);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (51, 3, 45);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (6, 1, 86);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (76, 2, 51);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (99, 2, 72);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (2, 3, 78);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 1, 54);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (89, 1, 5);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 3, 59);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (22, 3, 14);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (58, 3, 26);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 1, 15);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (89, 3, 39);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (70, 3, 35);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (75, 2, 79);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (35, 2, 94);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (12, 1, 35);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (97, 3, 32);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (90, 1, 29);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (32, 3, 23);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (54, 1, 44);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (11, 1, 23);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (56, 2, 14);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (17, 3, 65);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (47, 3, 51);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (42, 1, 88);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (95, 2, 21);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (66, 2, 56);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 3, 44);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (95, 1, 48);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (3, 1, 78);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (59, 2, 15);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 1, 78);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (61, 3, 48);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (84, 2, 75);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (65, 1, 67);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (37, 3, 73);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (85, 1, 46);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (16, 3, 47);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (49, 2, 35);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (34, 1, 45);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (100, 1, 96);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (18, 2, 41);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (14, 3, 64);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (81, 3, 48);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (66, 3, 44);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (25, 1, 86);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (58, 2, 71);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (25, 3, 21);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (3, 2, 19);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (87, 3, 7);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (95, 1, 31);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (33, 2, 5);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (38, 3, 54);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 2, 9);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (73, 3, 80);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (98, 1, 81);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (59, 1, 57);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (5, 3, 61);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (85, 2, 2);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (85, 2, 83);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (11, 2, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 3, 19);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (57, 3, 54);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (60, 1, 30);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (14, 3, 1);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (39, 3, 42);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (27, 3, 93);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (2, 2, 56);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (49, 2, 84);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (81, 2, 2);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (97, 2, 95);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (50, 3, 68);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (78, 1, 18);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 2, 36);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (60, 3, 89);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 2, 56);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (10, 2, 95);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (7, 1, 49);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (9, 2, 24);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (82, 1, 85);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (100, 2, 4);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (72, 1, 2);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (3, 3, 3);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (92, 2, 71);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (18, 2, 69);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (64, 1, 68);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (7, 3, 75);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (25, 1, 94);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (81, 3, 6);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (42, 1, 21);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (25, 3, 39);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (72, 3, 65);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (83, 2, 48);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 3, 98);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 1, 26);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (82, 1, 54);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (43, 3, 76);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (84, 3, 59);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (51, 3, 36);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (64, 1, 91);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (20, 2, 28);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (34, 3, 94);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (60, 1, 9);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (22, 1, 76);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (42, 2, 27);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (59, 1, 43);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (59, 2, 100);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (90, 3, 66);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (92, 3, 84);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (18, 1, 64);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (39, 1, 88);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (22, 1, 96);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (97, 3, 73);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (32, 1, 95);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (61, 3, 1);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (15, 3, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (5, 3, 15);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (20, 3, 96);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (25, 1, 40);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (67, 3, 19);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (31, 2, 46);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (8, 2, 15);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (97, 1, 87);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (12, 1, 31);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (54, 1, 47);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 2, 66);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (15, 2, 21);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (80, 3, 6);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (23, 3, 52);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (16, 1, 59);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (13, 3, 46);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (90, 2, 51);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (26, 1, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (8, 1, 97);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (6, 2, 35);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (96, 1, 12);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (90, 1, 14);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (16, 3, 70);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (6, 2, 28);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (86, 1, 80);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (81, 2, 68);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (97, 2, 45);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (34, 2, 34);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (34, 1, 16);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (84, 1, 85);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (48, 3, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (78, 2, 62);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (93, 2, 4);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (10, 2, 44);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (22, 3, 76);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (62, 3, 55);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (1, 2, 84);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (2, 2, 1);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (30, 1, 35);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (16, 3, 18);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (33, 1, 86);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (10, 1, 71);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (57, 1, 39);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (54, 3, 99);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (63, 2, 26);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (56, 1, 50);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (51, 1, 63);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (48, 1, 83);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (42, 1, 48);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (53, 2, 15);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (21, 3, 60);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (18, 3, 72);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (23, 2, 78);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (89, 2, 6);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (77, 2, 32);
INSERT INTO `likes` (`user_id`, `content_type_id`, `content_id`) VALUES (38, 1, 13);


