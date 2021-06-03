### 6. Представления
Тут представлены некоторые представления:
~~~ mysql
-- Вывожу лучший курс рубля, доллара и евро в банке используя представление buys_and_sales
CREATE OR REPLACE VIEW buys_and_sales AS
SELECT MAX(buys_sales.buy_rub)     AS best_buy_rub,
       MAX(buys_sales.buy_dollar)  AS best_buy_dollar,
       MAX(buys_sales.buy_euro)    AS best_buy_euro,
       MAX(buys_sales.sale_rub)    AS best_sale_rub,
       MAX(buys_sales.sale_dollar) AS best_sale_dollar,
       MAX(buys_sales.sale_euro)   AS best_sale_euro
FROM currencies
         JOIN buys_sales ON currencies.bank_id = buys_sales.bank_id;

-- Для рубля
SELECT best_buy_rub
FROM buys_and_sales;

-- DROP VIEW buys_and_sales;
~~~
~~~ mysql
-- Создаю представление artl для редакторов, которые создают статьи, получаю заглавие, содержимое и дату 5 последних
-- статей
CREATE OR REPLACE VIEW artl AS
SELECT email, title, content, articles.updated_at
FROM articles
         JOIN editors e on e.id = articles.editor_id
ORDER BY updated_at DESC;

SELECT *
FROM artl
LIMIT 5;

-- DROP VIEW artl;
~~~
~~~ mysql
-- Создаю представление cred, добавляю информацию и проверяю, есть ли в нашей компании банки, у которых есть
-- действующая лицензия списке, иначе ошибка
CREATE OR REPLACE VIEW cred AS
SELECT *
FROM banks
WHERE bank IN ('Альфа', 'Сбер', 'ВТБ', 'Газпром')
WITH CHECK OPTION;

INSERT INTO cred
VALUES (11, 'Альфа', 1, '2012-11-24 16:47:22', '2021-05-30 17:39:41');
INSERT INTO cred
VALUES (12, 'Сб$ер', 1, '2019-03-24 06:37:46', '2020-07-10 08:18:11');

SELECT *
FROM banks;
-- DELETE FROM banks WHERE id = 11;
-- DROP VIEW cred;
~~~