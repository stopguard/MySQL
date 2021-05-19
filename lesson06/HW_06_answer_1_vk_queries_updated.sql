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


