## Урок 8. Вебинар. Сложные запросы
1. Определяю кто больше поставил лайков (всего) - мужчины или женщины? (использую JOIN)
   ~~~ mysql
   vk> SELECT COUNT(*) AS total, gender
        FROM profiles
            LEFT JOIN likes
                ON profiles.user_id = likes.id
        GROUP BY gender
        ORDER BY total DESC
        LIMIT 1
   [2021-05-14 17:46:48] 1 row retrieved starting from 1 in 58 ms (execution: 13 ms, fetching: 45 ms)
   ~~~
   Результат:
   
   |total|gender|
   |:----|:-----|
   |51|M|

2. Вывожу для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных 
   лайков. (использую JOIN)
   ~~~ mysql
   vk> SELECT CONCAT(first_name, ' ', last_name) AS user,
           COUNT(DISTINCT messages.id) AS total_messages,
           COUNT(DISTINCT posts.id) AS total_posts,
           COUNT(DISTINCT media.id) AS total_media,
           COUNT(DISTINCT likes.id) AS total_likes
        FROM users
            LEFT JOIN messages
                ON messages.from_user_id = users.id
            LEFT JOIN posts
                ON posts.user_id = users.id
            LEFT JOIN media
                ON media.user_id = users.id
            LEFT JOIN likes
                ON likes.user_id = users.id
        GROUP BY users.id
   [2021-05-15 08:54:28] 100 rows retrieved starting from 1 in 64 ms (execution: 9 ms, fetching: 55 ms)
   ~~~
   
3. Подсчитываю количество лайков которые получили 10 самых последних сообщений. (использую JOIN)
   ~~~ mysql
   vk> SELECT SUM(likes_total) AS sum FROM
        (SELECT COUNT(likes.target_type) AS likes_total
                 FROM messages
                          LEFT JOIN likes ON target_type = 'messages' AND target_id = messages.id
                 GROUP BY messages.id
                 ORDER BY messages.created_at DESC
                 LIMIT 10
                ) AS last_messages
   [2021-05-16 14:14:48] 1 row retrieved starting from 1 in 24 ms (execution: 9 ms, fetching: 15 ms)
   ~~~