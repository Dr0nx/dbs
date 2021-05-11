## Урок 6. Вебинар. Операторы, фильтрация, сортировка и ограничение. Агрегация данных
1. Создаю и заполняю таблицы лайков и постов:
   ~~~ mysql
    -- Таблица лайков
    DROP TABLE IF EXISTS likes;
    CREATE TABLE likes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    target_id INT UNSIGNED NOT NULL,
    target_type ENUM('messages', 'users', 'posts', 'media') NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
   ~~~
   Тут использует следующий подход: создается временная таблица target_types и заполняется случайными значениями от 1
   до 100.
   ~~~ mysql
    -- Временная таблица типов лайков
    DROP TABLE IF EXISTS target_types;
    CREATE TEMPORARY TABLE target_types (
      name VARCHAR(100) NOT NULL UNIQUE
    );

    INSERT INTO target_types (name) VALUES 
    ('messages'),
    ('users'),
    ('media'),
    ('posts');

    -- Заполняем лайки
    INSERT INTO likes 
    SELECT 
     id, 
      FLOOR(1 + (RAND() * 100)), 
      FLOOR(1 + (RAND() * 100)),
      (SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
      CURRENT_TIMESTAMP 
    FROM messages;
   ~~~
   Проверяю — все хорошо.
   
   Теперь работаю с постами:
   ~~~ mysql
   -- Создадим таблицу постов
   DROP TABLE IF EXISTS posts;
   CREATE TABLE posts (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
     user_id INT UNSIGNED NOT NULL,
     community_id INT UNSIGNED,
     head VARCHAR(255),
     body TEXT NOT NULL,
     media_id INT UNSIGNED,
     is_public BOOLEAN DEFAULT TRUE,
     is_deleted BOOLEAN DEFAULT FALSE,
     created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
     updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
   );
   ~~~
   Использую сервис [http://filldb.info/](http://filldb.info/) и заполняю таблицу нужными значениями (100 строк):
   ~~~ bash
   dr0n@bozhkov-ubuntu:~/2021-05-07$ mysql vk < fulldb07-05-2021.sql 
   dr0n@bozhkov-ubuntu:~/2021-05-07$ 
   ~~~
   Проверяю:
   ~~~ mysql
   SELECT * FROM posts LIMIT 10;
   ~~~
   Проверяю — хорошо.
   
   Привожу в порядок временные метки:
   ~~~ mysql
   vk> UPDATE posts SET updated_at = NOW() WHERE updated_at < created_at
   [2021-05-11 21:36:04] 51 rows affected in 34 ms
   ~~~
   Здесь используется функция NOW() и условие updated < created_at. Было получено 51 строк: Проверяю:
   ~~~ mysql
   vk> SELECT * FROM posts WHERE updated_at < created_at
   [2021-05-11 21:36:28] 0 rows retrieved in 178 ms (execution: 9 ms, fetching: 169 ms)
   ~~~
   0 rows retrieved - хорошо.

2. Создаю все необходимые внешние ключи. 
   
   Начинаю работу с таблицей profiles. Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE profiles
         ADD CONSTRAINT profiles_user_id_fk
            FOREIGN KEY (user_id) REFERENCES users(id)
               ON DELETE CASCADE
   [2021-05-08 11:07:40] 100 rows affected in 757 ms
   ~~~
   Создаю внешний ключ city_id:
   ~~~ mysql
   vk> ALTER TABLE profiles
         ADD CONSTRAINT profiles_city_id_fk
            FOREIGN KEY (city_id) REFERENCES cities(id)
               ON DELETE SET NULL
   [2021-05-08 11:26:24] 100 rows affected in 255 ms
   ~~~
   Два внешних ключа в таблице profiles созданы.
   
   Работаю с таблицей cities. Создаю внешний ключ country_id:
   ~~~ mysql
   vk> ALTER TABLE cities
         ADD CONSTRAINT cities_country_id_fk
               FOREIGN KEY (country_id) REFERENCES countries(id)
                  ON DELETE SET NULL
   [2021-05-08 11:43:41] 100 rows affected in 268 ms
   ~~~
   Один внешний ключ в таблице cities создан.

   Работаю с таблицей posts. Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE posts
        ADD CONSTRAINT posts_user_id_fk
               FOREIGN KEY (user_id) REFERENCES users(id)
                  ON DELETE CASCADE
   [2021-05-08 16:12:42] 100 rows affected in 268 ms
   ~~~
   Создаю внешний ключ media_id:
   ~~~ mysql
   ALTER TABLE posts
        ADD CONSTRAINT posts_media_id_fk
            FOREIGN KEY (media_id) REFERENCES media(id)
                ON DELETE SET NULL;
   ~~~
   Работаю с таблицей friendship. Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE friendship
        ADD CONSTRAINT friendship_user_id_fk
            FOREIGN KEY (user_id) REFERENCES users(id)
                ON DELETE CASCADE
   [2021-05-08 16:32:53] 100 rows affected in 223 ms
   ~~~
   Создаю внешний ключ friend_status_id:   
   ~~~ mysql
   vk> ALTER TABLE friendship
        ADD CONSTRAINT friendship_friend_status_id_fk
            FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id)
                ON DELETE CASCADE
   [2021-05-08 17:41:31] 100 rows affected in 203 ms
   ~~~
   Работаю с таблицей media. Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE media
        ADD CONSTRAINT media_user_id_fk
            FOREIGN KEY (user_id) REFERENCES users(id)
                ON DELETE CASCADE
   [2021-05-08 17:50:24] 100 rows affected in 156 ms
   ~~~
   Создаю внешний ключ media_type_id:
   ~~~ mysql
   vk> ALTER TABLE media
        ADD CONSTRAINT media_media_type_id_fk
            FOREIGN KEY (media_type_id) REFERENCES media_types(id)
                ON DELETE CASCADE
   [2021-05-08 17:54:54] 100 rows affected in 257 ms
   ~~~
   ~~~ mysql
   -- Добавляю внешние ключи
   vk> ALTER TABLE messages
         ADD CONSTRAINT messages_from_user_id_fk
            FOREIGN KEY (from_user_id) REFERENCES users(id),
         ADD CONSTRAINT messages_to_user_id_fk
            FOREIGN KEY (to_user_id) REFERENCES users(id)
   [2021-05-10 11:40:36] 100 rows affected in 336 ms
   ~~~
   Создаю внешний ключ media_id:
   ~~~ mysql
   vk> ALTER TABLE messages
            ADD CONSTRAINT messages_media_id_fk
                FOREIGN KEY (media_id) REFERENCES media(id)
                    ON DELETE SET NULL
   [2021-05-09 13:39:25] 100 rows affected in 123 ms
   ~~~
   Работаю с таблицей likes. Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE likes
        ADD CONSTRAINT likes_user_id_fk
            FOREIGN KEY (user_id) REFERENCES users(id)
                ON DELETE CASCADE
   [2021-05-08 18:37:48] 100 rows affected in 113 ms
   ~~~
   Работаю с таблицей communities_users. Создаю внешний ключ community_id:
   ~~~ mysql
   vk> ALTER TABLE communities_users
        ADD CONSTRAINT communities_users_community_id_fk
            FOREIGN KEY (community_id) REFERENCES communities(id)
                ON DELETE CASCADE
   [2021-05-08 18:45:15] 100 rows affected in 249 ms
   ~~~
   Создаю внешний ключ user_id:
   ~~~ mysql
   vk> ALTER TABLE communities_users
        ADD CONSTRAINT communities_users_user_id_fk
            FOREIGN KEY (user_id) REFERENCES users(id)
                ON DELETE CASCADE
   [2021-05-08 18:48:42] 100 rows affected in 122 ms
   ~~~
   [**Диаграмма отношений тут**](https://github.com/Dr0nx/dbs/tree/lesson_6/lesson_6/vk_diagram_20210510.png)
3. Определяю кто больше поставил лайков (всего) - мужчины или женщины? 
   
   Мое решение: использую функции CONCAT(), COUNT(), IF().
   ~~~ mysql
   vk> SELECT CONCAT('Больше лайков у ', COUNT(gender), ' ',
         IF(gender = 'M', 'мужчин', 'женщин')) AS more_likes FROM profiles
               GROUP BY gender ORDER BY COUNT(gender) DESC LIMIT 1
   [2021-05-10 00:20:52] 1 row retrieved starting from 1 in 24 ms (execution: 5 ms, fetching: 19 ms)
   ~~~
   Результат:

   |more_likes|
   |:---|
   |Больше лайков у 53 мужчин|
   
4. Для каждого пользователя выполняю количество созданных сообщений, постов, загруженных медиафайлов и поставленных 
   лайков:
   ~~~ mysql
   vk> SELECT user_id,
        (SELECT COUNT(*) FROM messages WHERE profiles.user_id = messages.to_user_id) AS messages_count,
        (SELECT COUNT(*) FROM posts WHERE profiles.user_id = posts.user_id) AS posts_count,
        (SELECT COUNT(*) FROM media WHERE profiles.user_id = media.user_id) AS media_count,
        (SELECT COUNT(*) FROM likes WHERE profiles.user_id = likes.user_id) AS likes_count
    FROM profiles ORDER BY user_id
   [2021-05-11 12:41:38] 100 rows retrieved starting from 1 in 27 ms (execution: 10 ms, fetching: 17 ms)
   ~~~
5. Мой вариант подсчета количества лайков, которые получили 10 самых последних сообщений:
   ~~~ mysql
   vk> SELECT
        (SELECT COUNT(user_id) FROM likes WHERE messages.to_user_id = user_id) AS count
    FROM messages ORDER BY id DESC LIMIT 10
   [2021-05-11 17:30:32] 10 rows retrieved starting from 1 in 30 ms (execution: 6 ms, fetching: 24 ms)
   ~~~
   
   