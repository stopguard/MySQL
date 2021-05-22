-- === Домашнее задание 06 ===
-- === Задача 01 ===
-- Проанализировать запросы, опеределить возможные корректировки

SELECT CONCAT(first_name,
  " ",
  last_name) AS fullname,
  (SELECT name FROM cities WHERE id = 
    (SELECT city_id FROM profiles WHERE user_id=users.id)) AS "city",
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id=users.id)) AS "main_photo"
FROM users
WHERE id=9
;

SELECT * FROM profiles;
SELECT name FROM cities WHERE id = (SELECT city_id FROM profiles WHERE user_id=9);
SELECT filename FROM media WHERE id = (SELECT photo_id FROM profiles WHERE user_id=9);


SELECT user_id, 
  filename, 
  "image" media_type 
FROM media
WHERE user_id = 9
  AND media_type_id = (SELECT id FROM media_types WHERE name = "image")
;

SELECT CONCAT("Пользователь ", 
  (SELECT CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = media.user_id
  ),
  " добавил фото ",
  filename,
  " ",
  created_at 
  ) AS "Action"
FROM media
WHERE user_id = 9
  AND media_type_id = (SELECT id FROM media_types WHERE name = "image")
;

SELECT 
  user_id, 
  (SELECT CONCAT(first_name, " ", last_name) FROM users WHERE id = media.user_id) AS fullname,
  filename, 
  `size` 
FROM media
ORDER BY user_id, `size` DESC 
LIMIT 5
;

SELECT
  (SELECT CONCAT(first_name, " ", last_name)
    FROM users 
    WHERE id = friendships.user_id 
  ) AS user_name,
  (SELECT CONCAT(first_name, " ", last_name)
    FROM users 
    WHERE id = friendships.friend_id) AS friend_name 
FROM friendships
WHERE user_id = 9 
AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed") 
UNION ALL 
SELECT 
  (SELECT CONCAT(first_name, " ", last_name)
    FROM users 
    WHERE id = friendships.friend_id 
  ) AS user_name,
  (SELECT CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = friendships.user_id) 
FROM friendships
WHERE friend_id = 9
AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed") 
;

SELECT 
  friend_id
FROM friendships
WHERE user_id = 9 
AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed") 
UNION ALL 
SELECT 
  user_id 
FROM friendships
WHERE friend_id = 9
AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed") 
;

SELECT 
  (SELECT 
    CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = user_id
  ) AS friend_name, 
  filename 
FROM media
WHERE user_id IN (
  SELECT friend_id
    FROM friendships
    WHERE user_id = 9 
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed") 
  UNION ALL 
  SELECT user_id 
    FROM friendships
    WHERE friend_id = 9
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed")
);

SELECT 
    (SELECT 
    CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = d.user_id
  ) AS user_name, 
  SUM(d.total) AS total, 
  SUM(cnt) AS `count`
FROM (
  SELECT user_id, 
    SUM(`size`) AS total,
    COUNT(*) AS cnt 
  FROM media 
  GROUP BY user_id
  HAVING total > 100000000
) AS d
GROUP BY user_id WITH ROLLUP
;


SELECT 
  (SELECT 
    CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = from_user_id
  ) AS from_user, 
  (SELECT 
    CONCAT(first_name, " ", last_name) 
    FROM users 
    WHERE id = to_user_id
  ) AS to_user, 
  body, 
  IF(is_delivered, "delivered", "not delivered") AS status, 
  created_at 
FROM messages
WHERE is_delivered = 1 AND (from_user_id = 9 OR to_user_id = 9)
ORDER BY created_at DESC
;

SELECT CONCAT(first_name, " ", last_name) AS fullname 
  FROM users
  WHERE first_name LIKE "_M%"
;

SELECT CONCAT(first_name, " ", last_name) AS fullname 
  FROM users
  WHERE last_name RLIKE "^H.*[d-k]+.l$"
;


-- === Задание 02 ===
-- Среди друзей найти того, кто больше всех общался с выбранным пользователем

INSERT IGNORE INTO friendships (user_id, friend_id, status_id) VALUES
  (9, 21, 2)
;

INSERT INTO messages (from_user_id, to_user_id, body) VALUES
  (9, 21, "fdfsdfsdfdsfdfsds"),
  (21, 9, "fdfsdfsdfdsfdfdfdfsds")
;


SELECT talker_id, 
    (SELECT CONCAT(first_name, " ", last_name) FROM users WHERE id = talker_id) AS fullname,
    COUNT(*) AS cnt 
  FROM 
    (SELECT IF(from_user_id = 9, to_user_id, from_user_id) AS talker_id 
      FROM messages
      WHERE 
        (from_user_id = 9 OR to_user_id = 9)
    ) AS tmp
WHERE
  tmp.talker_id IN 
    (SELECT IF(user_id = 9, friend_id, user_id) AS friend_id
      FROM friendships
      WHERE
        (user_id = 9 OR friend_id = 9) 
      AND 
        status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed")) 
GROUP BY
  talker_id
ORDER BY cnt DESC LIMIT 1
;


-- === Задание 03 ===
-- Подсчитать лайки полученные 10 самыми молодыми пользователями
-- не понял что требуется вывести - сумму лайков этих 10 юзеров или таблицу с их лайками.
-- вывел всё

INSERT likes(user_id, target_id, target_type_id) VALUES 
  ((floor(1 + rand() * 100)),(floor(1 + rand() * 100)),2);


SELECT 
  IF(GROUPING(tmp.target_id), "", tmp.target_id) AS target_id, 
  IF(GROUPING(tmp.fullname), "", tmp.fullname) AS fullname, 
  IF(GROUPING(tmp.age), "SUMM", tmp.age) AS age, 
  SUM(tmp.cnt) AS cnt 
FROM
  (SELECT
    target_id,
    (SELECT CONCAT(first_name, " ", last_name) FROM users WHERE id = target_id) AS fullname,
    (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE user_id = target_id) AS age,
    COUNT(*) AS cnt
  FROM likes 
  WHERE 
    target_type_id = 2
  GROUP BY target_id
  ORDER BY age LIMIT 10) AS tmp
GROUP BY target_id, fullname, age
WITH ROLLUP 
HAVING GROUPING(age) = 0 OR GROUPING(target_id) = 1
ORDER BY GROUPING(age), age
;

-- === Задание 04 ===
-- Опеределить кто больше поставил лайков, мужчины или женщины

SELECT 
  COUNT(*) AS cnt,
  gender
FROM 
  (SELECT 
    (SELECT gender FROM profiles WHERE user_id = target_id) AS gender
  FROM likes) AS gender_likes
GROUP BY gender
ORDER BY cnt DESC 
LIMIT 1
;

-- === Задание 05 ===
-- найти 10 пользователей с наименьшей активностью. лайки посты сообщения.

SELECT 
  id, 
  CONCAT(first_name, " ", last_name) AS fullname,  
  (SELECT COUNT(*) FROM likes WHERE user_id = users.id) + 
    (SELECT COUNT(*) FROM posts WHERE user_id = users.id) +
    (SELECT COUNT(*) FROM messages WHERE from_user_id = users.id)
    AS activity
FROM users
ORDER BY activity, fullname
LIMIT 10;

SELECT * FROM likes WHERE user_id = 75;
SELECT * FROM posts WHERE user_id = 75;
SELECT * FROM messages WHERE from_user_id = 75;
SELECT * FROM users;
SELECT * FROM communities;
SELECT * FROM media;
