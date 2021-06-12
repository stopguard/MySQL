USE dates_checker;

INSERT INTO coordinators (`name`, `comment`) VALUES 
  ("Руководитель", "Руководитель подразделения. Так же совмещает обязанности отсутствующих в подразделении должностных лиц"),
  ("Пожарная безопасность", "Ответственный за пожарную безопасность в помещениях подразделения"),
  ("Охрана труда", "Ответственный за безопасность выполнения работ"),
  ("СИЗ", "Ответственный за исправность средств индивидуальной защиты")
;

INSERT INTO `departaments` (`name`,`comment`) VALUES 
  ("est.","lobortis. Class aptent taciti sociosqu"),
  ("non","vitae"),
  ("nulla at","mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse"),
  ("aliquam","a"),
  ("Ut","mus. Donec dignissim magna a"),
  ("Vestibulum","felis orci, adipiscing non, luctus sit amet, faucibus ut,"),
  ("lacinia orci,","montes, nascetur ridiculus"),
  ("Nunc","Vivamus nibh dolor, nonummy ac, feugiat"),
  ("metus vitae","et ipsum cursus vestibulum. Mauris"),
  ("felis. Nulla","justo. Proin non massa")
;

INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Huff","Remedios","Q");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Ferrell","Reese","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Barber","Aquila","K");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Sweet","Galvin","S");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Turner","Quail","P");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Talley","Armand","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Pickett","Allistair","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Robertson","Fuller","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Finley","Molly","U");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Cruz","Macey","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Jordan","Chloe","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Hardy","Tobias","P");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Rasmussen","Pearl","N");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Duffy","Ira","O");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Hansen","Flavia","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"William","Nolan","K");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Goodwin","Knox","F");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Gregory","Tanya","N");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Lang","Carly","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Clay","Sarah","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Lucas","Chaney","I");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Pennington","Ursa","T");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Dominguez","David","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Blanchard","Claudia","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Humphrey","Cameron","U");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Ware","Kirby","Q");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Villarreal","Hayden","E");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Gay","Garrison","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Dennis","Davis","O");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Riley","Christopher","I");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Holmes","Jared","L");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Sharpe","Maggy","E");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Marquez","Kylynn","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Cantrell","Velma","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Moody","Lewis","W");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Cooper","Sybill","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Cherry","Leo","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Nieves","Jacob","K");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Conley","Silas","S");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Manning","Carly","N");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Rios","Herrod","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Pitts","Madeline","I");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Riggs","Tanner","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Guerrero","Orlando","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Dillard","Aristotle","U");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Adkins","Kylie","Q");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Delaney","Keane","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Whitehead","Madison","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Rodgers","Indigo","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Patel","Harper","I");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Bonner","Emerald","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Alvarado","Blaine","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Francis","Rowan","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Hansen","Joshua","Z");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Richardson","Paloma","U");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Peters","Nina","C");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Logan","Aiko","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Gilbert","Karly","A");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Kelly","Eliana","I");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Walton","Dale","Q");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Klein","Vincent","P");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Neal","Belle","B");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Craig","Prescott","P");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Walls","Caleb","N");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Downs","Victor","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Villarreal","Chancellor","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Stuart","Maris","U");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Hewitt","Wallace","D");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Merrill","Stacy","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Benson","Fitzgerald","W");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Fitzpatrick","Vance","C");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Bradley","Cynthia","J");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Logan","Buffy","V");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Barlow","Heidi","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Gordon","Natalie","Y");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Day","Sheila","L");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Coleman","Serena","R");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Solis","Byron","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Mcdowell","Malachi","W");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Boyer","Leo","J");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Armstrong","Grace","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Vaughn","Joelle","G");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Woods","Roth","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Guy","Teagan","O");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Robertson","Winter","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Gaines","Calvin","M");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (9,"Thompson","Wade","Z");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (3,"Finch","Gary","B");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Duffy","Ebony","Z");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Workman","Mariam","Z");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Roach","Hall","V");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Bush","Rigel","T");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (2,"Curry","Gay","B");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (1,"Mcintosh","Evan","O");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (4,"Chavez","Angela","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (5,"Holman","Noble","C");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (8,"Turner","Carl","S");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (6,"Cruz","Gannon","F");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (7,"Stein","Jael","H");
INSERT INTO `workers` (`departament_id`,`surname`,`name`,`patronymic`) VALUES (10,"Snyder","Austin","E");

