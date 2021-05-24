DROP DATABASE IF EXISTS yuga;
CREATE DATABASE yuga;
USE yuga;

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `editor_id` int unsigned COMMENT 'Страница статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Настойки пользователя';

DROP TABLE IF EXISTS `editors`;

CREATE TABLE `editors` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя и фамилия редактора',
    `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Настойки редакторов';

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Заглавие новости',
    `announcement` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT 'Текст анонса',
    `pages_id` int unsigned COMMENT 'Страница статьи',
    `media_id` int unsigned COMMENT 'Медиа статьи (предпросмотр)',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Страница новостей';

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `content` text COMMENT 'Страница статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Страницы';

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
    `id` int(16) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Заглавие',
    `paragraph_id` int unsigned COMMENT 'Параграф статьи',
    `media_id` int unsigned COMMENT 'Медиа статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статьи';

DROP TABLE IF EXISTS `paragraphs`;

CREATE TABLE `paragraphs` (
    `id` int(16) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `content` longtext COMMENT 'Параграф статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Абзацы';

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `editor_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на редактора, который загрузил файл',
    `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
    `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
    `size` int(11) NOT NULL COMMENT 'Размер файла',
    `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Различные медиафайлы';

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

DROP TABLE IF EXISTS `posters`;

CREATE TABLE `posters` (
    `id` int(16) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `paragraph_id` int unsigned COMMENT 'Параграф статьи',
    `media_id` int unsigned COMMENT 'Медиа статьи',
    `content` longtext COMMENT 'Параграф статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Афиша';

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
    `id` int(16) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
    `paragraph_id` int unsigned COMMENT 'Параграф статьи',
    `media_id` int unsigned COMMENT 'Медиа статьи',
    `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
    `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Блоги';