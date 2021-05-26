1. файл shop.sql
предположим я создал в таблице catalogs 3 записи:
INSERT INTO catalogs VALUES
  (NULL, ''),
  (NULL, NULL),
  (NULL, 'Процессоры');

mysql> SELECT * FROM catalogs;
+----+----------------------+
| id | name                 |
+----+----------------------+
|  1 |                      |
|  2 | NULL                 |
|  3 | Процессоры           |
+----+----------------------+
mysql> DESCRIBE catalogs;
+-------+-----------------+------+-----+---------+----------------+
| Field | Type            | Null | Key | Default | Extra          |
+-------+-----------------+------+-----+---------+----------------+
| id    | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(255)    | YES  | UNI | NULL    |                |
+-------+-----------------+------+-----+---------+----------------+

если я буду менять значения пустой и неопределённой строки на одно значение на выходе получу ошибку. так что для выполнения данной команды требуется снять ограничение на уникальность:
mysql> DROP INDEX unique_name ON catalogs;
Query OK, 0 rows affected (0.61 sec)

теперь можно писать запрос на обновление данных:
mysql> UPDATE catalogs SET name = 'empty' WHERE name <=> NULL OR name <=> '';
Query OK, 2 rows affected (0.56 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM catalogs;
+----+----------------------+
| id | name                 |
+----+----------------------+
|  1 | empty                |
|  2 | empty                |
|  3 | Процессоры           |
+----+----------------------+

2. комментить особо нечего. всё в файле media_db.sql

3. файл sample.sql
предварительно создал таблицу и произвёл следующие манипуляции:
mysql> INSERT INTO cat VALUES (0, 'Intel');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM cat;
+----+-------+
| id | name  |
+----+-------+
|  1 | Intel |
+----+-------+
1 row in set (0.00 sec)

mysql> DESCRIBE cat;
+-------+-----------------+------+-----+---------+----------------+
| Field | Type            | Null | Key | Default | Extra          |
+-------+-----------------+------+-----+---------+----------------+
| id    | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(255)    | YES  |     | NULL    |                |
+-------+-----------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> REPLACE INTO sample.cat(id, name) SELECT id, name FROM shop.catalogs;
Query OK, 4 rows affected (0.54 sec)
Records: 3  Duplicates: 1  Warnings: 0

mysql> SELECT * FROM cat;
+----+----------------------+
| id | name                 |
+----+----------------------+
|  1 | empty                |
|  2 | empty                |
|  3 | Процессоры           |
+----+----------------------+

