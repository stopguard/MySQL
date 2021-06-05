=== Домашнее задание 11-2 ===
=== Задача 2-1 ===
В БД Redis подберите коллекцию для подсчёта посещений с IP адресов

dmitry@ubuntu-desktop:~$ redis-cli
127.0.0.1:6379> HINCRBY addrcounts 192.168.0.110 1
(integer) 1
127.0.0.1:6379> HINCRBY addrcounts 192.168.0.110 1
(integer) 2
127.0.0.1:6379> HINCRBY addrcounts 192.166.0.110 1
(integer) 1
127.0.0.1:6379> HINCRBY addrcounts 127.0.0.1 1
(integer) 1
127.0.0.1:6379> HGETALL addrcounts
1) "192.168.0.110"
2) "2"
3) "192.166.0.110"
4) "1"
5) "127.0.0.1"
6) "1"
127.0.0.1:6379> HGET addrcounts 192.168.0.110
"2"
127.0.0.1:6379> HSCAN addrcounts 0 MATCH 192*
1) "0"
2) 1) "192.168.0.110"
   2) "2"
   3) "192.166.0.110"
   4) "1"

=== Задача 2-2 ===
Решить задачу поиска пользователя по email и наоборот в Redis

127.0.0.1:6379> MSET user1 rasras@mail.ru rasras@mail.ru user1
OK
127.0.0.1:6379> MSET user2 dvadva@mail.ru dvadva@mail.ru user2
OK
127.0.0.1:6379> GET user1
"rasras@mail.ru"
127.0.0.1:6379> GET rasras@mail.ru
"user1"

так же для этого можно использовать hash-таблицу в случае если предполагается хранение большого количества пользователей.
реализация отличается минимально

=== Задача 2-3 ===
Реализовать таблицы shop.categories и shop.products в MongoDB

ввиду того, что в монго используется простой JSON формат хранения без взаимных ссылок, таблица catalogs теряет свой смысл. 
Таким образом реализую вставку данных в одну таблицу products сразу с именами каталогов.

> use shop
switched to db shop
> db.shop.insert({name: 'Intel Core i3-8100', desription: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 7890.00, catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'Intel Core i5-7400', desription: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 12700.00, catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'AMD FX-8320E', desription: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 4780.00, catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'AMD FX-8320', desription: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 7120.00, catalog: 'Процессоры'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'ASUS ROG MAXIMUS X HERO', desription: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', price: 19310.00, catalog: 'Материнские платы'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'Gigabyte H310M S2H', desription: 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', price: 4790.00, catalog: 'Материнские платы'})
WriteResult({ "nInserted" : 1 })
> db.shop.insert({name: 'MSI B250M GAMING PRO', desription: 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', price: 5060.00, catalog: 'Материнские платы'})
WriteResult({ "nInserted" : 1 })
> db.shop.find()
{ "_id" : ObjectId("60bb9b22c1d60d760f57605f"), "name" : "Intel Core i3-8100", "desription" : "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price" : 7890, "catalog" : "Процессоры" }
{ "_id" : ObjectId("60bb9b30c1d60d760f576060"), "name" : "Intel Core i5-7400", "desription" : "Процессор для настольных персональных компьютеров, основанных на платформе Intel.", "price" : 12700, "catalog" : "Процессоры" }
{ "_id" : ObjectId("60bb9b3ac1d60d760f576061"), "name" : "AMD FX-8320E", "desription" : "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price" : 4780, "catalog" : "Процессоры" }
{ "_id" : ObjectId("60bb9b43c1d60d760f576062"), "name" : "AMD FX-8320", "desription" : "Процессор для настольных персональных компьютеров, основанных на платформе AMD.", "price" : 7120, "catalog" : "Процессоры" }
{ "_id" : ObjectId("60bb9b50c1d60d760f576063"), "name" : "ASUS ROG MAXIMUS X HERO", "desription" : "Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX", "price" : 19310, "catalog" : "Материнские платы" }
{ "_id" : ObjectId("60bb9b58c1d60d760f576064"), "name" : "Gigabyte H310M S2H", "desription" : "Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX", "price" : 4790, "catalog" : "Материнские платы" }
{ "_id" : ObjectId("60bb9b62c1d60d760f576065"), "name" : "MSI B250M GAMING PRO", "desription" : "Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX", "price" : 5060, "catalog" : "Материнские платы" }

