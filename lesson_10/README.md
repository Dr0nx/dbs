## Урок 10. Вебинар. Транзакции, переменные, представления. Администрирование. Хранимые процедуры и функции, триггеры
1.  **Анализирую какие запросы могут выполняться наиболее часто в процессе работы приложения и добавляю необходимые 
    индексы.**
    
    <br> 
    
    Анализирую таблицу users.
    ~~~ mysql
    vk> SHOW INDEX FROM users
    [2021-05-22 16:28:20] 3 rows retrieved starting from 1 in 44 ms (execution: 7 ms, fetching: 37 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX users_first_name_last_name_idx ON users (first_name, last_name)
    [2021-05-22 16:28:32] completed in 60 ms
    vk> CREATE INDEX users_created_at_idx ON users (created_at)
    [2021-05-22 16:28:32] completed in 58 ms
    vk> CREATE INDEX users_updated_at_idx ON users (updated_at)
    [2021-05-22 16:28:33] completed in 57 ms
    ~~~
    Неявным образом добавлены PRIMARY, email, phone индексы и явно добавлены users_first_name_last_name_idx, 
    users_created_at_idx индексы.
    
    <br>
    
    Анализирую таблицу profiles.
    
    ~~~ mysql
    vk> SHOW INDEX FROM profiles
    [2021-05-22 16:50:50] 2 rows retrieved starting from 1 in 44 ms (execution: 9 ms, fetching: 35 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX profiles_birthday_idx ON profiles (birthday)
    [2021-05-22 17:01:38] completed in 23 ms
    vk> CREATE INDEX profiles_created_at_idx ON profiles (created_at)
    [2021-05-22 17:01:38] completed in 25 ms
    vk> CREATE INDEX profiles_updated_at_idx ON profiles (updated_at)
    [2021-05-22 17:01:38] completed in 24 ms
    ~~~
    Неявным образом добавлены PRIMARY, profiles_city_id_fk индексы и явно добавлены profiles_birthday_idx, 
    profiles_created_at_idx, profiles_updated_at_idx индексы.
    
    <br>
    
    Анализирую таблицу media.
    
    ~~~ mysql
    vk> SHOW INDEX FROM media
    [2021-05-22 18:03:38] 4 rows retrieved starting from 1 in 51 ms (execution: 7 ms, fetching: 44 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX media_filename_idx ON media (filename)
    [2021-05-22 17:27:35] completed in 45 ms
    vk> CREATE INDEX media_size_idx ON media (size)
    [2021-05-22 18:06:37] completed in 37 ms
    vk> CREATE INDEX media_created_at_idx ON media (created_at)
    [2021-05-22 18:12:18] completed in 31 ms
    vk> CREATE INDEX media_update_at_idx ON media (updated_at)
    [2021-05-22 18:12:18] completed in 35 ms 
    ~~~
    Неявным образом добавлены PRIMARY, media_user_id_fk, media_media_type_id_fk индексы и явно добавлены 
    media_filename_idx, media_size_idx, media_created_at_idx, media_update_at_idx индексы.
    
    <br>

    Анализирую таблицу media_types.
    
    ~~~ mysql
    vk> SHOW INDEX FROM media_types
    [2021-05-23 09:34:30] 2 rows retrieved starting from 1 in 63 ms (execution: 39 ms, fetching: 24 ms)
    ~~~
    
    Неявным образом добавлены PRIMARY и name индексы.

    <br>

    Анализирую таблицу messages.
    
    ~~~ mysql
    vk> SHOW INDEX FROM messages
    [2021-05-23 09:41:06] 4 rows retrieved starting from 1 in 219 ms (execution: 202 ms, fetching: 17 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX messages_delivered_at_idx ON messages (delivered_at)
    [2021-05-23 10:07:51] completed in 342 ms
    vk> CREATE INDEX messages_created_at_idx ON messages (created_at)
    [2021-05-23 10:07:51] completed in 98 ms
    ~~~
    Неявным образом добавлены PRIMARY, messages_media_id_fk, messages_from_user_id_fk, messages_to_user_id_fk индексы 
    и явно добавлены messages_delivered_at_idx и messages_created_at_idx индексы.

    <br>

    Анализирую таблицу likes.
    
    ~~~ mysql
    vk> SHOW INDEX FROM likes
    [2021-05-23 13:47:10] 2 rows retrieved starting from 1 in 135 ms (execution: 94 ms, fetching: 41 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX likes_target_type_target_id_idx ON likes (target_type, target_id)
    [2021-05-23 13:52:31] completed in 137 ms
    vk> CREATE INDEX likes_created_at_idx ON likes (created_at)
    [2021-05-23 14:09:28] completed in 77 ms
    ~~~
    Неявным образом добавлены PRIMARY, likes_user_id_fk и likes_target_type_target_id_idx, 
    likes_target_type_target_id_idx  likes_created_at_idx явно добавлены индексы.
    
    <br>

    Анализирую таблицу posts.
    
    ~~~ mysql
    vk> SHOW INDEX FROM posts
    [2021-05-23 14:22:51] 3 rows retrieved starting from 1 in 55 ms (execution: 29 ms, fetching: 26 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX posts_head_idx ON posts (head)
    [2021-05-23 14:55:52] completed in 89 ms
    vk> CREATE INDEX posts_created_at_idx ON posts (created_at)
    [2021-05-23 14:56:17] completed in 95 ms
    vk> CREATE INDEX posts_update_at_idx ON posts (updated_at)
    [2021-05-23 14:56:17] completed in 39 ms
    vk> ALTER TABLE posts ADD INDEX posts_body_idx(body(255))
    [2021-05-23 15:14:03] completed in 141 ms
    ~~~
    Неявным образом добавлены PRIMARY, posts_user_id_fk, posts_media_id_fk индексы 
    и явно добавлены posts_community_id_idx, posts_head_idx, posts_created_at_idx, posts_update_at_idx, posts_body_idx 
    индексы.
    
    <br>
    
    Анализирую таблицу friendship.
    
    ~~~ mysql
    vk> SHOW INDEX FROM friendship
    [2021-05-23 16:52:52] 3 rows retrieved starting from 1 in 44 ms (execution: 7 ms, fetching: 37 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX friendship_confirmed_at_idx ON friendship (confirmed_at)
    [2021-05-23 16:55:48] completed in 88 ms
    vk> CREATE INDEX friendship_created_at_idx ON friendship (created_at)
    [2021-05-23 16:55:48] completed in 92 ms
    vk> CREATE INDEX friendship_update_at_idx ON friendship (updated_at)
    [2021-05-23 16:55:48] completed in 52 ms
    ~~~
    Неявным образом добавлены PRIMARY (составной ключ user_id, friend_id), friendship_friend_status_id_fk и явно 
    добавлены friendship_confirmed_at_idx, friendship_created_at_idx, friendship_update_at_idx индексы.
    
    <br>

    Анализирую таблицу friendship_statuses.
    
    ~~~ mysql
    vk> SHOW INDEX FROM friendship_statuses
    [2021-05-23 16:59:25] 2 rows retrieved starting from 1 in 46 ms (execution: 10 ms, fetching: 36 ms)
    ~~~
    
    Неявным образом добавлены PRIMARY и name индексы.

    <br>

    Анализирую таблицу communities.
    
    ~~~ mysql
    vk> SHOW INDEX FROM communities
    [2021-05-23 17:06:44] 2 rows retrieved starting from 1 in 41 ms (execution: 11 ms, fetching: 30 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX communities_created_at_idx ON communities (created_at)
    [2021-05-23 17:10:13] completed in 121 ms
    vk> CREATE INDEX communities_update_at_idx ON communities (updated_at)
    [2021-05-23 17:10:13] completed in 36 ms
    ~~~
    Неявным образом добавлены PRIMARY, name и явно добавлены communities_created_at_idx, communities_update_at_idx 
    индексы.
    
    <br>

    Анализирую таблицу communities.
    
    ~~~ mysql
    vk> SHOW INDEX FROM communities
    [2021-05-23 17:06:44] 2 rows retrieved starting from 1 in 41 ms (execution: 11 ms, fetching: 30 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX communities_created_at_idx ON communities (created_at)
    [2021-05-23 17:10:13] completed in 121 ms
    vk> CREATE INDEX communities_update_at_idx ON communities (updated_at)
    [2021-05-23 17:10:13] completed in 36 ms
    ~~~
    Неявным образом добавлены PRIMARY, name и явно добавлены communities_created_at_idx, communities_update_at_idx 
    индексы.
    
    <br>
    
    Анализирую таблицу communities_users.
    
    ~~~ mysql
    vk> SHOW INDEX FROM communities_users
    [2021-05-23 17:21:09] 3 rows retrieved starting from 1 in 46 ms (execution: 6 ms, fetching: 40 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX communities_users_created_at_idx ON communities_users (created_at)
    [2021-05-23 17:25:24] completed in 71 ms
    ~~~
    Неявным образом добавлены PRIMARY (составной ключ community_id, user_id) и явно добавлен 
    communities_users_created_at_idx индекс.

    <br>    

    Анализирую таблицу cities.
    
    ~~~ mysql
    vk> SHOW INDEX FROM cities
    [2021-05-23 18:07:47] 2 rows retrieved starting from 1 in 48 ms (execution: 7 ms, fetching: 41 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX cities_name_idx ON cities (name)
    [2021-05-23 18:12:34] completed in 86 ms
    ~~~
    Неявным образом добавлены PRIMARY, cities_country_id_fk и явно добавлен cities_name_idx индекс.
    
    <br>
    
    Анализирую таблицу cities.
    
    ~~~ mysql
    vk> SHOW INDEX FROM cities
    [2021-05-23 18:07:47] 2 rows retrieved starting from 1 in 48 ms (execution: 7 ms, fetching: 41 ms)
    ~~~
    Добавляю следующие индексы:
    ~~~ mysql
    vk> CREATE INDEX cities_name_idx ON cities (name)
    [2021-05-23 18:12:34] completed in 86 ms
    ~~~
    Неявным образом добавлены PRIMARY, cities_country_id_fk и явно добавлен cities_name_idx индекс.

    <br>

    Анализирую таблицу countries.
    
    ~~~ mysql
    vk> SHOW INDEX FROM countries
    [2021-05-23 18:14:52] 2 rows retrieved starting from 1 in 58 ms (execution: 31 ms, fetching: 27 ms)
    ~~~
    Неявным образом добавлены PRIMARY и name индексы.

    <br>
    
2.  **Оконные функции**

    <br> 
    
    Строю запрос, который будет выводить следующие столбцы:
    
    имя группы
    
    среднее количество пользователей в группах (сумма количестива пользователей во всех группах делённая на количество 
    групп)
    
    самый молодой пользователь в группе (желательно вывести имя и фамилию)
    
    самый старший пользователь в группе (желательно вывести имя и фамилию)
    
    количество пользователей в группе
    
    всего пользователей в системе (количество пользователей в таблице users)
    
    отношение в процентах для последних двух значений (общее количество пользователей в группе / всего пользователей 
    в системе) * 100
    
    <br>
    
    Выполняю запрос к заданию:
    ~~~ mysql
    vk> SELECT DISTINCT communities.name                                                                   AS group_name,
                    COUNT(communities_users.user_id) OVER () /
                    (SELECT COUNT(*) FROM communities)                                                     AS avg_users_in_groups,
                    FIRST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name))
                                OVER (w_community ORDER BY profiles.birthday DESC)                         AS youngest,
                    FIRST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name))
                                OVER (w_community ORDER BY profiles.birthday ASC)                          AS oldest,
                    COUNT(communities_users.user_id) OVER w_community                                      AS users_in_group,
                    (SELECT COUNT(*) FROM users)                                                           AS users_total,
                    COUNT(communities_users.user_id) OVER w_community / (SELECT COUNT(*) FROM users) * 100 AS '%%'
    FROM communities
             LEFT JOIN communities_users
                       ON communities_users.community_id = communities.id
             LEFT JOIN users
                       ON communities_users.user_id = users.id
             LEFT JOIN profiles
                       ON profiles.user_id = users.id
        WINDOW w_community AS (PARTITION BY communities.id)
    [2021-05-22 22:42:08] 30 rows retrieved starting from 1 in 40 ms (execution: 15 ms, fetching: 25 ms)
    ~~~
    Здесь нет группировки ORDER BY. Тут функция SUM() используется как оконная, и она работает поверх данных. Есть и 
    другой вариант запроса с вложенными запросами в объединении JOIN:
    ~~~ mysql
    vk> SELECT DISTINCT communities.name                                                  AS group_name,
                    COUNT(communities_users.user_id) OVER () / total_communities          AS avg_users_in_groups,
                    FIRST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name))
                                OVER (w_community ORDER BY profiles.birthday DESC)        AS youngest,
                    FIRST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name))
                                OVER (w_community ORDER BY profiles.birthday ASC)         AS oldest,
                    COUNT(communities_users.user_id) OVER w_community                     AS users_in_group,
                    total_users,
                    COUNT(communities_users.user_id) OVER w_community / total_users * 100 AS '%%'
    FROM (SELECT COUNT(*) AS total_users FROM users) AS tu
             CROSS JOIN
             (SELECT COUNT(*) AS total_communities FROM communities) AS tc
             CROSS JOIN communities
             LEFT JOIN communities_users
                       ON communities_users.community_id = communities.id
             LEFT JOIN users
                       ON communities_users.user_id = users.id
             LEFT JOIN profiles
                       ON profiles.user_id = users.id
        WINDOW w_community AS (PARTITION BY communities.id)
    [2021-05-22 23:07:10] 30 rows retrieved starting from 1 in 46 ms (execution: 13 ms, fetching: 33 ms)
    ~~~