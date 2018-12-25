-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

INSERT INTO `file` (`id`, `name`) VALUES
(1,	'Team2018-07-23 07:13:50.jpeg'),
(3,	'Team2018-07-23 07:11:01.jpeg'),
(4,	'Team2018-07-23 07:13:49.jpeg'),
(5,	'Team2018-07-23 07:13:50.jpeg');

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2018_07_21_022147_team',	1),
(2,	'2018_07_21_022209_file',	1),
(3,	'2018_07_21_022215_player',	1);

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `player` (`id`, `name`, `about`, `team_id`) VALUES
(2,	'Sachin Tendulkar',	'Sachin Ramesh Tendulkar is a former Indian international cricketer and a former captain of the India',	1),
(3,	'Shahid Afridi',	'Sahibzada Mohammad Shahid Khan Afridi, popularly known as Boom Boom, is a former Pakistani cricketer',	2),
(4,	'Virat Kohli',	'Virat Kohli is an Indian international cricketer who currently captains the India national team.',	1),
(5,	'Yuvraj Singh',	'Yuvraj Singh is an Indian international cricketer, who played all forms of the game. An all-rounder ',	1);

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `team` (`id`, `name`, `description`) VALUES
(1,	'India',	'India national cricket team'),
(2,	'Pakistan',	'Pakistan national cricket team');

-- 2018-12-25 11:57:12
