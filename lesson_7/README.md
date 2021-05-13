## Урок 7. Видеоурок. Сложные запросы
1. Составляю список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
   ~~~ mysql
   shop_fixed> SELECT u.id, u.name, u.birthday_at
                  FROM users AS u
                     JOIN orders AS o
                        ON u.id = o.user_id
   [2021-05-13 20:07:01] 3 rows retrieved starting from 1 in 38 ms (execution: 12 ms, fetching: 26 ms)
   ~~~

2. Вывожу список товаров products и разделов catalogs, который соответствует товару.
   ~~~ mysql
    shop_fixed> SELECT
                p.id,
                p.name,
                p.price,
                c.name AS catalog
                FROM products AS p
                    JOIN catalogs AS c
                        ON p.catalog_id = c.id
    [2021-05-13 20:16:47] 7 rows retrieved starting from 1 in 48 ms (execution: 10 ms, fetching: 38 ms)
         
   ~~~

3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label
   содержат английские названия городов, поле name — русское. Вывожу список рейсов flights с русскими названиями 
   городов.
   ~~~ mysql
   shop_fixed> CREATE TABLE _flights
   (
         id SERIAL PRIMARY KEY,
         `from` VARCHAR(255) COMMENT 'Откуда',
         `to` VARCHAR(255) COMMENT 'Куда'
   ) COMMENT = 'Таблица рейсов'
   [2021-05-13 20:45:00] completed in 299 ms
   
   shop_fixed> CREATE TABLE _cities
   (
         id    SERIAL PRIMARY KEY,
         label VARCHAR(255) COMMENT 'Английское название города',
         name  VARCHAR(255) COMMENT 'Русское название города'
   ) COMMENT = 'Таблица городов'
   [2021-05-13 20:45:01] completed in 122 ms
   ~~~
   Заполняю данными:
   ~~~ mysql
   shop_fixed> INSERT INTO _flights VALUES
        (1, 'moscow', 'omsk'),
        (2, 'novgorod', 'kazan'),
        (3, 'irkutsk', 'moscow'),
        (4, 'omsk', 'irkutsk'),
        (5, 'moscow', 'kazan')
   [2021-05-13 21:05:00] 5 rows affected in 67 ms
   
   shop_fixed> INSERT INTO _cities VALUES
        (1, 'moscow', 'Москва'),
        (2, 'irkutsk', 'Иркутск'),
        (3, 'novgorod', 'Новгород'),
        (4, 'kazan', 'Казань'),
        (5, 'omsk', 'Омск')
   [2021-05-13 21:05:00] 5 rows affected in 77 ms
   ~~~
   Выполняю запрос:
   ~~~ mysql
   SELECT
      f.id,
      cities_from.name AS `from`,
      cities_to.name AS `to`
   FROM _flights AS f
      JOIN _cities AS cities_from
         ON f.from = cities_from.label
      JOIN _cities AS cities_to
         ON f.to = cities_to.label;
   ~~~