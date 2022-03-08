-- Adminer 4.8.1 MySQL 5.7.28 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer` (`id`, `name`, `email`, `address`, `login`, `password`) VALUES
(11,	'猫田 重蔵',	'nekota@yaho.ne.jp',	'静岡県静岡市葵区追手町9-6',	'neko',	'$2y$10$zhgV2ZEOnKtqk4Qpw8SuEe6BUWJHtS6eGXFdHw2m0WMgiGhwEuVNi');

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `images` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product` (`id`, `name`, `price`, `images`) VALUES
(1,	'松の実',	700,	''),
(2,	'くるみ',	270,	''),
(3,	'ひまわりの種',	210,	''),
(4,	'アーモンド',	220,	''),
(5,	'カシューナッツ',	250,	''),
(6,	'ジャイアントコーン',	180,	''),
(7,	'ピスタチオ',	310,	''),
(8,	'マカダミアナッツ',	600,	''),
(9,	'かぼちゃの種',	180,	''),
(10,	'ピーナッツ',	150,	''),
(11,	'クコの実',	400,	''),
(13,	'そら豆',	1100,	''),
(17,	'謎のナッツ',	10000,	'a:1:{i:0;s:13:\"upload/24.jpg\";}');

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `purchase` (`id`, `customer_id`, `date`) VALUES
(2,	11,	'2022-02-25 02:34:55'),
(3,	11,	'2022-02-25 02:34:55'),
(4,	11,	'2022-02-25 02:34:55'),
(5,	11,	'2022-02-26 04:55:56'),
(6,	11,	'2022-02-26 04:57:38'),
(7,	11,	'2022-03-02 00:04:41'),
(8,	11,	'2022-03-02 04:41:50'),
(9,	11,	'2022-03-02 04:49:48'),
(10,	11,	'2022-03-02 04:50:01'),
(11,	11,	'2022-03-02 04:52:51'),
(12,	11,	'2022-03-02 04:57:19'),
(13,	11,	'2022-03-02 04:57:59');

DROP TABLE IF EXISTS `purchase_detail`;
CREATE TABLE `purchase_detail` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`purchase_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `purchase_detail_ibfk_1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`),
  CONSTRAINT `purchase_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `purchase_detail` (`purchase_id`, `product_id`, `count`) VALUES
(10,	1,	1),
(10,	2,	1),
(11,	1,	1),
(12,	5,	1),
(13,	1,	1);

DROP TABLE IF EXISTS `shosai`;
CREATE TABLE `shosai` (
  `denpyo_id` int(11) NOT NULL,
  `shohin_id` tinyint(4) NOT NULL,
  `suryo` tinyint(4) NOT NULL,
  KEY `product` (`denpyo_id`),
  CONSTRAINT `shosai_ibfk_1` FOREIGN KEY (`denpyo_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2022-03-08 02:16:08