CALL set_brigadiers();
DROP PROCEDURE set_brigadiers;

INSERT INTO `item_types` (`name`,`duration`) VALUES 
  ("Перфоратор (аккум)",6),
  ("Перфоратор (пров)",6),
  ("Шуруповёрт",6),
  ("Болгарка (аккум)",6),
  ("Болгарка (пров)",6),
  ("Лестница динамика",12),
  ("Лестница 3*6",12),
  ("Лестница 3*9",12),
  ("Лестница 3*12",12),
  ("Лестница 3*15",12),
  ("Лестница ступенька",12),
  ("Набор отвёрток диэл",6),
  ("Привязь",12),
  ("Строп",12),
  ("Аммортизатор 2м",12),
  ("Аммортизатор 3м",12),
  ("Бокорезы 15см диэл",6),
  ("Бокорезы 20см диэл",6),
  ("Плоскогубцы 15см диэл",6),
  ("Плоскогубцы 20см диэл",6)
;

INSERT INTO `certificate_types` (`name`,`change_duration`,`attestation_duration`) VALUES 
  ("ВТМ",12,12),
  ("Высота 1гр",36,12),
  ("Высота 2гр",36,12),
  ("Высота 3гр",60,12),
  ("Люлька",60,12),
  ("Охрана труда",12,12),
  ("Охрана труда (внеш)",36,36),
  ("Первая помощь",12,12),
  ("ПТМ",12,12),
  ("Стропальщик",60,12)
;

INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (68,9,"2020-11-26"),(81,14,"2021-02-15"),(35,9,"2020-07-05"),(11,16,"2021-01-16"),(47,6,"2020-09-24"),(66,12,"2020-10-16"),(53,16,"2020-06-18"),(77,18,"2020-08-29"),(15,7,"2020-08-07"),(67,11,"2021-03-18");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (28,7,"2021-06-06"),(2,17,"2020-09-07"),(55,19,"2020-09-10"),(69,8,"2021-01-24"),(91,4,"2020-10-20"),(46,1,"2021-01-23"),(94,12,"2021-05-26"),(40,9,"2021-05-13"),(73,5,"2021-05-31"),(79,5,"2021-02-28");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (96,11,"2021-05-18"),(91,14,"2021-05-25"),(52,5,"2021-05-14"),(69,20,"2020-12-17"),(9,6,"2020-07-28"),(10,1,"2020-12-06"),(95,18,"2021-01-25"),(72,6,"2020-11-13"),(29,13,"2021-01-16"),(37,15,"2020-10-05");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (3,8,"2021-04-04"),(44,17,"2020-10-22"),(38,3,"2021-01-10"),(16,3,"2021-01-22"),(36,4,"2020-12-04"),(28,1,"2020-10-25"),(20,15,"2021-04-02"),(18,1,"2021-01-05"),(76,12,"2021-01-31"),(29,7,"2021-04-19");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (48,12,"2020-08-16"),(94,3,"2020-07-01"),(47,20,"2020-10-15"),(96,3,"2020-11-14"),(98,20,"2021-04-03"),(41,14,"2020-12-12"),(59,3,"2020-09-24"),(59,16,"2020-07-09"),(23,13,"2021-04-05"),(47,5,"2020-08-26");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (76,4,"2020-07-18"),(43,4,"2021-06-07"),(48,18,"2020-12-21"),(30,7,"2021-01-22"),(65,2,"2021-01-26"),(54,20,"2020-07-30"),(21,10,"2020-07-28"),(48,2,"2021-01-30"),(93,2,"2021-03-21"),(55,4,"2021-05-30");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (79,12,"2021-03-03"),(64,8,"2020-11-27"),(80,6,"2020-09-18"),(51,3,"2020-09-12"),(94,8,"2020-09-29"),(21,12,"2020-10-02"),(78,10,"2021-01-06"),(8,9,"2021-04-16"),(32,14,"2021-04-11"),(55,3,"2021-05-25");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (83,9,"2021-02-20"),(30,12,"2020-11-09"),(12,7,"2020-10-07"),(42,19,"2020-10-04"),(1,13,"2020-09-08"),(1,19,"2021-01-05"),(61,14,"2021-01-12"),(26,16,"2021-03-25"),(48,4,"2021-03-09"),(75,18,"2021-04-11");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (6,3,"2021-02-10"),(2,17,"2021-04-20"),(5,11,"2021-01-08"),(8,14,"2020-10-09"),(60,20,"2020-06-20"),(90,12,"2020-07-28"),(26,17,"2021-05-30"),(63,8,"2021-03-09"),(7,4,"2020-07-23"),(7,15,"2020-09-29");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (66,2,"2021-04-19"),(30,15,"2020-07-31"),(64,1,"2020-09-08"),(16,7,"2021-02-21"),(30,18,"2021-04-20"),(18,4,"2021-03-10"),(2,8,"2020-12-16"),(82,5,"2020-06-21"),(80,4,"2021-03-26"),(19,4,"2020-06-08");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (11,18,"2021-05-02"),(65,12,"2021-02-03"),(11,16,"2021-05-01"),(36,10,"2020-10-25"),(91,9,"2020-09-02"),(26,20,"2020-12-11"),(83,8,"2020-10-07"),(93,16,"2021-04-16"),(15,10,"2020-09-23"),(70,3,"2020-12-11");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (83,19,"2021-03-23"),(68,19,"2020-09-11"),(89,5,"2021-04-07"),(31,12,"2020-06-11"),(51,15,"2020-08-22"),(95,5,"2020-08-04"),(28,5,"2021-04-17"),(44,15,"2020-07-14"),(5,8,"2020-11-16"),(70,15,"2021-02-28");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (91,1,"2021-04-24"),(73,17,"2020-08-07"),(87,14,"2021-06-03"),(5,7,"2020-11-19"),(2,20,"2020-09-10"),(46,2,"2021-01-18"),(80,13,"2021-05-13"),(22,1,"2020-06-11"),(47,15,"2020-07-27"),(85,15,"2021-05-25");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (24,14,"2020-09-02"),(78,17,"2021-01-10"),(14,4,"2021-03-28"),(79,11,"2020-09-26"),(21,14,"2020-06-14"),(97,8,"2021-04-29"),(41,5,"2020-11-08"),(44,3,"2020-09-11"),(93,7,"2020-06-30"),(70,10,"2020-12-30");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (21,2,"2021-03-25"),(15,11,"2020-06-13"),(65,18,"2020-09-28"),(38,4,"2020-08-25"),(85,11,"2020-10-18"),(21,14,"2020-07-31"),(68,15,"2021-06-06"),(91,19,"2021-05-16"),(71,9,"2021-05-02"),(42,8,"2020-07-28");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (2,12,"2021-01-12"),(42,17,"2020-11-19"),(22,6,"2020-08-16"),(82,11,"2020-09-03"),(42,9,"2020-12-24"),(76,11,"2021-02-26"),(60,15,"2021-06-01"),(100,2,"2020-09-27"),(49,2,"2021-02-06"),(35,3,"2021-05-06");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (84,2,"2021-01-01"),(6,4,"2021-02-27"),(52,1,"2021-02-24"),(39,20,"2021-03-06"),(45,11,"2021-04-02"),(91,20,"2020-08-06"),(54,15,"2020-07-30"),(87,10,"2020-10-10"),(33,20,"2021-01-07"),(58,7,"2020-08-26");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (7,20,"2020-12-19"),(20,7,"2021-04-06"),(22,3,"2021-05-17"),(47,19,"2020-12-18"),(71,17,"2020-12-05"),(46,4,"2020-08-06"),(13,9,"2020-09-09"),(27,1,"2020-08-22"),(61,3,"2020-06-22"),(86,12,"2020-07-14");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (47,13,"2020-07-31"),(83,17,"2020-10-14"),(75,12,"2021-02-19"),(36,3,"2020-12-12"),(4,4,"2021-05-28"),(7,8,"2020-09-10"),(11,8,"2020-11-04"),(17,20,"2021-02-02"),(73,11,"2020-07-04"),(46,20,"2021-02-08");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (57,12,"2020-06-29"),(7,20,"2020-07-06"),(59,13,"2020-07-17"),(2,10,"2020-09-19"),(50,10,"2021-02-05"),(3,9,"2020-10-17"),(15,8,"2020-09-20"),(17,3,"2021-02-22"),(48,16,"2020-10-13"),(25,3,"2021-01-01");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (85,11,"2020-12-18"),(25,17,"2020-11-23"),(81,1,"2021-04-18"),(7,18,"2021-02-21"),(32,3,"2021-03-06"),(27,17,"2020-06-26"),(69,9,"2020-08-23"),(14,6,"2021-02-15"),(43,18,"2020-09-04"),(23,19,"2020-06-23");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (38,11,"2021-04-28"),(100,5,"2021-05-18"),(76,19,"2020-07-19"),(36,20,"2020-06-10"),(82,5,"2020-07-08"),(45,19,"2020-08-06"),(58,12,"2021-03-09"),(80,12,"2021-01-01"),(35,7,"2021-01-08"),(91,6,"2020-12-08");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (85,19,"2020-12-28"),(1,7,"2020-12-19"),(72,13,"2020-09-06"),(62,14,"2021-05-23"),(38,6,"2020-12-28"),(96,4,"2020-09-08"),(81,19,"2020-11-17"),(10,12,"2020-11-28"),(75,16,"2021-02-18"),(1,7,"2020-11-28");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (82,11,"2020-12-10"),(66,2,"2021-03-30"),(4,17,"2021-03-26"),(72,5,"2020-08-27"),(43,11,"2020-10-11"),(73,17,"2020-12-27"),(39,19,"2021-03-10"),(50,18,"2021-05-07"),(30,14,"2020-12-12"),(9,5,"2021-05-05");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (86,13,"2020-09-25"),(13,3,"2021-05-24"),(38,14,"2020-08-27"),(62,15,"2020-07-11"),(31,7,"2020-11-23"),(79,12,"2020-08-26"),(43,17,"2020-08-16"),(30,15,"2020-10-10"),(92,4,"2020-12-02"),(90,18,"2020-12-07");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (40,17,"2021-01-06"),(33,3,"2020-09-28"),(25,7,"2020-12-18"),(47,5,"2020-12-14"),(90,4,"2020-07-08"),(86,5,"2021-05-21"),(85,16,"2020-12-05"),(70,14,"2021-01-19"),(77,5,"2021-02-06"),(62,19,"2021-03-11");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (1,2,"2020-07-08"),(51,20,"2020-09-24"),(44,10,"2021-01-06"),(1,17,"2020-09-20"),(4,5,"2020-07-07"),(98,2,"2020-08-11"),(12,20,"2021-05-16"),(17,16,"2020-08-15"),(52,11,"2020-10-16"),(76,11,"2020-11-10");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (16,17,"2020-08-29"),(21,5,"2020-06-19"),(25,20,"2021-01-19"),(88,19,"2021-06-06"),(33,19,"2020-12-02"),(56,11,"2020-07-22"),(49,17,"2020-12-15"),(68,6,"2020-06-23"),(73,14,"2021-04-26"),(92,13,"2020-12-15");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (93,1,"2020-12-27"),(52,12,"2021-05-16"),(41,4,"2021-02-05"),(97,1,"2020-08-08"),(60,14,"2021-03-18"),(93,17,"2021-02-10"),(73,16,"2021-01-26"),(68,1,"2020-09-25"),(23,16,"2020-11-24"),(83,6,"2021-01-10");
INSERT INTO `items` (`worker_id`,`item_type_id`,`last_check`) VALUES (92,13,"2021-04-25"),(98,1,"2020-08-04"),(25,6,"2021-03-25"),(28,5,"2020-11-19"),(75,9,"2020-06-28"),(39,9,"2020-11-13"),(47,5,"2020-06-27"),(33,13,"2020-10-21"),(81,1,"2021-01-22"),(97,9,"2020-09-08");

