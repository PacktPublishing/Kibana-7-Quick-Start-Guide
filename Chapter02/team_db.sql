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
