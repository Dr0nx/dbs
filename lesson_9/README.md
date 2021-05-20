## Урок 10. Вебинар. Транзакции, переменные, представления. Администрирование. Хранимые процедуры и функции, триггеры
1.  В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Перемещаю запись id = 1 
    из таблицы shop.users в таблицу sample.users. Использую транзакции.
    ~~~ mysql
    sample> SELECT * FROM shop.users
    [2021-05-20 18:42:07] 6 rows retrieved starting from 1 in 48 ms (execution: 6 ms, fetching: 42 ms)
    sample> SELECT * FROM sample.users
    [2021-05-20 18:42:07] 0 rows retrieved in 160 ms (execution: 5 ms, fetching: 155 ms)
    sample> START TRANSACTION
    [2021-05-20 18:42:07] completed in 3 ms
    sample> INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1
    [2021-05-20 18:42:07] 1 row affected in 4 ms
    sample> DELETE FROM shop.users WHERE id = 1
    [2021-05-20 18:42:07] 1 row affected in 4 ms
    sample> COMMIT
    [2021-05-20 18:42:07] completed in 15 ms
    ~~~
2.  Создаю представление, которое выводит название name товарной позиции из таблицы products и соответствующее 
    название каталога name из таблицы catalogs.
    ~~~ mysql
    sample> CREATE OR REPLACE VIEW products_catalogs AS
              SELECT
                p.name AS product,
                  c.name AS catalog
            FROM
                products AS p
            JOIN
                catalogs AS c
            ON
                p.catalog_id = c.id
    [2021-05-20 18:59:01] completed in 31 ms
    ~~~