CALL update_itemdates();
DROP PROCEDURE update_itemdates;

INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (69,4,"2020-06-07","2021-04-04"),(98,8,"2020-06-07","2020-07-10"),(48,8,"2020-06-07","2020-09-13"),(19,6,"2020-06-07","2021-03-05"),(3,5,"2020-06-07","2020-11-27"),(33,4,"2020-06-07","2021-03-04"),(100,1,"2020-06-07","2021-02-27"),(99,5,"2020-06-07","2020-10-07"),(35,1,"2020-06-07","2020-09-02"),(26,10,"2020-06-07","2020-09-29");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (44,2,"2020-06-07","2020-10-23"),(49,1,"2020-06-07","2020-11-15"),(82,1,"2020-06-07","2021-01-30"),(53,7,"2020-06-07","2020-10-10"),(94,8,"2020-06-07","2021-05-21"),(17,7,"2020-06-07","2020-12-01"),(11,4,"2020-06-07","2020-11-06"),(24,2,"2020-06-07","2021-02-27"),(36,6,"2020-06-07","2021-04-11"),(49,6,"2020-06-07","2020-09-16");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (84,6,"2020-06-07","2021-03-02"),(2,8,"2020-06-07","2021-02-28"),(27,1,"2020-06-07","2020-10-09"),(92,3,"2020-06-07","2021-01-26"),(26,7,"2020-06-07","2020-07-04"),(30,7,"2020-06-07","2020-12-17"),(15,2,"2020-06-07","2021-02-23"),(68,7,"2020-06-07","2021-05-11"),(26,7,"2020-06-07","2021-05-23"),(4,6,"2020-06-07","2021-06-01");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (57,8,"2020-06-07","2020-10-27"),(6,3,"2020-06-07","2020-06-19"),(12,1,"2020-06-07","2020-10-26"),(45,4,"2020-06-07","2021-04-03"),(52,10,"2020-06-07","2020-10-04"),(44,9,"2020-06-07","2021-03-18"),(5,6,"2020-06-07","2020-08-30"),(60,9,"2020-06-07","2021-02-05"),(15,10,"2020-06-07","2021-05-27"),(32,3,"2020-06-07","2020-07-16");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (13,9,"2020-06-07","2020-10-08"),(29,2,"2020-06-07","2020-08-12"),(6,4,"2020-06-07","2020-09-10"),(22,7,"2020-06-07","2020-10-28"),(90,9,"2020-06-07","2020-11-15"),(4,1,"2020-06-07","2020-10-31"),(36,10,"2020-06-07","2020-10-11"),(15,6,"2020-06-07","2020-11-09"),(78,2,"2020-06-07","2020-08-04"),(34,5,"2020-06-07","2021-02-02");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (48,1,"2020-06-07","2020-11-17"),(43,1,"2020-06-07","2020-09-23"),(2,5,"2020-06-07","2020-12-31"),(77,6,"2020-06-07","2021-02-14"),(10,6,"2020-06-07","2021-01-02"),(48,6,"2020-06-07","2021-03-06"),(70,8,"2020-06-07","2020-11-04"),(45,7,"2020-06-07","2020-09-28"),(35,7,"2020-06-07","2021-02-23"),(60,5,"2020-06-07","2021-05-03");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (32,4,"2020-06-07","2020-06-10"),(38,5,"2020-06-07","2020-08-07"),(28,4,"2020-06-07","2021-05-24"),(92,8,"2020-06-07","2021-03-14"),(83,1,"2020-06-07","2020-09-20"),(31,8,"2020-06-07","2020-09-02"),(76,10,"2020-06-07","2021-04-20"),(98,5,"2020-06-07","2021-05-24"),(82,8,"2020-06-07","2021-03-29"),(17,4,"2020-06-07","2020-11-05");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (90,1,"2020-06-07","2020-07-11"),(27,8,"2020-06-07","2021-04-15"),(30,5,"2020-06-07","2021-04-05"),(90,8,"2020-06-07","2020-12-21"),(52,10,"2020-06-07","2020-10-17"),(57,9,"2020-06-07","2021-03-11"),(67,6,"2020-06-07","2020-08-14"),(6,4,"2020-06-07","2021-01-05"),(27,6,"2020-06-07","2020-07-27"),(53,8,"2020-06-07","2021-06-03");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (72,6,"2020-06-07","2020-07-15"),(15,5,"2020-06-07","2020-11-01"),(92,7,"2020-06-07","2020-12-26"),(84,5,"2020-06-07","2021-04-05"),(96,8,"2020-06-07","2020-06-14"),(41,8,"2020-06-07","2021-02-16"),(66,8,"2020-06-07","2021-04-12"),(57,10,"2020-06-07","2020-07-11"),(14,6,"2020-06-07","2020-06-26"),(16,10,"2020-06-07","2021-04-30");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (97,1,"2020-06-07","2020-10-28"),(35,6,"2020-06-07","2021-06-02"),(42,2,"2020-06-07","2021-01-09"),(40,5,"2020-06-07","2020-11-20"),(39,6,"2020-06-07","2021-01-09"),(88,8,"2020-06-07","2020-08-19"),(95,10,"2020-06-07","2020-06-14"),(12,4,"2020-06-07","2020-10-18"),(45,7,"2020-06-07","2021-02-12"),(27,2,"2020-06-07","2020-11-11");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (67,8,"2020-06-07","2020-10-19"),(66,8,"2020-06-07","2020-12-18"),(95,4,"2020-06-07","2021-06-01"),(29,1,"2020-06-07","2021-02-21"),(79,10,"2020-06-07","2021-04-11"),(86,10,"2020-06-07","2021-03-04"),(33,2,"2020-06-07","2020-07-04"),(96,4,"2020-06-07","2021-04-27"),(14,7,"2020-06-07","2021-05-10"),(2,5,"2020-06-07","2020-10-09");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (27,6,"2020-06-07","2020-07-17"),(16,1,"2020-06-07","2020-10-20"),(20,4,"2020-06-07","2020-09-12"),(16,6,"2020-06-07","2021-04-24"),(99,4,"2020-06-07","2021-04-20"),(87,8,"2020-06-07","2021-05-18"),(64,10,"2020-06-07","2020-11-29"),(62,6,"2020-06-07","2020-09-21"),(31,2,"2020-06-07","2021-06-02"),(41,9,"2020-06-07","2020-07-19");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (29,4,"2020-06-07","2020-11-14"),(19,9,"2020-06-07","2021-05-09"),(24,3,"2020-06-07","2020-09-10"),(51,6,"2020-06-07","2021-05-21"),(73,10,"2020-06-07","2020-11-30"),(87,2,"2020-06-07","2020-10-27"),(41,5,"2020-06-07","2020-08-21"),(36,4,"2020-06-07","2021-01-18"),(52,5,"2020-06-07","2021-02-03"),(51,10,"2020-06-07","2021-04-25");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (37,3,"2020-06-07","2021-01-01"),(89,6,"2020-06-07","2020-09-28"),(54,2,"2020-06-07","2020-09-23"),(34,4,"2020-06-07","2020-08-29"),(22,4,"2020-06-07","2021-02-25"),(42,5,"2020-06-07","2020-09-12"),(33,5,"2020-06-07","2020-12-02"),(39,1,"2020-06-07","2020-10-29"),(48,8,"2020-06-07","2020-08-23"),(27,1,"2020-06-07","2020-12-18");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (25,8,"2020-06-07","2020-12-10"),(91,10,"2020-06-07","2020-09-23"),(89,10,"2020-06-07","2021-04-14"),(43,5,"2020-06-07","2021-02-16"),(83,3,"2020-06-07","2021-02-23"),(61,3,"2020-06-07","2020-11-14"),(29,7,"2020-06-07","2020-09-24"),(11,4,"2020-06-07","2020-12-14"),(71,2,"2020-06-07","2020-12-05"),(84,10,"2020-06-07","2020-08-22");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (59,9,"2020-06-07","2021-06-07"),(86,3,"2020-06-07","2020-06-18"),(49,3,"2020-06-07","2020-10-29"),(8,4,"2020-06-07","2021-04-11"),(91,3,"2020-06-07","2021-03-17"),(2,9,"2020-06-07","2020-07-08"),(29,1,"2020-06-07","2020-11-14"),(81,2,"2020-06-07","2021-01-22"),(91,3,"2020-06-07","2020-10-15"),(27,7,"2020-06-07","2021-02-25");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (22,5,"2020-06-07","2021-02-01"),(78,8,"2020-06-07","2020-10-12"),(97,8,"2020-06-07","2020-11-10"),(53,3,"2020-06-07","2021-01-14"),(63,9,"2020-06-07","2021-03-20"),(83,1,"2020-06-07","2020-06-14"),(21,5,"2020-06-07","2021-05-03"),(45,2,"2020-06-07","2020-11-18"),(32,3,"2020-06-07","2021-05-19"),(66,6,"2020-06-07","2020-07-08");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (49,3,"2020-06-07","2021-06-06"),(43,9,"2020-06-07","2021-01-16"),(80,7,"2020-06-07","2020-12-30"),(74,7,"2020-06-07","2021-05-25"),(51,8,"2020-06-07","2020-10-13"),(43,9,"2020-06-07","2020-07-28"),(18,8,"2020-06-07","2021-04-06"),(36,5,"2020-06-07","2021-06-04"),(38,5,"2020-06-07","2021-02-09"),(39,3,"2020-06-07","2021-01-06");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (28,8,"2020-06-07","2020-06-24"),(99,3,"2020-06-07","2020-08-16"),(61,5,"2020-06-07","2020-08-14"),(5,2,"2020-06-07","2020-11-02"),(6,9,"2020-06-07","2020-11-22"),(62,2,"2020-06-07","2020-08-15"),(8,9,"2020-06-07","2021-02-28"),(86,6,"2020-06-07","2020-08-01"),(51,3,"2020-06-07","2020-09-14"),(79,7,"2020-06-07","2021-04-27");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (43,4,"2020-06-07","2021-05-30"),(94,10,"2020-06-07","2021-05-27"),(68,6,"2020-06-07","2021-05-01"),(53,7,"2020-06-07","2020-08-17"),(41,9,"2020-06-07","2020-08-11"),(79,1,"2020-06-07","2020-10-11"),(29,10,"2020-06-07","2021-03-28"),(13,2,"2020-06-07","2021-01-29"),(67,7,"2020-06-07","2020-12-31"),(40,2,"2020-06-07","2021-05-29");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (20,4,"2020-06-07","2020-12-22"),(36,4,"2020-06-07","2021-03-03"),(12,1,"2020-06-07","2021-01-23"),(84,8,"2020-06-07","2021-04-04"),(16,4,"2020-06-07","2020-08-12"),(5,2,"2020-06-07","2020-12-15"),(70,1,"2020-06-07","2021-01-03"),(83,9,"2020-06-07","2020-11-30"),(54,1,"2020-06-07","2020-12-17"),(70,5,"2020-06-07","2020-09-25");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (52,1,"2020-06-07","2021-03-18"),(96,2,"2020-06-07","2021-02-12"),(70,9,"2020-06-07","2021-04-10"),(22,4,"2020-06-07","2020-12-05"),(76,8,"2020-06-07","2020-07-28"),(13,1,"2020-06-07","2021-02-13"),(62,5,"2020-06-07","2020-10-31"),(11,5,"2020-06-07","2020-12-31"),(28,3,"2020-06-07","2021-03-15"),(93,10,"2020-06-07","2020-12-28");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (35,2,"2020-06-07","2021-05-28"),(18,7,"2020-06-07","2020-09-12"),(22,9,"2020-06-07","2021-01-13"),(81,4,"2020-06-07","2020-11-20"),(78,1,"2020-06-07","2021-03-11"),(27,6,"2020-06-07","2021-05-27"),(22,1,"2020-06-07","2020-07-17"),(1,6,"2020-06-07","2020-08-08"),(71,9,"2020-06-07","2021-01-20"),(3,9,"2020-06-07","2020-08-24");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (65,10,"2020-06-07","2020-09-29"),(31,8,"2020-06-07","2021-05-15"),(75,5,"2020-06-07","2020-09-12"),(73,7,"2020-06-07","2020-06-15"),(69,1,"2020-06-07","2021-03-10"),(73,7,"2020-06-07","2020-07-11"),(99,3,"2020-06-07","2020-07-30"),(26,7,"2020-06-07","2020-12-20"),(1,2,"2020-06-07","2020-08-14"),(43,1,"2020-06-07","2020-10-24");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (56,3,"2020-06-07","2021-05-27"),(7,6,"2020-06-07","2021-06-04"),(33,8,"2020-06-07","2020-12-03"),(12,1,"2020-06-07","2020-11-29"),(36,3,"2020-06-07","2020-06-29"),(34,7,"2020-06-07","2021-05-13"),(7,7,"2020-06-07","2020-10-22"),(81,8,"2020-06-07","2021-01-19"),(2,5,"2020-06-07","2020-07-19"),(9,3,"2020-06-07","2021-03-11");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (70,3,"2020-06-07","2020-06-20"),(23,3,"2020-06-07","2020-08-31"),(72,5,"2020-06-07","2020-12-28"),(76,6,"2020-06-07","2020-09-30"),(1,5,"2020-06-07","2021-01-16"),(47,9,"2020-06-07","2021-05-08"),(80,1,"2020-06-07","2020-12-31"),(61,7,"2020-06-07","2020-08-17"),(51,4,"2020-06-07","2021-06-02"),(12,5,"2020-06-07","2020-11-27");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (50,8,"2020-06-07","2021-01-28"),(25,4,"2020-06-07","2020-10-07"),(14,2,"2020-06-07","2021-05-19"),(5,9,"2020-06-07","2021-03-15"),(78,6,"2020-06-07","2020-11-11"),(40,7,"2020-06-07","2020-11-17"),(30,5,"2020-06-07","2020-07-03"),(56,10,"2020-06-07","2020-08-01"),(34,1,"2020-06-07","2020-12-10"),(58,8,"2020-06-07","2020-10-03");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (11,8,"2020-06-07","2021-01-20"),(53,10,"2020-06-07","2020-09-08"),(14,8,"2020-06-07","2021-04-25"),(56,9,"2020-06-07","2020-08-17"),(67,8,"2020-06-07","2020-08-06"),(99,8,"2020-06-07","2020-06-10"),(15,8,"2020-06-07","2020-06-30"),(14,2,"2020-06-07","2021-03-09"),(68,2,"2020-06-07","2020-10-24"),(4,1,"2020-06-07","2021-05-09");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (70,3,"2020-06-07","2020-06-12"),(68,4,"2020-06-07","2020-09-15"),(98,7,"2020-06-07","2021-04-24"),(87,9,"2020-06-07","2020-08-26"),(73,5,"2020-06-07","2020-09-11"),(57,5,"2020-06-07","2020-10-23"),(42,5,"2020-06-07","2020-09-27"),(26,7,"2020-06-07","2020-07-01"),(97,4,"2020-06-07","2021-04-16"),(63,10,"2020-06-07","2021-03-10");
INSERT INTO `certificates` (`worker_id`,`certificate_type_id`,`give_date`,`last_attestation`) VALUES (52,5,"2020-06-07","2021-02-27"),(30,5,"2020-06-07","2020-11-28"),(87,10,"2020-06-07","2020-06-13"),(4,5,"2020-06-07","2021-03-05"),(40,3,"2020-06-07","2020-10-20"),(88,3,"2020-06-07","2020-10-08"),(30,3,"2020-06-07","2020-11-10"),(7,10,"2020-06-07","2021-06-03"),(62,6,"2020-06-07","2020-08-27"),(97,10,"2020-06-07","2020-11-08");

CALL update_certdates();
DROP PROCEDURE update_certdates;

INSERT IGNORE INTO `chat_ids` VALUES 
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101)),
  (FLOOR(RAND() * 1000000), FLOOR(RAND() * 101))
;

CALL add_alarms();
DROP PROCEDURE add_alarms;






