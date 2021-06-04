-- некоторые команды могут выглядеть странно т.к. для формирования таблиц использовались
-- слегка подправленные команды из дампов и show create table

-- === Домашнее задание 09 ==
-- === Задача 1-1 ===
-- В бд shop и sample идентичные таблицы. Переместить запись id = 1 из shop.users в sample.users с помощью транзакций.

-- готовим первую таблицу (из дампов и с помощью show create table)
CREATE DATABASE IF NOT EXISTS hw09_shop;
USE hw09_shop;
DROP TABLE IF EXISTS hw09_users;
CREATE TABLE hw09_users (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='Покупатели';
INSERT INTO hw09_users (name, birthday_at) VALUES 
  ("rasras", "1991-01-10"),
  ("dvadva", "1992-11-15"),
  ("tritri", "1993-06-19")
;

-- готовим вторую таблицу (из дампов и с помощью show create table)
CREATE DATABASE IF NOT EXISTS hw09_sample;
DROP TABLE IF EXISTS hw09_sample.hw09_users;
CREATE TABLE hw09_sample.hw09_users (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='Покупатели';
INSERT INTO hw09_sample.hw09_users (name, birthday_at) VALUES 
  ("nulnul", "2000-01-01")
;

-- транзакция
START TRANSACTION;

INSERT INTO hw09_sample.hw09_users (name, birthday_at) 
  SELECT u.name, u.birthday_at FROM hw09_users u WHERE u.id = 1
;

DELETE FROM hw09_users WHERE id = 1;

COMMIT;

-- === Задача 1-2 ===
-- Создать представление выводящее название продукта и каталога

-- готовим таблицы (из дампов и с помощью show create table)
DROP TABLE IF EXISTS hw09_products;
CREATE TABLE hw09_products (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='Товарные позиции';

INSERT INTO hw09_products VALUES 
  (1,'fdsfdsfs','fdsfdsf',576.90,1,'2021-08-01 15:15:47','2021-05-23 17:39:58'),
  (2,'vcbvcbvcbvc','mnmnbbn',53656.20,1,'2021-08-04 15:10:14','2021-05-23 17:39:58'),
  (3,'fdsfdsfs','fdsfdsf',69200.00,2,'2021-08-16 15:10:14','2021-05-23 15:10:14'),
  (4,'dsf gfg','dsgggg',70421.40,1,'2021-08-17 15:10:14','2021-05-23 17:39:58'),
  (5,'kjhkjhkh','kkkkjjjj',63866.00,2,'2021-08-23 15:15:47','2021-05-23 15:15:47'),
  (6,'vcbvcbvcbvc','mnmnbbn',9234.00,2,'2021-08-24 15:15:47','2021-05-23 15:15:47')
;

DROP TABLE IF EXISTS hw09_catalogs;
CREATE TABLE hw09_catalogs (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела'
) COMMENT='Разделы интернет-магазина';

INSERT INTO hw09_catalogs VALUES 
  (1,'Мат.платы'),
  (2,'Видеокарты'),
  (3,'Процессоры')
;

-- создаём представление
DROP VIEW IF EXISTS products_catalogs;
CREATE VIEW products_catalogs AS 
  SELECT p.name product, c.name `catalog`
  FROM hw09_products p 
  JOIN hw09_catalogs c 
    ON p.catalog_id = c.id 
;

-- === Задача 1-3 ===
-- Составить запрос выводящий в одном столбце все возможные дни августа, 
-- а в другом столбце 1 если дата присутствует в таблице записей или 0 если отсутствует

-- готовим временную таблицу дней используя заведомо более длинную таблицу
DROP TABLE IF EXISTS augusts_days;
CREATE TEMPORARY TABLE augusts_days (days TINYINT);
SET @start := 0;
INSERT INTO augusts_days
  SELECT @start := @start + 1 AS id FROM mysql.help_keyword LIMIT 31;

-- за основу возьму таблицу hw09_products т.к. я там как раз указал даты августа
-- если нужно даты конкретного года, то при преобразовании значений временной таблицы
-- в формат полной даты запрос становится ещё проще и сводится к тупому сравнению
-- даты временной таблицы с датой в таблице товаров
SELECT 
    ad.days, 
    hp.created_at IS NOT NULL AS exsist
  FROM augusts_days ad 
  LEFT JOIN hw09_products hp
    ON MONTH(hp.created_at) = 8 AND DAYOFMONTH(hp.created_at) = ad.days
;

-- === Задача 1-4 ===
-- создать запрос удаляющий все записи кроме 5 самых свежих. определяющее поле created_at

-- снова создаём временную таблицу тк мускул не умеет в лимит в подзапросах проверок включений
DROP VIEW IF EXISTS created;
CREATE VIEW created AS
  SELECT created_at FROM hw09_products ORDER BY created_at DESC LIMIT 5
;

-- тут используем ту же таблицу товаров для выполнения задания
DELETE FROM hw09_products 
  WHERE created_at NOT IN (SELECT created_at FROM created);

-- === Задача 2-1 ===
-- Создать двух пользователей имеющих доступ к указанной бд.
-- Один должен иметь права только на чтение в ней
-- Другой на любые операции в ее рамках

-- у меня выставлена политика на пароли MEDIUM поэтому пароли странные
CREATE USER IF NOT EXISTS shop_read IDENTIFIED BY "pAss_111";
GRANT USAGE, SELECT ON hw09_shop.* TO shop_read;

CREATE USER IF NOT EXISTS shop IDENTIFIED BY "pAss_222";
GRANT ALL ON shop.* TO shop_read;

-- === Задача 2-2 ===
-- Имеется таблица содержащая столбы с айди, юзером и паролем. 
-- Создать представление предоставляющее доступ к первым двум столбцам.
-- Создать пользователя который не имеет доступ к исходной таблице, но может читать данные из представления.

-- создаём таблицу с логпассами
DROP TABLE IF EXISTS hw09_users_passwords;
CREATE TABLE hw09_users_passwords (
  id SERIAL PRIMARY KEY,
  name VARCHAR(120),
  pass VARCHAR(120)
);

INSERT INTO hw09_users_passwords (name, pass) VALUES 
  ("rasras", "rasras11"),
  ("dvadva", "dvadva22"),
  ("tritri", "tritri33")
;

-- создаём представление
DROP VIEW IF EXISTS id_users;
CREATE VIEW id_users AS
  SELECT id, name FROM hw09_users_passwords;

-- создаём юзверя
CREATE USER IF NOT EXISTS users_viewer IDENTIFIED BY "pAss_333";
GRANT USAGE ON hw09_shop.hw09_users_passwords TO users_viewer;    -- на случай если пользователь уже создан
GRANT SELECT ON hw09_shop.id_users TO users_viewer;

-- === Задача 3-1 ===
-- Создать функцию которая будет приветствовать исходя из времени суток
DROP FUNCTION IF EXISTS greatings;
DELIMITER //
CREATE FUNCTION greatings()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  DECLARE now_time TIME DEFAULT TIME(NOW());
  DECLARE results VARCHAR(255);
  IF(now_time < "06") THEN
    SET results = "Доброй ночи";
  ELSEIF(now_time < "12") THEN
    SET results = "Доброе утро";
  ELSEIF(now_time < "18") THEN
    SET results = "Добрый день";
  ELSE
    SET results = "Добрый вечер";
  END IF;
  RETURN results;
END//
DELIMITER ;

SELECT greatings() AS greatings;

-- === Задача 3-2 ===
-- В таблице есть поля с названием и описанием товара. Отсутствие обоих значений недопустимо.
-- Создать триггер, который будет отменять операции записи если оба поля имеют значение NULL.

DROP TRIGGER IF EXISTS not_all_null_insert;
DELIMITER //
CREATE TRIGGER not_all_null_insert BEFORE INSERT ON hw09_products
FOR EACH ROW
BEGIN
  IF (COALESCE(NEW.name, NEW.description) IS NULL) THEN
    SIGNAL SQLSTATE "45000" SET MESSAGE_TEXT = "INSERT canceled";
  END IF;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS not_all_null_update;
DELIMITER //
CREATE TRIGGER not_all_null_update BEFORE UPDATE ON hw09_products
FOR EACH ROW
BEGIN
  IF (COALESCE(NEW.name, NEW.description) IS NULL) THEN
    SIGNAL SQLSTATE "45000" SET MESSAGE_TEXT = "UPDATE canceled";
  END IF;
END//
DELIMITER ;

-- INSERT INTO hw09_products (price, catalog_id) VALUES (60000, 2);
-- UPDATE hw09_products SET name = NULL , description = NULL WHERE id = 3;

-- === Задача 3-3 ===
-- Создать функцию для вычисления числа Фибоначчи.
-- Каждое следующее число равно сумме двух предыдущих, за исключением 0 = 0 и 1 = 1.

DROP FUNCTION IF EXISTS fibonacci;
DELIMITER //
CREATE FUNCTION fibonacci(num INT UNSIGNED)
RETURNS BIGINT UNSIGNED DETERMINISTIC
BEGIN
  DECLARE i INT UNSIGNED DEFAULT 1;
  DECLARE old_num BIGINT UNSIGNED DEFAULT 0;
  DECLARE now_num BIGINT UNSIGNED DEFAULT 1;
  DECLARE next_num BIGINT UNSIGNED DEFAULT 1;
  IF (NOT num) THEN
    SET next_num = 0;
  ELSEIF (num = 1) THEN
    SET next_num = 1;
  ELSE
    WHILE i < num DO 
      SET next_num = now_num + old_num;
      SET old_num = now_num;
      SET now_num = next_num;
      SET i = i + 1;
    END WHILE;
  END IF;
  RETURN next_num;
END//
DELIMITER ;

SELECT fibonacci(10);
