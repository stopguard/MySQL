DROP DATABASE IF EXISTS hw;
CREATE DATABASE hw;
USE hw;


-- === Домашнее задание 05 ===
-- === Задача 01 ===
-- В таблице users поля created_at и updated_at оказались незаполненными.
-- Заполните их текущими датой и временем
CREATE TABLE hw0501users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME
);

INSERT hw0501users (name) VALUES
  ("рас"),
  ("два"),
  ("три"),
  ("четыре")
;

UPDATE hw0501users SET 
  created_at = NOW(), 
  updated_at = NOW() 
WHERE created_at IS NULL OR updated_at IS NULL;

SELECT * FROM hw0501users;


-- === Задача 02 ===
-- Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
-- Необходимо привести поля к типу DATETIME, сохранив значения.
CREATE TABLE hw0502users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  created_at VARCHAR(100),
  updated_at VARCHAR(100)
);

INSERT hw0502users (name, created_at, updated_at) VALUES
  ("рас", "20.10.2017 8:10", "20.10.2017 18:10"),
  ("два", "20.11.2017 20:10", "22.11.2017 8:10"),
  ("три", "20.12.2017 20:10", "22.01.2018 8:10"),
  ("четыре", "20.11.2018 20:10", "30.11.2019 8:10")
;

UPDATE hw0502users SET
  created_at = STR_TO_DATE(created_at, "%d.%m.%Y %H:%i"),
  updated_at = STR_TO_DATE(updated_at, "%d.%m.%Y %H:%i")
;

ALTER TABLE hw0502users MODIFY
  created_at DATETIME
;

ALTER TABLE hw0502users MODIFY
  updated_at DATETIME
;

SELECT * FROM hw0502users;


-- === Задача 03 ===
-- Отсортировать записи по возрастанию поля value так, чтобы 0 оказались в конце.
CREATE TABLE hw0503storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT(10) UNSIGNED NOT NULL,
  product_id INT(10) UNSIGNED NOT NULL,
  value INT(10) UNSIGNED NOT NULL
);

INSERT INTO hw0503storehouses_products (storehouse_id, product_id, value) VALUES 
  (15, 100, 3103),
  (18, 10, 3834),
  (10, 64, 0),
  (3, 58, 7276),
  (5, 67, 1428),
  (4, 40, 3594),
  (6, 36, 0),
  (5, 48, 2266),
  (20, 34, 7575),
  (11, 90, 6604)
;

SELECT * FROM hw0503storehouses_products ORDER BY value = 0, value;


-- === Задача 04 ===
-- Извлечь из таблицы пользователей, родившихся в августе и мае.
CREATE TABLE hw0504users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  born_date VARCHAR(100)
);

INSERT hw0504users (name, born_date) VALUES
  ("рас", "20 May 2001"),
  ("два", "20 November 1985"),
  ("три", "20 August 2017"),
  ("четыре", "20 November 2018")
;

-- вариант 1
/*SELECT * FROM hw0504users WHERE
  MONTH((STR_TO_DATE(born_date, "%d %M %Y"))) = 5
OR 
  MONTH((STR_TO_DATE(born_date, "%d %M %Y"))) = 8
;*/

-- вариант 2
/*SELECT * FROM hw0504users WHERE 
  born_date LIKE "%May%"
OR 
  born_date LIKE "%August%"
;*/

-- вариант 3
SELECT * FROM hw0504users WHERE born_date RLIKE "May|August";


-- === Задача 05 ===
-- Отсортировать набор данных в порядке заданном в условии запроса.
CREATE TABLE hw0505catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT hw0505catalogs (name) VALUES
  ("рас"),
  ("два"),
  ("три"),
  ("четыре"),
  ("пять"),
  ("шесть"),
  ("семь")
;

SELECT * FROM hw0505catalogs WHERE id IN (5, 1, 2) ORDER BY id = 2, id = 1, id = 5;


-- === Задача 06 ===
-- Подсчитайте средний возраст пользователей в таблице users
CREATE TABLE hw0506users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  born_date DATE
);

INSERT hw0506users (name, born_date) VALUES
  ("рас", "2001-05-20"),
  ("два", "1985-11-20"),
  ("три", "2010-08-20"),
  ("четыре", "2005-11-20")
;

SELECT AVG(TIMESTAMPDIFF(YEAR, born_date, NOW())) AS AVG_years FROM hw0506users;

-- === Задача 07 ===
-- Подсчитайте количество дней рождений приходящихся на каждый из дней недели в этом году

CREATE TABLE hw0507users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  born_date DATE
);

INSERT hw0507users (name, born_date) VALUES
  ("рас", "2001-05-20"),
  ("два", "1985-11-20"),
  ("три", "2010-08-20"),
  ("четыре", "2005-11-20")
;

SELECT 
  COUNT(*) AS total_birthdays, 
  DATE_FORMAT(CONCAT(YEAR(NOW()), SUBSTRING(born_date, 5)), "%W") AS day_of_week 
FROM 
  hw0506users 
GROUP BY 
  day_of_week
;


-- === Задача 08 ===
-- Перемножить содержимое столбца

CREATE TABLE hw0508catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT hw0508catalogs (name) VALUES
  ("рас"),
  ("два"),
  ("три"),
  ("четыре"),
  ("пять"),
  ("шесть"),
  ("семь")
;

SELECT EXP(SUM(LN(id))) AS product FROM hw0508catalogs;
