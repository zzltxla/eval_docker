SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) COLLATE utf8mb4_0900_as_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'front'),
(2, 'senior'),
(3, 'html'),
(4, 'css'),
(5, 'javascript'),
(6, 'fullstack'),
(7, 'midweight'),
(8, 'python'),
(9, 'react'),
(10, 'junior'),
(11, 'sass'),
(12, 'ruby'),
(13, 'backend'),
(14, 'ror'),
(15, 'vue'),
(16, 'django');


DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) COLLATE utf8mb4_0900_as_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_0900_as_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;

INSERT INTO `company` (`id`, `name`, `img`) VALUES
(1, 'photosnap', 'photosnap.png'),
(2, 'manage', 'manage.png'),
(3, 'account', 'account.png'),
(4, 'myhome', 'myhome.png'),
(5, 'loop studios', 'loop-studios.png'),
(6, 'facelt', 'facelt.png'),
(7, 'shortly', 'shortly.png'),
(8, 'insure', 'insure.png'),
(9, 'eyecam co.', 'eyecam.png'),
(10, 'the air-filter company', 'air-filter.png');


DROP TABLE IF EXISTS `job_offer`;
CREATE TABLE `job_offer` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `company_id` int NOT NULL,
  FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE='InnoDB' DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;

INSERT INTO `job_offer` (`id`, `name`, `company_id`) VALUES
(1, 'senior frontend developer', 1),
(2, 'fullstack developer', 2),
(3, 'junior frontend developer', 3),
(4, 'junior frontend developer', 4),
(5, 'software engineer', 5),
(6, 'junior backend developer', 6),
(7, 'junior developer', 7),
(8, 'junior frontend developer', 8),
(9, 'full stack engineer', 9),
(10, 'front-end dev', 10);


DROP TABLE IF EXISTS `job_offer_tags`;
CREATE TABLE `job_offer_tags` (
  `ID` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `job_offer_id` int NOT NULL,
  `tag_id` int NOT NULL,
  FOREIGN KEY (`job_offer_id`) REFERENCES `job_offer` (`id`),
  FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE='InnoDB' DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci;

INSERT INTO `job_offer_tags` (`id`, `job_offer_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 3, 1),
(11, 3, 10),
(12, 3, 9),
(13, 3, 11),
(14, 3, 5);