CREATE DATABASE IF NOT EXISTS hw11_shop;
USE hw11_shop;

-- === Домашнее задание 11 ==
-- === Задача 1-1 ===
-- Создать таблицу типа Archive в которую должны попадать
-- дата создания, имя таблицы, идентификатор и содержимое поля name
-- при вставках в таблицы users, catalogs, products.

-- готовим основные таблицы. за основу взяты таблицы из прошлого дз
DROP TABLE IF EXISTS hw11_users;
CREATE TABLE hw11_users (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='Покупатели';

DROP TABLE IF EXISTS hw11_catalogs;
CREATE TABLE hw11_catalogs (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела'
) COMMENT='Разделы интернет-магазина';

DROP TABLE IF EXISTS hw11_products;
CREATE TABLE hw11_products (
  `id` SERIAL PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT='Товарные позиции';

-- готовим таблицу для архива
DROP TABLE IF EXISTS hw11_logs;
CREATE TABLE hw11_logs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата создания",
  table_name VARCHAR(30) COMMENT "Имя таблицы",
  primary_id BIGINT UNSIGNED COMMENT "Идентификатор записи",
  elem_name VARCHAR(255) COMMENT "Имя записи"
) ENGINE=Archive COMMENT = "Архив внесения данных в таблицы";

-- готовим триггеры
DROP TRIGGER IF EXISTS users_log;
DELIMITER //
CREATE TRIGGER users_log AFTER INSERT ON hw11_users
FOR EACH ROW
BEGIN
  INSERT INTO hw11_logs (table_name, primary_id, elem_name) 
    SELECT 
      "hw11_users" AS table_name,
      NEW.id AS primary_id,
      NEW.name AS elem_name;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS catalogs_log;
DELIMITER //
CREATE TRIGGER catalogs_log BEFORE INSERT ON hw11_catalogs
FOR EACH ROW
BEGIN
  INSERT INTO hw11_logs (table_name, primary_id, elem_name) 
    SELECT 
      "hw11_catalogs" AS table_name,
      NEW.id AS primary_id,
      NEW.name AS elem_name;
END//
DELIMITER ;

DROP TRIGGER IF EXISTS products_log;
DELIMITER //
CREATE TRIGGER products_log BEFORE INSERT ON hw11_products
FOR EACH ROW
BEGIN
  INSERT INTO hw11_logs (table_name, primary_id, elem_name) 
    SELECT 
      "hw11_products" AS table_name,
      NEW.id AS primary_id,
      NEW.name AS elem_name;
END//
DELIMITER ;

-- добавляем данные
INSERT INTO hw11_users (name, birthday_at) VALUES 
  ("rasras", "1991-01-10"),
  ("dvadva", "1992-11-15"),
  ("tritri", "1993-06-19")
;

INSERT INTO hw11_catalogs VALUES 
  (1,'Мат.платы'),
  (2,'Видеокарты'),
  (3,'Процессоры')
;

INSERT INTO hw11_products VALUES 
  (1,'fdsfdsfs','fdsfdsf',576.90,1,'2021-08-01 15:15:47','2021-05-23 17:39:58'),
  (2,'vcbvcbvcbvc','mnmnbbn',53656.20,1,'2021-08-04 15:10:14','2021-05-23 17:39:58'),
  (3,'fdsfdsfs','fdsfdsf',69200.00,2,'2021-08-16 15:10:14','2021-05-23 15:10:14'),
  (4,'dsf gfg','dsgggg',70421.40,1,'2021-08-17 15:10:14','2021-05-23 17:39:58'),
  (5,'kjhkjhkh','kkkkjjjj',63866.00,2,'2021-08-23 15:15:47','2021-05-23 15:15:47'),
  (6,'vcbvcbvcbvc','mnmnbbn',9234.00,2,'2021-08-24 15:15:47','2021-05-23 15:15:47')
;


-- === Задача 1-2 ===
-- Создать запрос вставляющий в таблицу users миллион записей

-- тут у нас так же будет отрабатывать триггер на архивирование. 
-- будет интересно посмотреть на время выполнения.
TRUNCATE hw11_users;
INSERT INTO hw11_users (name) 
  SELECT a.a AS name 
    FROM (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS a
     JOIN (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS b
     JOIN (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS c
     JOIN (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS d
     JOIN (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS e
     JOIN (SELECT help_keyword_id AS a FROM mysql.help_keyword LIMIT 10) AS f
;

SELECT id, name FROM hw11_users;
