## Урок 11. Видеоурок. Оптимизация запросов. NoSQL
1.  Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
    catalogs и products в таблицу logs помещается время и дата создания записи, название
    таблицы, идентификатор первичного ключа и содержимое поля name.
    
    <br>
    
    Создаю таблицу Logs:
    ~~~ mysql
    shop> CREATE TABLE Logs (
          id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
          created_at datetime DEFAULT CURRENT_TIMESTAMP,
          table_name varchar(50) NOT NULL,
          row_id INT UNSIGNED NOT NULL,
          row_name varchar(255)
      ) ENGINE = Archive
    [2021-05-31 20:29:02] completed in 145 ms
    ~~~
    Создаю три триггера, они аналогичны:
    ~~~ mysql
    shop> CREATE TRIGGER products_insert AFTER INSERT ON products
          FOR EACH ROW
          BEGIN
              INSERT INTO Logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
          END
    [2021-05-31 20:41:54] completed in 147 ms
    
    shop> CREATE TRIGGER users_insert AFTER INSERT ON users
          FOR EACH ROW
          BEGIN
              INSERT INTO Logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
          END
    [2021-05-31 20:43:56] completed in 47 ms

    shop> CREATE TRIGGER catalogs_insert AFTER INSERT ON catalogs
          FOR EACH ROW
          BEGIN
              INSERT INTO Logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
          END
    [2021-05-31 20:45:09] completed in 98 ms
    ~~~
    Создаю необходимые значения.
    
    <br>
    
2.  (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
    
    <br>

    Создаю таблицу samples со следующей структурой:
    ~~~ mysql
    shop> CREATE TABLE samples (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) COMMENT 'Имя покупателя',
        birthday_at DATE COMMENT 'Дата рождения',
        created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
      ) COMMENT = 'Покупатели'
    [2021-05-31 20:58:31] completed in 120 ms
    ~~~
    Записываю несколько значений в таблицу:
    ~~~ mysql
    shop> INSERT INTO samples (name, birthday_at) VALUES
        ('Геннадий', '1990-10-05'),
        ('Наталья', '1984-11-12'),
        ('Александр', '1985-05-20'),
        ('Сергей', '1988-02-14'),
        ('Иван', '1998-01-12'),
        ('Мария', '1992-08-29'),
        ('Аркадий', '1994-03-17'),
        ('Ольга', '1981-07-10'),
        ('Владимир', '1988-06-12'),
        ('Екатерина', '1992-09-20')
    [2021-05-31 21:01:55] 10 rows affected in 38 ms
    ~~~
    Смотрю вывод:
    ~~~ mysql
    SELECT COUNT(*)
    FROM samples AS fst,
         samples AS snd,
         samples AS thd,
         samples AS fth,
         samples AS fif,
         samples AS sth;
    ~~~
    COUNT(*) - 1 000 000 значений!
    