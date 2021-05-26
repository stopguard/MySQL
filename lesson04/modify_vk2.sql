USE vk2;

-- === Таблица пользователей ===
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

-- === Таблица профилей ===
DROP TABLE IF EXISTS genders;
CREATE TEMPORARY TABLE genders (name CHAR(1));
INSERT INTO genders VALUES ("M"), ("F");
UPDATE profiles SET 
  gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1) 
WHERE 
  gender IS NULL OR gender = ""
;

-- добавляем таблицу статусов и ссылки на нее
DROP TABLE IF EXISTS user_statuses;
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL COMMENT "Название статуса",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания",
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время изменения"
) COMMENT "Список статусов";

INSERT INTO user_statuses (name) VALUES
  ("single"),
  ("married")
;

UPDATE profiles SET status = NULL;
ALTER TABLE profiles RENAME COLUMN status TO user_status_id;
ALTER TABLE profiles MODIFY COLUMN user_status_id INT UNSIGNED;
UPDATE profiles SET
  user_status_id = (SELECT id FROM user_statuses ORDER BY RAND() LIMIT 1) 
WHERE 
  user_status_id IS NULL OR user_status_id = ""
;

-- добавляем таблицу городов и ссылки на нее
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL COMMENT "Название",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания",
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время изменения"
) COMMENT "Список городов";

INSERT INTO countries (name) VALUES
  ("РФ"),
  ("Украина"),
  ("Беларусь"),
  ("Эстония"),
  ("Германия"),
  ("Греция"),
  ("Австралия"),
  ("США"),
  ("Канада"),
  ("Дания")
;

-- добавляем таблицу стран и ссылки на нее
DROP TABLE IF EXISTS cities;
CREATE TABLE cities LIKE countries;
ALTER TABLE cities ADD COLUMN country_id INT UNSIGNED AFTER id;

INSERT INTO cities (country_id, name) VALUES
  (1, "Москва"),
  (1, "Санкт-Петербург"),
  (2, "Киев"),
  (2, "Чернигов"),
  (3, "Минск"),
  (3, "Бобруйск"),
  (4, "Нарва"),
  (4, "Таллин"),
  (5, "Берлин"),
  (5, "Гамбург"),
  (6, "Афины"),
  (6, "Салоники"),
  (7, "Сидней"),
  (7, "Мельбурн"),
  (8, "Вашингтон"),
  (8, "Нью-Йорк"),
  (9, "Ванкувер"),
  (9, "Торонто"),
  (10, "Копенгаген"),
  (10, "Рибе")
;

UPDATE profiles SET country = NULL, city = NULL;

ALTER TABLE profiles RENAME COLUMN city TO city_id;
ALTER TABLE profiles MODIFY COLUMN city_id INT UNSIGNED;
ALTER TABLE profiles RENAME COLUMN country TO country_id;
ALTER TABLE profiles MODIFY COLUMN country_id INT UNSIGNED;
UPDATE profiles SET 
  city_id = (SELECT id FROM cities ORDER BY RAND() LIMIT 1) 
WHERE 
  city_id IS NULL
;

UPDATE profiles SET 
  country_id = (SELECT country_id FROM cities WHERE id = city_id) 
WHERE 
  country_id IS NULL
;

-- === Таблица сообщений ===
ALTER TABLE messages ADD COLUMN media_id INT UNSIGNED AFTER body;
UPDATE messages SET to_user_id = FLOOR(1 + RAND() * 100) WHERE from_user_id = to_user_id;
UPDATE messages SET media_id = FLOOR(1 + RAND() * 100) WHERE media_id IS NULL;

-- === Таблица типов медиа ===
TRUNCATE media_types;

INSERT INTO media_types (name) VALUES
  ("photo"),
  ("video"),
  ("audio")
;

-- === Таблица медиа ===
UPDATE media SET user_id = FLOOR(1 + RAND() * 100),
                 media_type_id = (SELECT id FROM media_types ORDER BY RAND() LIMIT 1)
;

UPDATE media SET `size` = FLOOR(10000 + RAND() * 1000000) WHERE `size` < 1000;

DROP TABLE IF EXISTS extentions;
CREATE TEMPORARY TABLE extentions (name VARCHAR(10), type_id INT UNSIGNED);
INSERT INTO extentions VALUES ("jpg", 1), ("avi", 2), ("mp3", 3), ("png", 1), ("mpg", 2), ("wav", 3);

UPDATE media SET 
  filename = CONCAT(
    "http://blablabla.itd/vk2/",
    filename,
    ".",
    (SELECT name FROM extentions WHERE type_id = media_type_id ORDER BY RAND() LIMIT 1)),
  metadata = CONCAT(
    '{"owner":"',
    (SELECT CONCAT(first_name, " ", last_name) FROM users WHERE id = user_id),
    '"}');

ALTER TABLE media MODIFY COLUMN metadata JSON;

-- === Таблица статусов дружб ===
TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
  ("Requed"),
  ("Coirmed"),
  ("Reected")
;

INSERT INTO friendship_statuses (id, name) VALUES
  (1, "Requested"),
  (2, "Confirmed"),
  (3, "Rejected")
  ON DUPLICATE KEY UPDATE name = VALUES (name)
;

-- === Таблица дружб ===
/*!40000 ALTER TABLE `friendship` DISABLE KEYS*/;
UPDATE friendship SET
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100),
  status_id = (SELECT id FROM friendship_statuses ORDER BY RAND() LIMIT 1)
;

UPDATE friendship SET friend_id = friend_id + 1 WHERE user_id = friend_id;
/*!40000 ALTER TABLE `friendship` ENABLE KEYS*/;

-- === Таблица групп ===
DELETE FROM communities WHERE id > 20;
UPDATE communities SET updated_at = NOW() WHERE created_at > updated_at;

-- === Таблица связей групп с пользователями ===
UPDATE communities_users SET community_id = (SELECT id FROM communities ORDER BY RAND() LIMIT 1);

-- SHOW tables;
-- SELECT * FROM users LIMIT 10;
-- SELECT * FROM profiles LIMIT 10;
-- SELECT * FROM countries;
-- SELECT * FROM cities;
-- SELECT * FROM messages LIMIT 10;
-- SELECT * FROM media_types;
-- SELECT * FROM media LIMIT 10;
-- SELECT * FROM friendship_statuses;
-- SELECT * FROM friendship LIMIT 10;
-- SELECT * FROM communities;
-- SELECT * FROM communities_users LIMIT 10;
