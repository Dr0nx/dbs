### 4. Скрипты наполнения базы данных данными
После того как структура определена, используется генератор случайных данных mysql (фейкер) - http://filldb.info/.
Сгенерированы "сырые" данные для 13 таблиц. Далее проводится работа с внешними ключами:
~~~ mysql
ALTER TABLE news
    ADD CONSTRAINT news_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id),
    ADD CONSTRAINT news_media_id_fk
        FOREIGN KEY (media_id) REFERENCES media (id);

ALTER TABLE articles
    ADD CONSTRAINT articles_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id),
    ADD CONSTRAINT articles_media_id_fk
        FOREIGN KEY (media_id) REFERENCES media (id);

ALTER TABLE media
    ADD CONSTRAINT media_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id),
    ADD CONSTRAINT media_media_type_id_fk
        FOREIGN KEY (media_type_id) REFERENCES media_types (id);

ALTER TABLE topics
    ADD CONSTRAINT topics_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id),
    ADD CONSTRAINT topics_media_id_fk
        FOREIGN KEY (media_id) REFERENCES media (id);

ALTER TABLE blogs
    ADD CONSTRAINT blogs_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id),
    ADD CONSTRAINT blogs_media_id_fk
        FOREIGN KEY (media_id) REFERENCES media (id);

ALTER TABLE banks
    ADD CONSTRAINT banks_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);

ALTER TABLE currencies
    ADD CONSTRAINT currencies_buy_sale_id_fk
        FOREIGN KEY (buy_sale_id) REFERENCES buys_sales (id);

ALTER TABLE currencies
    ADD CONSTRAINT currencies_bank_id_fk
        FOREIGN KEY (bank_id) REFERENCES banks (id),
    ADD CONSTRAINT currencies_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);

ALTER TABLE deposits
    ADD CONSTRAINT deposits_bank_id_fk
        FOREIGN KEY (bank_id) REFERENCES banks (id),
    ADD CONSTRAINT deposits_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);

ALTER TABLE credits
    ADD CONSTRAINT credits_bank_id_fk
        FOREIGN KEY (bank_id) REFERENCES banks (id),
    ADD CONSTRAINT credits_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);

ALTER TABLE buys_sales
    ADD CONSTRAINT buys_sales_bank_id_fk
        FOREIGN KEY (bank_id) REFERENCES banks (id);

ALTER TABLE media
    ADD CONSTRAINT media_media_type_id_fk
        FOREIGN KEY (media_type_id) REFERENCES media_types (id),
    ADD CONSTRAINT media_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);

ALTER TABLE topics
    ADD CONSTRAINT topics_media_id_fk
        FOREIGN KEY (media_id) REFERENCES media (id),
    ADD CONSTRAINT topics_editor_id_fk
        FOREIGN KEY (editor_id) REFERENCES editors (id);
~~~
Теперь идет работа с индексами:
~~~ mysql
CREATE INDEX options_option_name_idx ON options (option_name);
CREATE INDEX news_title_announcement_idx ON news (title, announcement);
CREATE INDEX news_created_at_idx ON news (created_at);
CREATE INDEX news_updated_at_idx ON news (updated_at);
CREATE INDEX media_filename_idx ON media (filename);
CREATE INDEX media_size_idx ON media (size);
CREATE INDEX media_created_at_idx ON media (created_at);
CREATE INDEX media_updated_at_idx ON media (updated_at);
CREATE INDEX articles_title_idx ON articles (title);
CREATE INDEX articles_created_at_idx ON articles (created_at);
CREATE INDEX articles_updated_at_idx ON articles (updated_at);
CREATE INDEX blogs_created_at_idx ON blogs (created_at);
CREATE INDEX blogs_updated_at_idx ON blogs (updated_at);
CREATE INDEX topics_created_at_idx ON topics (created_at);
CREATE INDEX topics_updated_at_idx ON topics (updated_at);
CREATE INDEX editors_status_idx ON editors (status);
CREATE INDEX editors_created_at_idx ON editors (created_at);
CREATE INDEX editors_updated_at_idx ON editors (updated_at);
CREATE INDEX deposits_deposit_type_idx ON deposits (deposit_type);
CREATE INDEX deposits_created_at_idx ON deposits (created_at);
CREATE INDEX deposits_updated_at_idx ON deposits (updated_at);
CREATE INDEX credits_credit_type_idx ON credits (credit_type);
CREATE INDEX credits_credit_value_idx ON credits (credit_value);
CREATE INDEX credits_created_at_idx ON credits (created_at);
CREATE INDEX credits_updated_at_idx ON credits (updated_at);
CREATE INDEX currencies_currency_value_idx ON currencies (currency_value);
CREATE INDEX currencies_created_at_idx ON currencies (created_at);
CREATE INDEX currencies_updated_at_idx ON currencies (updated_at);
CREATE INDEX buys_sales_buy_rub_idx ON buys_sales (buy_rub);
CREATE INDEX buys_sales_sale_rub_idx ON buys_sales (sale_rub);
CREATE INDEX buys_sales_buy_dollar_idx ON buys_sales (buy_dollar);
CREATE INDEX buys_sales_sale_dollar_idx ON buys_sales (sale_dollar);
CREATE INDEX buys_sales_buy_euro_idx ON buys_sales (buy_euro);
CREATE INDEX buys_sales_sale_euro_idx ON buys_sales (sale_euro);
CREATE INDEX buys_sales_created_at_idx ON buys_sales (created_at);
CREATE INDEX buys_sales_updated_at_idx ON buys_sales (updated_at);
CREATE INDEX banks_bank_idx ON banks (bank);
CREATE INDEX banks_created_at_idx ON banks (created_at);
CREATE INDEX banks_updated_at_idx ON banks (updated_at);
~~~
Таблица media. Заполняю и корректирую необходимые таблицы:
~~~ mysql
CREATE TEMPORARY TABLE extensions
(
    name VARCHAR(10)
);
INSERT INTO extensions
VALUES ('jpeg'),
       ('mp4'),
       ('mp3'),
       ('avi'),
       ('png');
