### 7. Хранимые процедуры и триггеры
Тут представлены некоторые процедуры и триггеры:
~~~ mysql
-- Добавляю новость с помощью процедуры
DELIMITER //
DROP PROCEDURE IF EXISTS add_news//
CREATE PROCEDURE add_news(IN editor_id INT UNSIGNED, IN media_id INT UNSIGNED, IN title VARCHAR(255),
                          IN announcement VARCHAR(255), IN content LONGTEXT)
BEGIN
    INSERT INTO news (editor_id, media_id, title, announcement, content)
    VALUES (editor_id, media_id, title, announcement, content);
END;
CALL add_news(1, 1, 'title', 'announcement', 'content');
DELIMITER ;
~~~
~~~ mysql
-- Создаю триггер, который проверяет валидность выдачи кредита физическом лицу
DELIMITER //
DROP TRIGGER IF EXISTS validate_credit_value;
CREATE TRIGGER validate_credit_value
    BEFORE INSERT
    ON credits
    FOR EACH ROW
    IF NEW.credit_value > 5000000 THEN
    SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'В любом банке можно получить кредит не более 5 000 000 р';
END IF//
DELIMITER ;

INSERT INTO credits (bank_id, editor_id, credit_type, credit_value) VALUES (7, 1, 'срочный', 5000000);

SHOW TRIGGERS;
~~~