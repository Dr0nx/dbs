# Создаю дамп базы данных example и копирую содержимое дампа в новую базу данных sample.

dr0n@bozhkov-ubuntu:~$ mysqldump --opt example > sample.sql && mysql --init-command="CREATE DATABASE IF NOT EXISTS sample; USE sample" < sample.sql
dr0n@bozhkov-ubuntu:~$