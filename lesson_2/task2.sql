/* Создаю базу example */
CREATE DATABASE IF NOT EXISTS example;
USE example;
/* Создаю таблицу users со стобцами: числовой id и строковый name */
CREATE TABLE IF NOT EXISTS users (id INT UNSIGNED, name VARCHAR(255));
FLUSH TABLES;