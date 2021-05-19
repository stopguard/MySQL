-- Получился какой-то монстр, но пока ничего больше не придумывается

INSERT IGNORE INTO friendships (user_id, friend_id, status_id) VALUES
  (9, 21, 2)
;

INSERT INTO messages (from_user_id, to_user_id, body) VALUES
  (9, 21, "fdfsdfsdfdsfdfsds"),
  (21, 9, "fdfsdfsdfdsfdfdfdfsds")
;

SELECT (SELECT CONCAT(first_name, " ", last_name) FROM users WHERE id = tmp.talker) AS talker, COUNT(*) AS cnt FROM 
(SELECT from_user_id AS talker FROM messages WHERE 
  to_user_id = 9 
  AND 
  from_user_id IN (SELECT 
    friend_id
    FROM friendships
    WHERE user_id = 9 
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed")
    UNION ALL 
    SELECT 
      user_id 
    FROM friendships
    WHERE friend_id = 9
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed"))
UNION ALL 
SELECT to_user_id AS talker FROM messages WHERE from_user_id = 9 
  AND 
  to_user_id IN (SELECT 
    friend_id
    FROM friendships
    WHERE user_id = 9 
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed")
    UNION ALL 
    SELECT 
      user_id 
    FROM friendships
    WHERE friend_id = 9
      AND status_id = (SELECT id FROM friendship_statuses WHERE name = "Confirmed"))
    ) AS tmp
GROUP BY talker
ORDER BY cnt DESC
LIMIT 1
;
