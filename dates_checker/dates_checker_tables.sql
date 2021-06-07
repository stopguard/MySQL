DROP DATABASE IF EXISTS dates_checker;
CREATE DATABASE dates_checker;

USE dates_checker;

CREATE TABLE departaments (
  `id` SERIAL PRIMARY KEY COMMENT "Идентификатор подразделения",
  `name` VARCHAR(200) UNIQUE NOT NULL COMMENT "Название подразделения",
  `comment` TEXT COMMENT "Комментарий"
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT "Список маркеров для обозначения статуса предмета";

CREATE TABLE workers (
  `id` SERIAL PRIMARY KEY COMMENT "Табельный номер сотрудника",
  departament_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор подразделения",
  surname VARCHAR(100) NOT NULL COMMENT "Фамилия сотрудника",
  `name` VARCHAR(100) NOT NULL COMMENT "Имя сотрудника",
  patronymic VARCHAR(100) NOT NULL COMMENT "Отчество сотрудника",
  brigadier_id BIGINT UNSIGNED DEFAULT NULL COMMENT "Идентификатор бригадира",
  KEY index_of_departament_id(departament_id),
  FOREIGN KEY (departament_id) REFERENCES departaments(`id`)
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT "Список сотрудников";

CREATE TABLE brigadiers (
  `id` SERIAL PRIMARY KEY COMMENT "Идентификатор бригадира",
  worker_id BIGINT UNSIGNED UNIQUE NOT NULL COMMENT "Табельный номер бригадира",
  FOREIGN KEY (worker_id) REFERENCES workers(`id`) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Список бригадиров";

ALTER TABLE workers
  ADD CONSTRAINT brigadier_id_fk
    FOREIGN KEY (brigadier_id) REFERENCES brigadiers(`id`) 
      ON UPDATE CASCADE ON DELETE CASCADE;

CREATE TABLE item_types (
  `id` SERIAL PRIMARY KEY COMMENT "Идентификатор типа инструмента",
  `name` VARCHAR(100) NOT NULL COMMENT "Название инструмента",
  duration TINYINT UNSIGNED NOT NULL DEFAULT 6 COMMENT "Интервал между проверками (мес)"
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT "Список видов выдаваемого инструмента";

CREATE TABLE certificate_types (
  `id` SERIAL PRIMARY KEY COMMENT "Идентификатор типа удостоверения",
  `name` VARCHAR(100) NOT NULL COMMENT "Название удостоверения",
  change_duration TINYINT UNSIGNED NOT NULL DEFAULT 12 COMMENT "Время действия удостоверения (мес)",
  attestation_duration TINYINT UNSIGNED NOT NULL DEFAULT 12 COMMENT "Интервал между проверками знаний (мес)"
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT "Список выдаваемых удостоверений";

CREATE TABLE items (
  `id` SERIAL PRIMARY KEY COMMENT "Инвентарный номер инструмента",
  worker_id BIGINT UNSIGNED NOT NULL COMMENT "Табельный номер сотрудника",
  item_type_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор типа инструмента",
  last_check DATE NOT NULL COMMENT "Дата последней проверки",
  FOREIGN KEY (worker_id) REFERENCES workers(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (item_type_id) REFERENCES item_types(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  KEY index_of_worker(worker_id)
) COMMENT "Полный список выданного инструмента";

CREATE TABLE certificates (
  `id` SERIAL PRIMARY KEY COMMENT "Номер удостоверения",
  worker_id BIGINT UNSIGNED NOT NULL COMMENT "Табельный номер сотрудника",
  certificate_type_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор типа удостоверения",
  give_date DATE NOT NULL COMMENT "Дата выдачи",
  last_attestation DATE NOT NULL COMMENT "Дата последней аттестации",
  FOREIGN KEY (worker_id) REFERENCES workers(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (certificate_type_id) REFERENCES certificate_types(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  KEY index_of_worker(worker_id)
) COMMENT "Полный список выданных удостоверений";

CREATE TABLE chat_ids (
  chat_id INT UNSIGNED UNIQUE NOT NULL PRIMARY KEY COMMENT "Идентификатор чата",
  worker_id BIGINT UNSIGNED NOT NULL COMMENT "Табельный номер сотрудника",
  FOREIGN KEY (worker_id) REFERENCES workers(`id`) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Список чатов-id для приёма веб-хуков";

CREATE TABLE alarm_links (
  worker_id BIGINT UNSIGNED NOT NULL COMMENT "Табельный номер сотрудника",
  chat_id INT UNSIGNED NOT NULL COMMENT "Идентификатор чата",
  FOREIGN KEY (worker_id) REFERENCES workers(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
  PRIMARY KEY (worker_id, chat_id) COMMENT "Составной первичный ключ"
) COMMENT "Список id-чатов для рассылки оповещений об истечении сроков";

CREATE TABLE change_log (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор маркера",
  create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Дата и время создания записи",
  table_name VARCHAR(20) NOT NULL DEFAULT "items" COMMENT "Таблица в которой произошли изменения",
  item_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор предмета",
  worker_id BIGINT UNSIGNED NOT NULL COMMENT "Табельный номер сотрудника",
  item_type_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор типа предмета",
  last_check DATE NOT NULL COMMENT "Дата выдачи удостоверения/последней проверки инструмента",
  last_attestation DATE DEFAULT NULL COMMENT "Дата последней аттестации",
  operation VARCHAR(20) NOT NULL DEFAULT "INSERT" COMMENT "Тип изменений"
) ENGINE=Archive COMMENT "Лог изменений в списках выданного инструмента и удостоверений";


-- НЕ ГОТОВО
CREATE VIEW summ_info_view AS
  SELECT b.worker_id AS brigadier_id,
      CONCAT(w2.name, " ", w2.patronymic, " ", w2.surname) AS brigadier_name,
      "marker" AS marker,
      i.worker_id AS worker_id,
      CONCAT(w.name, " ", w.patronymic, " ", w.surname) AS worker_name,
      "Инструмент" AS item_table, 
      i.id AS item_id,
      i.last_check AS last_check,
      i.last_check AS last_interim_check,
      DATE_ADD(i.last_check, INTERVAL it.duration MONTH) AS next_check,
      DATE_ADD(i.last_check, INTERVAL it.duration MONTH) AS next_interim_check
    FROM
        items i
      JOIN 
        workers w ON i.worker_id = w.id 
      JOIN 
        brigadiers b ON w.brigadier_id = b.id
      JOIN 
        workers w2 ON b.worker_id = w.id
      JOIN
        item_types it ON i.item_type_id = it.id
/*  UNION ALL
    SELECT 
      FROM 
        "Удостоверение",
        id,
        worker_id,
        certificate_types,
        give_date,
        last_attestation
        FROM certificates c
        JOIN 
          workers w 
        JOIN 
          brigadiers b
        JOIN
          item_types it
        JOIN
          certificate_types ct*/
;
      
