SELECT *
FROM extensions;
UPDATE media
SET filename = CONCAT(
        'https://yuga.ru/media/',
        filename,
        '.',
        (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
    );
~~~
Заполняю метаданные:
~~~ mysql
UPDATE media SET metadata = 
        CONCAT('{"owner":"',
        (SELECT LEFT(UUID(), 8)), 
        '"}');
~~~
Корректирую размер файла:
~~~ mysql
UPDATE media
SET size = FLOOR(10000 + (RAND() * 1000000))
WHERE size < 1000;
~~~
Таблица media_types. Корректирую типы:
~~~ mysql
TRUNCATE media_types;
INSERT INTO media_types (name)
VALUES ('фото'),
       ('видео'),
       ('аудио');
~~~
Таблица editors. Корректирую типы атрибута status:
~~~ mysql
CREATE TEMPORARY TABLE cur_val
(
    name VARCHAR(50)
);
INSERT INTO cur_val
VALUES ('0'),
       ('1');
UPDATE editors
SET status = (SELECT name FROM cur_val ORDER BY RAND() LIMIT 1);
DROP TEMPORARY TABLE cur_val;
~~~
Таблица credits. Генерирую случайные данные для атрибута credit_type и credit_value:
~~~ mysql
DROP TEMPORARY TABLE IF EXISTS cur_val;
CREATE TEMPORARY TABLE cur_val
(
    name VARCHAR(50)
);
INSERT INTO cur_val
VALUES ('ипотека'),
       ('потребительский'),
       ('срочный');
UPDATE credits
SET credit_type = (SELECT name FROM cur_val ORDER BY RAND() LIMIT 1);
ALTER TABLE credits
    MODIFY COLUMN credit_type ENUM ('ипотека','потребительский', 'срочный');
DROP TEMPORARY TABLE cur_val;

CREATE TEMPORARY TABLE cur_val
(
    name VARCHAR(50)
);
INSERT INTO cur_val
VALUES (100000),
       (250000),
       (500000),
       (1000000),
       (1500000),
       (5000000);
UPDATE credits
SET credits.credit_value = (SELECT name FROM cur_val ORDER BY RAND() LIMIT 1);
DROP TEMPORARY TABLE cur_val;
~~~
Таблица deposits. Генерирую случайные данные для атрибута deposit_type:
~~~ mysql
CREATE TEMPORARY TABLE cur_val
(
    name VARCHAR(50)
);
INSERT INTO cur_val
VALUES ('потребительский'),
       ('срочный');
UPDATE deposits
SET deposit_type = (SELECT name FROM cur_val ORDER BY RAND() LIMIT 1);
ALTER TABLE deposits
    MODIFY COLUMN deposit_type ENUM ('потребительский', 'срочный');
DROP TEMPORARY TABLE cur_val;
~~~
Таблица currencies. Генерирую случайные данные для атрибута currency_value:
~~~ mysql
CREATE TEMPORARY TABLE cur_val
(
    name VARCHAR(50)
);
INSERT INTO cur_val
VALUES ('rub'),
       ('dollar'),
       ('euro');
UPDATE currencies
SET currency_value = (SELECT name FROM cur_val ORDER BY RAND() LIMIT 1);
ALTER TABLE currencies
    MODIFY COLUMN currency_value ENUM ('rub', 'dollar', 'euro');
DROP TEMPORARY TABLE cur_val;
~~~
Таблица buys_sales. Генерирую случайные данные для атрибутов buy_rub, buy_dollar, buy_euro,
sale_rub, sale_dollar, sale_euro:
~~~ mysql
UPDATE buys_sales
SET buy_rub = ROUND(rand() * 100 + 1, 2);

UPDATE buys_sales
SET buy_dollar = ROUND(rand() * 100 + 1, 2);

UPDATE buys_sales
SET buy_euro = ROUND(rand() * 100 + 1, 2);

UPDATE buys_sales
SET sale_rub = ROUND(rand() * 100 + 1, 2);

UPDATE buys_sales
SET sale_dollar = ROUND(rand() * 100 + 1, 2);

UPDATE buys_sales
SET sale_euro = ROUND(rand() * 100 + 1, 2);
~~~
Таблица banks. Генерирую корректные данные для атрибута bank:
~~~ mysql
UPDATE banks SET bank = 'Альфа банк' WHERE id = 1;
UPDATE banks SET bank = 'Сбербанк' WHERE id = 2;
UPDATE banks SET bank = 'ВТБ' WHERE id = 3;
UPDATE banks SET bank = 'Газпромбанк' WHERE id = 4;
UPDATE banks SET bank = 'Уралсиб' WHERE id = 5;
UPDATE banks SET bank = 'Газтрансбанк' WHERE id = 6;
UPDATE banks SET bank = 'Внешфинбанк' WHERE id = 7;
UPDATE banks SET bank = 'Фора банк' WHERE id = 8;
UPDATE banks SET bank = 'Банк 1' WHERE id = 9;
UPDATE banks SET bank = 'Банк 2' WHERE id = 10;
~~~
Корректирую данные для всех таблиц, у которых не выполняется условие created_at < updated_at:
~~~ mysql
UPDATE currencies
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE banks
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE deposits
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE credits
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE buys_sales
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE editors
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE blogs
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE articles
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE news
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE topics
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE media
SET updated_at = NOW()
WHERE updated_at < created_at;

UPDATE media_types
SET updated_at = NOW()
WHERE updated_at < created_at;
~~~