3.  Пусть имеется таблица с календарным полем created_at. В ней размещены разреженые календарные записи за август 2018
    года '2018-08-01', '2018-08-04', '2018-08-16' и 2018-08-17. Составляю запрос, который выводит полный список дат за 
    август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
    ~~~ mysql
    sample> CREATE TABLE IF NOT EXISTS _posts (
          id SERIAL PRIMARY KEY,
          name VARCHAR(255),
          created_at DATE NOT NULL
        )
    [2021-05-20 19:39:34] completed in 61 ms
    sample> INSERT INTO _posts VALUES
        (NULL, 'первая запись', '2018-08-01'),
        (NULL, 'вторая запись', '2018-08-04'),
        (NULL, 'третья запись', '2018-08-16'),
        (NULL, 'четвертая запись', '2018-08-17')
    [2021-05-20 19:39:34] 4 rows affected in 8 ms
    sample> CREATE TEMPORARY TABLE last_days (
          day INT
        )
    [2021-05-20 19:39:34] completed in 15 ms
    sample> INSERT INTO last_days VALUES
        (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
        (11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
        (21), (22), (23), (24), (25), (26), (27), (28), (29), (30)
    [2021-05-20 19:39:34] 31 rows affected in 14 ms
    sample> SELECT
          DATE('2018-08-31') - INTERVAL l.day DAY AS day,
          NOT ISNULL(p.name) AS order_exist
        FROM
          last_days AS l
        LEFT JOIN
          _posts AS p
        ON
          DATE(DATE('2018-08-31') - INTERVAL l.day DAY) = p.created_at
        ORDER BY
          day
    [2021-05-20 19:39:34] 31 rows retrieved starting from 1 in 113 ms (execution: 41 ms, fetching: 72 ms)
    ~~~

4.  Пусть имеется любая таблица с календарным полем created_at. Создаю запрос, который удаляет устаревшие записи из
    таблицы, оставляя только 5 самых свежих записей.
    ~~~ mysql
    DROP TABLE IF EXISTS _posts;
    CREATE TABLE IF NOT EXISTS posts (
      id SERIAL PRIMARY KEY,
      name VARCHAR(255),
      created_at DATE NOT NULL
    );

    INSERT INTO _posts VALUES
    (NULL, 'первая запись', '2018-11-01'),
    (NULL, 'вторая запись', '2018-11-02'),
    (NULL, 'третья запись', '2018-11-03'),
    (NULL, 'четвертая запись', '2018-11-04'),
    (NULL, 'пятая запись', '2018-11-05'),
    (NULL, 'шестая запись', '2018-11-06'),
    (NULL, 'седьмая запись', '2018-11-07'),
    (NULL, 'восьмая запись', '2018-11-08'),
    (NULL, 'девятая запись', '2018-11-09'),
    (NULL, 'десятая запись', '2018-11-10');

    DELETE
      _posts
    FROM
      _posts
    JOIN
      (SELECT
      created_at
    FROM
      _posts
    ORDER BY
      created_at DESC
    LIMIT 5, 1) AS delpst
    ON
      _posts.created_at <= delpst.created_at;
    ~~~
    Результат:
    ~~~ mysql
    sample> SELECT * FROM _posts
    [2021-05-20 19:48:51] 4 rows retrieved starting from 1 in 32 ms (execution: 5 ms, fetching: 27 ms)
    ~~~


### Практическое задание по теме "Хранимые процедуры и функции, триггеры"

1.  Создаю хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
    С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу
    "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
    ~~~ mysql    
    vk> USE vk
    [2021-05-20 20:14:53] completed in 4 ms
    vk> DROP FUNCTION IF EXISTS hello
    [2021-05-20 20:14:53] completed in 164 ms
    vk> CREATE FUNCTION hello ()
        RETURNS TINYTEXT NO SQL
        BEGIN
          DECLARE hour INT;
          SET hour = HOUR(NOW());
          CASE
            WHEN hour BETWEEN 0 AND 5 THEN
              RETURN 'Доброй ночи';
            WHEN hour BETWEEN 6 AND 11 THEN
              RETURN 'Доброе утро';
            WHEN hour BETWEEN 12 AND 17 THEN
              RETURN 'Добрый день';
            WHEN hour BETWEEN 18 AND 23 THEN
              RETURN 'Добрый вечер';
          END CASE;
        END
    [2021-05-20 20:14:54] completed in 8 ms
    vk> SELECT NOW(), hello ()
    [2021-05-20 20:14:54] 1 row retrieved starting from 1 in 95 ms (execution: 6 ms, fetching: 89 ms)

2.  В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо 
    присутствие обоих полей или одного из них. Ситуация, когда оба поля принимают неопределенное значение NULL 
    неприемлема. Используя триггеры, добиваюсь того, чтобы одно из этих полей или оба поля были заполнены. При попытке
    присвоить полям NULL-значение необходимо отменить операцию.
    ~~~ mysql
    shop> CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
          FOR EACH ROW BEGIN
            IF NEW.name IS NULL AND NEW.desсription IS NULL THEN
              SIGNAL SQLSTATE '45000'
              SET MESSAGE_TEXT = 'Both product name and product description are NULL';
            END IF;
          END
    [2021-05-20 21:03:46] completed in 32 ms

    shop> INSERT INTO products
            (name, desсription, price, catalog_id)
          VALUES
            (NULL, NULL, 9360.00, 2)//
    [2021-05-20 21:06:49] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//' at line 4
    [2021-05-20 21:06:49] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//' at line 4

    shop> INSERT INTO products
            (name, desсription, price, catalog_id)
          VALUES
            ('ASUS PRIME Z370-P', 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)
    [2021-05-20 21:07:23] 1 row affected in 8 ms

    shop> INSERT INTO products
            (name, desсription, price, catalog_id)
          VALUES
            (NULL, 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//
    [2021-05-20 21:09:17] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//' at line 4
    [2021-05-20 21:09:17] [42000][1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '//' at line 4

    shop> CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
        FOR EACH ROW BEGIN
            IF NEW.name IS NULL AND NEW.desсription IS NULL THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Both product name and product description are NULL';
            END IF;
        END
    [2021-05-20 21:15:28] completed in 14 ms
    ~~~
    
3.  Создаю хранимую функцию для вычисления произвольного числа Фибоначчи. 
    Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
    Вызов функции FIBONACCI(10) должен возвращать число 55.
    ~~~ mysql
    shop> CREATE FUNCTION FIBONACCI(num INT)
          RETURNS INT DETERMINISTIC
          BEGIN
            DECLARE fs DOUBLE;
            SET fs = SQRT(5);
      
            RETURN (POW((1 + fs) / 2.0, num) + POW((1 - fs) / 2.0, num)) / fs;
          END
    [2021-05-20 21:20:15] completed in 42 ms
    shop> SELECT FIBONACCI(10)
    [2021-05-20 21:20:16] 1 row retrieved starting from 1 in 57 ms (execution: 20 ms, fetching: 37 ms)