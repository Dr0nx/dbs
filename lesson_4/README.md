## Урок 4. Вебинар. CRUD-операции
Повторяю все действия по доработке структуры БД **vk** и данных. Сначала выполняю предложения по доработке структуры
СУБД:

#### Вариант 1
~~~ mysql
-- Вариант 1
-- Разве что поля стран сделать уникальными, можно еще в сообщения
-- добавить столбец "прочитано",

USE vk;
DESC countries;
ALTER TABLE countries MODIFY COLUMN name VARCHAR(150) NOT NULL UNIQUE;
~~~
Возникает ошибка:
~~~ mysql
[23000][1062] Duplicate entry 'Bhutan' for key 'countries.name'
~~~
Дубликатов много, поэтому просто пересоздаю таблицу countries с помощью фейкера (только таблица countries) и вставляю 
дамп в vk.countries:
~~~ bash
dr0n@bozhkov-ubuntu:~$ mysql vk < countries.sql 
dr0n@bozhkov-ubuntu:~$
~~~
Проверяю, теперь ошибок нет.

#### Вариант 2

Так как значений в таблице friendship_statuses мало, то можно использовать следующий способ для изменения атрибута name:
~~~ mysql
DROP TABLE IF EXISTS `friendship_statuses`;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` ENUM("друг","запрос на дружбу","отклонение запроса","не друг") NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'друг', '2020-06-29 21:24:01', '2013-09-21 20:11:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'не друг', '2020-06-29 21:24:01', '2013-09-21 20:11:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'запрос на дружбу', '2020-06-29 21:24:01', '2013-09-21 20:11:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'отклонение запроса', '2020-06-29 21:24:01', '2013-09-21 20:11:34');
~~~
#### Вариант 3
~~~ mysql
-- Вариант 3 
-- По доработке таблиц могу предположить что таблицу users можно дополнительно
-- разбить на users_contacts и вынести туда контактные данные (телефон, почту).
~~~
Для работы не подходит.
#### Вариант 4
Добавляю столбец delivered_at, и удаляю столбец is_delivered в таблице messages:
~~~ mysql
-- Вариант 4
-- Таблица messages (Таблица сообщений)
-- Предлагаю добавить время прочтения сообщения
-- Предлагаю добавить время удаления сообщения, если есть такой функционал

DESC messages;
ALTER TABLE messages ADD COLUMN delivered_at TIMESTAMP COMMENT 'Время доставки' AFTER is_important;
ALTER TABLE messages DROP COLUMN is_delivered;
~~~
Такие же преобразования провожу в таблице media:
~~~ mysql
-- Таблица media (Таблица медиа файлов)
-- Предлагаю добавить время удаления файлов, если есть такой функционал
DESC media;
ALTER TABLE media ADD COLUMN deleted_at TIMESTAMP COMMENT 'Время удаления' AFTER media_type_id;
~~~
#### Вариант 5
~~~ mysql
-- Вариант 5
-- Я считаю, что в таблице friendship необходимо изменить составной
-- превичный ключ на первичный ключ ввиде Id, так как комбинация user_id и friend_id
-- не всегда будут уникальными, так как оба поля заполняются из id таблицы users.
-- Т.е. связь user_id = 10, friend_id = 22 и user_id = 22, friend_id = 10 - это
-- фактически одна и та же связь с одинаковыми атрибутами.

-- Есть еще сомненения по поводу таблицы communities_users. Я бы там тоже
-- не использовала составной первичный ключ, так как, например, при добавлении
-- сущности "Пост" (сообщение в группе), можно сразу ссылаться на ID связи
-- пользователя и группы, а не дублировать информацию о user_id и community_id.

-- В каких случаях случаях лучше применять составной первичный ключ,
-- а в каких обычный (ввиде ID)? Какие плюсы и минусы у каждого подхода?
~~~
Для работы не подходит.
#### Вариант 6
Добавляю столбец media_id:
~~~ mysql
-- Вариант 6
-- В таблицу Сообщений можно добавить возможность отправки видео
ALTER TABLE messages ADD COLUMN media_id INT UNSIGNED COMMENT 'Ссылка на видео' AFTER body;
~~~
## CRUD-операции
~~~ mysql
-- CRUD операции

-- Create INSERT
-- Read   SELECT
-- Update UPDATE
-- Delete DELETE
~~~
Используя команды CRUD донести тестовые данные сгенерированные фейкером до более качественного состояния. Анализирую
данные каждой таблицы по порядку и смотрю пути к улучшению состояния БД.

Смотрю структуру таблицы пользователей:
~~~ mysql
vk> DESC users
[2021-05-01 11:32:12] 7 rows retrieved starting from 1 in 50 ms (execution: 33 ms, fetching: 17 ms)
~~~
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE users SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-01 11:32:45] 57 rows affected in 56 ms
~~~
Здесь используется функция NOW() и условие updated < created_at. Было получено 57 строк:
Проверяю:
~~~ mysql
vk> SELECT * FROM users WHERE updated_at < created_at
[2021-05-01 11:41:34] 0 rows retrieved in 29 ms (execution: 8 ms, fetching: 21 ms)
~~~
0 rows retrieved - хорошо.

Смотрю структуру профилей
~~~ mysql
vk> DESC profiles
[2021-05-01 14:08:16] 6 rows retrieved starting from 1 in 36 ms (execution: 12 ms, fetching: 24 ms)
~~~
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-01 14:20:32] 54 rows affected in 10 ms
~~~
Здесь также используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM profiles WHERE updated_at < created_at
[2021-05-01 12:25:35] 0 rows retrieved in 30 ms (execution: 10 ms, fetching: 20 ms)
~~~
У меня создались с помощью фейкера хорошие данные для столбца gender, но пробую сгенерировать еще раз эти данные другим
способом. Для начала заполняю пустыми значениями gender:
~~~ mysql
[2021-05-01 14:24:25] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE profiles SET gender = ''
[2021-05-01 14:24:33] 100 rows affected in 8 ms
~~~
Создаю временную таблицу, заполняю новыми значениями, проверяю:
~~~ mysql
vk> CREATE TEMPORARY TABLE genders (name CHAR(1))
[2021-05-01 14:27:01] completed in 5 ms
vk> INSERT INTO genders VALUES ('F'), ('M')
[2021-05-01 14:27:41] 2 rows affected in 4 ms
vk> SELECT * FROM genders
[2021-05-01 14:28:14] 2 rows retrieved starting from 1 in 21 ms (execution: 6 ms, fetching: 15 ms)
[2021-05-01 14:29:41] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1)
[2021-05-01 14:29:45] 100 rows affected in 11 ms
vk> SELECT * FROM profiles LIMIT 10
[2021-05-01 14:31:34] 10 rows retrieved starting from 1 in 27 ms (execution: 6 ms, fetching: 21 ms)
~~~
Работаю со столбцом city_id.
~~~ mysql
vk> SELECT * FROM cities ORDER BY id DESC LIMIT 1
[2021-05-01 14:46:52] 1 row retrieved starting from 1 in 35 ms (execution: 14 ms, fetching: 21 ms)
~~~
Обращаю внимание на способ определения границ в функции RAND() (случайное от 1 до 100):
~~~ mysql
vk> SELECT FLOOR(1 + RAND() * 100)
[2021-05-01 15:23:33] 1 row retrieved starting from 1 in 14 ms (execution: 5 ms, fetching: 9 ms)
~~~
Генерирую случайные числа от 1 до 100 в столбце city_id и проверяю:
~~~ mysql
[2021-05-01 15:35:36] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE profiles SET city_id = FLOOR(1 + RAND() * 100)
[2021-05-01 15:35:47] 100 rows affected in 10 ms
vk> SELECT * FROM profiles LIMIT 10
[2021-05-01 15:37:54] 10 rows retrieved starting from 1 in 33 ms (execution: 6 ms, fetching: 27 ms)
~~~

Смотрю структуру таблицы сообщений:
~~~ mysql
vk> DESC messages
[2021-05-01 15:45:05] 8 rows retrieved starting from 1 in 31 ms (execution: 11 ms, fetching: 20 ms)
~~~
Исправляю ссылки на пользователей:
~~~ mysql
[2021-05-01 15:54:40] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE messages SET from_user_id = FLOOR(1 + RAND() * 100), to_user_id = FLOOR(1 + RAND() * 100)
[2021-05-01 15:54:53] 100 rows affected in 10 ms
~~~
Проверяю, что в таблице media 100 строк:
~~~ mysql
vk> SELECT * FROM media ORDER BY id DESC LIMIT 1
[2021-05-01 16:05:51] 1 row retrieved starting from 1 in 30 ms (execution: 8 ms, fetching: 22 ms)
~~~
Да, все верно. Генерирую случайные числа в таблице messages в столбце media_id:
~~~ mysql
[2021-05-01 16:13:12] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE messages SET messages.media_id = FLOOR(1 + RAND() * 100)
[2021-05-01 16:13:17] 100 rows affected in 13 ms
~~~
Проверяю данные:
~~~ mysql
vk> SELECT * FROM messages LIMIT 10
[2021-05-01 16:16:17] 10 rows retrieved starting from 1 in 26 ms (execution: 6 ms, fetching: 20 ms)
~~~
Все правильно.

Проверяю ситуацию, когда после фейкера получились нежелательные равенства столбцов from_user_id и to_user_id:
~~~ mysql
vk> SELECT * FROM messages WHERE from_user_id = to_user_id
[2021-05-01 16:52:56] 0 rows retrieved in 27 ms (execution: 7 ms, fetching: 20 ms)
~~~
У меня получилось 0 срок, но я ставлю эту проверку:
~~~ mysql
vk> UPDATE messages SET to_user_id = to_user_id + 1 WHERE from_user_id = to_user_id
[2021-05-01 17:00:17] completed in 10 ms
~~~
Использую самую простую логику, заполняю 20 строк для столбца delivered_at:
~~~ mysql
vk> UPDATE messages SET messages.delivered_at = NOW() WHERE from_user_id <= 20
[2021-05-01 17:13:58] 21 rows affected in 12 ms
~~~
Вижу, что по крайней мере 4 строки со значениями 2021-05-01 14:13:58 в delivered_at:
~~~ mysql
vk> SELECT * FROM messages LIMIT 10
[2021-05-01 17:16:22] 10 rows retrieved starting from 1 in 33 ms (execution: 7 ms, fetching: 26 ms)
~~~
Также поступаю еще 4 раза, чтобы заполнить все значения delivered_at:
~~~ mysql
vk> UPDATE messages SET messages.delivered_at = NOW() WHERE from_user_id >= 41 AND from_user_id <= 60
[2021-05-01 18:00:33] 25 rows affected in 11 ms
vk> UPDATE messages SET messages.delivered_at = NOW() WHERE from_user_id >= 61 AND from_user_id <= 80
[2021-05-01 18:02:55] 20 rows affected in 10 ms
vk> UPDATE messages SET messages.delivered_at = NOW() WHERE from_user_id >= 81 AND from_user_id <= 100
[2021-05-01 18:03:51] 20 rows affected in 8 ms
vk> UPDATE messages SET messages.delivered_at = NOW() WHERE from_user_id >= 20 AND from_user_id <= 40
[2021-05-01 18:11:10] 14 rows affected in 9 ms
~~~
Добавляю случайные значения 0 или 1 для столбца is_important:
~~~ mysql
vk> UPDATE messages SET is_important = FLOOR(RAND() * 2)
[2021-05-03 07:22:09] 100 rows affected in 16 ms~~~
~~~
Смотрю структуру таблицы медиаконтента:
~~~ mysql
vk> DESC media
[2021-05-01 18:17:25] 9 rows retrieved starting from 1 in 26 ms (execution: 10 ms, fetching: 16 ms)
~~~
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE media SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-01 18:24:48] 60 rows affected in 10 ms
~~~
Здесь используется функция NOW() и условие updated < created_at. Было получено 60 строк:
Проверяю:
~~~ mysql
vk> SELECT * FROM media WHERE updated_at < created_at
[2021-05-01 18:28:11] 0 rows retrieved in 35 ms (execution: 6 ms, fetching: 29 ms)
~~~
0 rows retrieved - хорошо.

Корректирую данные, начинаю user_id. Обновляю ссылку на пользователя-владельца. У меня столбец user_id со значениями
перемешан фейкером. Перемешаю еще раз:
~~~ mysql
[2021-05-02 06:39:00] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE media SET user_id = FLOOR(1 + RAND() * 100)
[2021-05-02 06:39:11] 100 rows affected in 19 ms
~~~
Вижу, что 10 строк user_id перемешаны:
~~~ mysql
vk> SELECT * FROM media LIMIT 10
[2021-05-02 06:45:50] 10 rows retrieved starting from 1 in 303 ms (execution: 22 ms, fetching: 281 ms)
~~~
Следующий столбец filename. Использую "каркас" для генерирования новых значений, http://dropbox.net/vk/filename.
Создаю временную таблицу форматов медиафайлов:
~~~ mysql
vk> CREATE TEMPORARY TABLE extensions (name VARCHAR(10))
[2021-05-02 07:10:38] completed in 16 ms
~~~
Заполняю значениями:
~~~ mysql
vk> INSERT INTO extensions VALUES ('jpeg'), ('mp4'), ('mp3'), ('avi'), ('png')
[2021-05-02 07:11:23] 5 rows affected in 8 ms
~~~
Проверяю:
~~~ mysql
vk> SELECT * FROM extensions
[2021-05-02 07:14:17] 5 rows retrieved starting from 1 in 173 ms (execution: 17 ms, fetching: 156 ms)
~~~
Конструирую следующий UPDATE запрос:
~~~ mysql
vk> UPDATE media SET filename = CONCAT(
      'http://dropbox.net/vk/',
      filename,
      '.',
      (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
    )
[2021-05-02 07:15:56] 100 rows affected in 28 ms
~~~
Столбец size можно подкорректировать — слишком нереальные значения:
~~~ mysql
vk> UPDATE media SET size = FLOOR(10000 + RAND() * 10000000) WHERE size < 10000
[2021-05-02 07:41:39] 52 rows affected in 12 ms
~~~
Проверяю:
~~~ mysql
vk> SELECT * FROM media LIMIT 10
[2021-05-02 07:43:19] 10 rows retrieved starting from 1 in 44 ms (execution: 9 ms, fetching: 35 ms
~~~
Все хорошо.

Столбец metadata. Создаю объект, где ключом у меня будет owner, а значением имя и фамилия владельца данного медиафайла 
(`{"owner":"First Last"}`). Создаю вложенный запрос:
~~~ mysql
[2021-05-02 08:16:15] Unsafe query: 'Update' statement without 'where' updates all table rows at once
vk> UPDATE media SET metadata = CONCAT(
        '{"owner":"',
        (SELECT CONCAT(first_name, ' ', last_name)
            FROM users WHERE users.id = media.user_id),
        '"}')
[2021-05-02 08:16:31] 100 rows affected in 15 ms
~~~
Проверяю:
~~~ mysql
vk> SELECT * FROM media LIMIT 10
[2021-05-02 08:18:06] 10 rows retrieved starting from 1 in 37 ms (execution: 9 ms, fetching: 28 ms)
~~~
Все хорошо, НО тип столбца metadata сейчас - longtext (созданный фейкером), меня не устаивает, должен быть JSON,
корректирую:
~~~ mysql
vk> ALTER TABLE media MODIFY COLUMN metadata JSON
[2021-05-02 08:26:39] 100 rows affected in 105 ms
~~~
Проверяю структуру:
~~~ mysql
vk> DESC media
[2021-05-02 08:28:17] 9 rows retrieved starting from 1 in 34 ms (execution: 10 ms, fetching: 24 ms)
~~~
Теперь все правильно. Прежде чем продолжить работу над таблицей media, необходимо проанализировать media_types, на
которую она ссылается.

Анализирую типы медиаконтента:
~~~ mysql
Анализируем типы медиаконтента
SELECT * FROM media_types;
~~~
Для этой небольшой таблицы media_types я удалю все данные, созданные фейкером и заполняю нужные данные в столбец name:
~~~ mysql
vk> TRUNCATE media_types
[2021-05-02 10:13:12] completed in 46 ms
vk> INSERT INTO media_types (name) VALUES
      ('photo'),
      ('video'),
      ('audio')
[2021-05-02 10:18:16] 3 rows affected in 11 ms
~~~
Анализирую типы медиаконтента теперь:
~~~ mysql
SELECT * FROM media_types;
~~~
Теперь все данные в таблице более правдоподобные.
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE media_types SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-02 10:27:17] completed in 7 ms
~~~
Здесь используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM media_types WHERE updated_at < created_at
[2021-05-02 10:29:07] 0 rows retrieved in 29 ms (execution: 8 ms, fetching: 21 ms)
~~~
0 rows retrieved - хорошо.

Возвращаюсь к таблице media.
Анализирую типы медиаконтента:
~~~ mysql
vk> SELECT * FROM media_types
[2021-05-02 08:34:44] 10 rows retrieved starting from 1 in 31 ms (execution: 8 ms, fetching: 23 ms)
~~~
Обновляю данные для ссылки на тип. Всего три возможных значения в media_type_id - 1, 2, 3:
~~~ mysql
vk> UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3)
[2021-05-02 10:37:12] 100 rows affected in 21 ms
~~~
Проверяю структуру:
~~~ mysql
vk> SELECT * FROM media LIMIT 10
[2021-05-02 10:40:28] 10 rows retrieved starting from 1 in 47 ms (execution: 8 ms, fetching: 39 ms)
~~~
Все правильно.

Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE media SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-02 10:53:15] completed in 8 ms
~~~
Здесь используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM media WHERE updated_at < created_at
[2021-05-02 11:06:27] 0 rows retrieved in 33 ms (execution: 9 ms, fetching: 24 ms)
~~~
0 rows retrieved - хорошо.

Смотрю структуру таблицы дружбы:
~~~ mysql
vk> DESC friendship
[2021-05-02 11:18:42] 6 rows retrieved starting from 1 in 170 ms (execution: 11 ms, fetching: 159 ms)
~~~
Проверяю, что столбцы user_id и friend_id в таблице friendship перемешаны фейкером:
~~~ mysql
vk> SELECT * FROM friendship LIMIT 10
[2021-05-02 11:23:09] 10 rows retrieved starting from 1 in 33 ms (execution: 8 ms, fetching: 25 ms)
~~~
Думаю, что можно еще раз перемешать. Выполняю следующий запрос:
~~~ mysql
[2021-05-02 11:34:05] [23000][1062] Duplicate entry '98-60' for key 'friendship.PRIMARY'
vk> UPDATE friendship SET user_id = FLOOR(1 + RAND() * 100), friend_id = FLOOR(1 + RAND() * 100)
[2021-05-02 11:34:06] 99 rows affected in 11 ms
~~~
Проверяю:
~~~ mysql
vk> SELECT * FROM friendship WHERE user_id = friend_id
[2021-05-02 11:38:39] 0 rows retrieved in 20 ms (execution: 6 ms, fetching: 14 ms)
~~~
Далее, перехожу в таблицу friendship_statuses и привожу ее к следующему состоянию:
~~~ mysql
vk> ALTER TABLE friendship_statuses MODIFY COLUMN name VARCHAR(150) NOT NULL
[2021-05-02 12:30:18] completed in 124 ms
vk> TRUNCATE friendship_statuses
[2021-05-02 12:31:16] completed in 26 ms
vk> INSERT INTO friendship_statuses (name) VALUES
      ('Requested'),
      ('Confirmed'),
      ('Rejected')
[2021-05-02 12:31:50] 3 rows affected in 9 ms
~~~
Проверяю:
~~~ mysql
vk> SELECT * FROM friendship_statuses
[2021-05-02 12:34:06] 3 rows retrieved starting from 1 in 29 ms (execution: 6 ms, fetching: 23 ms)
~~~
Все правильно.

Возвращаюсь в таблицу friendship. Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE friendship SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-02 12:47:02] completed in 55 ms
~~~
Здесь используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM friendship WHERE updated_at < created_at
[2021-05-02 12:47:57] 0 rows retrieved in 35 ms (execution: 10 ms, fetching: 25 ms)
~~~
0 rows retrieved - хорошо.

Смотрю структуру таблицы групп:
~~~ mysql
DESC communities;
~~~
Анализирую данные:
~~~ mysql
vk> SELECT * FROM communities
[2021-05-02 12:53:20] 100 rows retrieved starting from 1 in 40 ms (execution: 10 ms, fetching: 30 ms)
~~~
Удаляю часть групп:
~~~ mysql
vk> DELETE FROM communities WHERE id > 30
[2021-05-02 12:57:30] 70 rows affected in 38 ms
~~~
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE communities SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-02 13:04:17] 17 rows affected in 21 ms
~~~
Здесь используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM communities WHERE updated_at < created_at
[2021-05-02 13:05:05] 0 rows retrieved in 31 ms (execution: 8 ms, fetching: 23 ms)
~~~
0 rows retrieved - хорошо.

Смотрю таблицу связи пользователей и групп:
~~~ mysql
vk> DESC communities_users
[2021-05-02 13:09:02] 3 rows retrieved starting from 1 in 37 ms (execution: 15 ms, fetching: 22 ms)
~~~
Анализирую данные:
~~~ mysql
vk> SELECT * FROM communities_users
[2021-05-02 13:11:21] 100 rows retrieved starting from 1 in 42 ms (execution: 19 ms, fetching: 23 ms)
~~~
Так как количество групп теперь 30, то нужно сгенерировать новые значения в запросе:
~~~ mysql
[2021-05-02 13:24:31] [23000][1062] Duplicate entry '7-65' for key 'communities_users.PRIMARY'
vk> UPDATE communities_users SET
      user_id = FLOOR(1 + RAND() * 100),
      community_id = FLOOR(1 + RAND() * 30)
[2021-05-02 13:24:31] 100 rows affected in 11 ms
~~~
Привожу в порядок временные метки:
~~~ mysql
vk> UPDATE communities SET updated_at = NOW() WHERE updated_at < created_at
[2021-05-02 13:04:17] 17 rows affected in 21 ms
~~~
Здесь используется функция NOW() и условие updated < created_at.
Проверяю:
~~~ mysql
vk> SELECT * FROM communities WHERE updated_at < created_at
[2021-05-02 13:05:05] 0 rows retrieved in 31 ms (execution: 8 ms, fetching: 23 ms)
~~~
0 rows retrieved - хорошо.
## Анализ курсовой работы
Для курсовой работы я выбираю тему, которая близка мне на основной работе — интернет-портал Южного региона 
[Yuga.ru](https://yuga.ru). У нас есть программисты, верстальщики, которые работают непосредственно с кодом на сервере. 
Сам сервер в облаке в Москве, но у меня нет доступа к нему, я не могу "подсмотреть" код — этим занимается другой 
системный администратор. Поэтому я выбираю эту тему, мне она интересна.
## Реализация лайков и постов
Мое предложение лайков и постов:
~~~ mysql
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  post_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на посты',
  message_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на сообщения',
  media_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на медиафайлы',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователей'
);
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  is_like tinyint(1) DEFAULT NULL COMMENT 'Признак лайка',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
);
ALTER TABLE messages ADD COLUMN is_like tinyint(1) DEFAULT NULL COMMENT 'Признак лайка';
ALTER TABLE media ADD COLUMN is_like tinyint(1) DEFAULT NULL COMMENT 'Признак лайка';
ALTER TABLE users ADD COLUMN is_like tinyint(1) DEFAULT NULL COMMENT 'Признак лайка';
~~~
Дамп для урока №4 приложен: [vk.sql](https://github.com/Dr0nx/dbs/blob/lesson_4/lesson_4/vk.02.05.2021.sql)