### 5. Скрипты характерных выборок
Тут представлены некоторые выборки:
~~~ mysql
-- Получаю медиаконтент редактора
SELECT filename
FROM media
WHERE editor_id = 9
  AND media_type_id = (
    SELECT id
    FROM media_types
    WHERE name = 'video'
);
~~~
~~~ mysql
-- Определяю редакторов общее занимаемое место медиафайлов которых превышает 500МБ
EXPLAIN
SELECT id,
       (SELECT email FROM editors WHERE id = media.editor_id) AS email_editor,
       SUM(size)                                              AS total
FROM media
GROUP BY id
HAVING total > 500000000;
~~~
~~~ mysql
-- Для редактора с id 9 получаю, заглавие, анонс, содержимое и дату последней новости
SELECT title, announcement, content, updated_at
FROM news
WHERE editor_id = (SELECT id FROM editors WHERE id = 9)
ORDER BY updated_at DESC
LIMIT 1;
~~~
~~~ mysql
-- Вывожу для каждого редактора счетчик: новости, статьи, блоги, топики
SELECT editors.id,
       COUNT(DISTINCT news.id)     AS total_news,
       COUNT(DISTINCT articles.id) AS total_articles,
       COUNT(DISTINCT blogs.id)    AS total_blogs,
       COUNT(DISTINCT topics.id)   AS total_topics
FROM editors
         LEFT JOIN news
                   ON editors.id = news.editor_id
         LEFT JOIN articles
                   ON editors.id = articles.editor_id
         LEFT JOIN blogs
                   ON editors.id = blogs.editor_id
         LEFT JOIN topics
                   ON editors.id = topics.editor_id
GROUP BY editors.id;
~~~