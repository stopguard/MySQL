encode - utf8

1. поставил mysql, залез в каталог ~, открыл в vim .my.cnf, прописал логпасс для утилиты mysql
2. создал бд через 	CREATE DATABASE example;
   выбрал ее		USE example
   создал таблицу	CREATE TABLE users (id INT, name TEXT);
3. создал дамп бд	mysqldump example > example.sql
   создал в mysql бд	CREATE DATABASE sample;
   развернул дамп	mysql sample < example.sql
4. сделал дамп первых 100 строк из таблицы help_keyword в бд mysql:
	mysqldump --where="true limit 100" mysql help_keyword > help_keyword.sql
