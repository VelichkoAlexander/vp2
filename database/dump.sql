-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mvc
CREATE DATABASE IF NOT EXISTS `mvc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mvc`;

-- Dumping structure for table mvc.files
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mvc.files: ~1 rows (approximately)
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '/img/1.jpg', 10, '2019-03-09 15:20:08', '2019-03-09 15:20:08');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table mvc.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mvc.users: ~22 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `name`, `password`, `age`, `info`, `photo`, `admin`, `created_at`, `updated_at`) VALUES
	(1, 'tremaine84@example.org', 'Rhoda Herman', '#~vyey;{L]I1g', 14, 'Ut officiis et dolores. Rerum ad pariatur optio doloribus aut. Et quis et iusto qui expedita eius. Iste sit ut enim libero ut consequatur. Deserunt earum magnam aut eius dignissimos.', 'https://lorempixel.com/200/200/cats/?18135', 1, '1979-12-18 18:17:22', '2019-03-09 14:50:26'),
	(2, 'emoore@example.com', 'Sydney McLaughlin', 'mM\\VPFE', 25, 'Et ut blanditiis eveniet mollitia aut inventore. Soluta quis repudiandae aut optio voluptatum. Commodi incidunt pariatur enim.', 'https://lorempixel.com/200/200/cats/?29175', 0, '1984-12-15 19:34:08', '2019-03-09 14:50:26'),
	(3, 'elsie.boyle@example.com', 'Jamison Ankunding', '>h8p8fszn;#y$y}fI', 56, 'Et beatae quis facere veniam occaecati voluptates molestias doloribus. Est non ut dolorem vitae aspernatur dolore ratione. Iusto nostrum laborum at non.', 'https://lorempixel.com/200/200/cats/?53066', 0, '1974-04-25 11:12:02', '2019-03-09 14:50:26'),
	(4, 'furman.tillman@example.net', 'Itzel Ferry', '1|N\\d\\x1f23', 28, 'Ut est dolore ad hic. Repellendus quos at eos saepe ut fuga quia. Deserunt et voluptatum consectetur et tenetur. Ut molestiae odit modi error nulla asperiores. Dolorum id quam ratione ut nobis.', 'https://lorempixel.com/200/200/cats/?65087', 0, '2001-02-07 20:02:23', '2019-03-09 14:50:26'),
	(5, 'rwyman@example.net', 'Myah Cronin', 'fs$vdU1=jL\']Zt', 38, 'Perspiciatis id laudantium a ducimus vel quibusdam perferendis. Qui ratione natus ea ipsa est veritatis molestias. Ratione odit est facilis eius. Vel sunt laboriosam ut assumenda.', 'https://lorempixel.com/200/200/cats/?79018', 0, '1970-10-15 22:27:01', '2019-03-09 14:50:26'),
	(6, 'barrows.lucio@example.org', 'Hillary Stracke', 'ojhcaV"J\\.%sF0:$^', 46, 'Sint ratione libero dolores nobis. Consequatur ipsa tenetur praesentium dolorem.', 'https://lorempixel.com/200/200/cats/?81753', 0, '1994-07-19 11:38:16', '2019-03-09 14:50:26'),
	(7, 'qbruen@example.org', 'Alicia Gulgowski', '[_PG`J\'g>\\7dH', 26, 'Eos aperiam modi expedita maxime officiis aliquam. Blanditiis ea repellendus facere corporis expedita sint. Ut pariatur nemo qui earum facilis libero. Enim possimus omnis sapiente.', 'https://lorempixel.com/200/200/cats/?54989', 0, '1984-10-08 22:11:49', '2019-03-09 14:50:26'),
	(8, 'ccremin@example.net', 'Anabelle Stoltenberg', 'd+?h^%"Uf9ROL', 19, 'Maxime qui molestias et ut rerum. Reprehenderit tenetur accusantium id saepe sunt. Et excepturi sed veniam tenetur sed itaque.', 'https://lorempixel.com/200/200/cats/?34731', 0, '2014-11-19 14:14:37', '2019-03-09 14:50:26'),
	(9, 'einar.turcotte@example.net', 'Camron Kautzer', '!"jw$hOLubqW)K3_', 20, 'Ipsum dolor amet molestiae iusto amet. Ut non doloribus consequuntur. Excepturi enim repudiandae in et aut. Perspiciatis et voluptas voluptates sit et et et.', 'https://lorempixel.com/200/200/cats/?19506', 0, '1980-08-08 16:41:14', '2019-03-09 14:50:26'),
	(10, 'nakia66@example.net', 'Kirsten Corkery', 'N{2CjW(A6g}\\', 11, 'Tenetur quidem laboriosam ducimus est. Facilis sunt autem esse ad sapiente.', 'https://lorempixel.com/200/200/cats/?34344', 0, '1980-02-29 18:24:31', '2019-03-09 14:50:26'),
	(11, 'powlowski.buddy@example.net', 'Kendrick Pouros', 'n*&i:eNY[o_8-2F', 46, 'Cum et dolore dicta et. Consequatur perferendis labore consequuntur nihil ea blanditiis minus nam. Voluptate ut corrupti eaque et quaerat aspernatur culpa. Quia voluptatibus ipsum est error eum.', 'https://lorempixel.com/200/200/cats/?64406', 0, '1975-05-28 16:55:37', '2019-03-09 14:50:26'),
	(12, 'maximillian20@example.org', 'Mackenzie Luettgen', 'qCnP\\7Q7O', 51, 'Non quas nobis molestiae qui. Atque dolorem modi ipsa ullam modi. Voluptas sapiente laboriosam voluptatum occaecati voluptatem ut. Harum quia quia a.', 'https://lorempixel.com/200/200/cats/?24025', 0, '2011-01-31 04:27:37', '2019-03-09 14:50:26'),
	(13, 'vinnie36@example.com', 'Brock West', 'J|W3r)U&D#o!sJC', 53, 'Est ut consequatur aut dignissimos enim hic consequatur qui. Nulla dolores enim aut ut sunt suscipit quo. Aliquid modi eos ut cupiditate.', 'https://lorempixel.com/200/200/cats/?45583', 0, '2014-01-18 08:59:20', '2019-03-09 14:50:26'),
	(14, 'yauer@example.com', 'Fay Rohan', 'ZHz?asK^Gw-!/wof-q', 56, 'Ut reprehenderit dolorum odit assumenda. Tempora esse mollitia magnam ab. Et atque harum qui ratione. Sunt ducimus expedita quaerat.', 'https://lorempixel.com/200/200/cats/?53354', 0, '1988-08-25 00:28:12', '2019-03-09 14:50:26'),
	(15, 'dameon21@example.com', 'Eldred Quigley', ')][]oL1N{w)@-R~A\'kOG', 61, 'Fugit eos expedita natus rerum facere itaque. Nisi aliquam culpa tempora ea atque dolores. Deserunt ut explicabo in. A aut nulla et.', 'https://lorempixel.com/200/200/cats/?25233', 0, '1979-08-14 03:53:29', '2019-03-09 14:50:26'),
	(16, 'sarai.krajcik@example.net', 'Michele Schulist', 'j5<Zi@3%){@J', 41, 'Nostrum pariatur soluta deserunt aliquam corporis ipsa nulla. Porro optio dignissimos praesentium ab iure nisi enim. Laudantium et rerum non quo.', 'https://lorempixel.com/200/200/cats/?39838', 0, '2014-02-03 07:07:52', '2019-03-09 14:50:26'),
	(17, 'charlie87@example.com', 'Brisa Mayer', '3B(7D:N2?gwq.', 43, 'Eveniet velit delectus corporis perferendis incidunt. Nihil dignissimos deleniti ad ut. Ut provident dolor est molestias quo aliquid id nihil.', 'https://lorempixel.com/200/200/cats/?69884', 0, '2005-06-30 04:18:13', '2019-03-09 14:50:27'),
	(18, 'fmarvin@example.org', 'Adriel Conroy', 'q=`;$IB@', 61, 'Quisquam quod consectetur vel. Totam quibusdam reiciendis deserunt aliquam ab. Eos ut debitis recusandae illum assumenda sit. Rerum et et in voluptas.', 'https://lorempixel.com/200/200/cats/?86706', 0, '1988-01-29 11:43:29', '2019-03-09 14:50:27'),
	(19, 'iparker@example.com', 'Gustave Kohler', '5>x\'uqbC_uWf$ZQ#1o', 20, 'In quidem animi a facilis accusamus sequi. Quae neque et quaerat ducimus reprehenderit ducimus qui est. Recusandae rerum quia consequuntur ea doloremque quam et.', 'https://lorempixel.com/200/200/cats/?50228', 0, '1995-01-06 19:27:05', '2019-03-09 14:50:27'),
	(20, 'kristian70@example.net', 'Aglae Ledner', '1wih[a{@;S?]]yC~*U', 42, 'Quam consequatur officia facilis ut iure doloremque soluta error. Explicabo voluptatem voluptatibus sit incidunt enim dolorem. Est laboriosam laborum recusandae ipsa odio voluptas.', 'https://lorempixel.com/200/200/cats/?59751', 0, '1976-07-18 08:15:06', '2019-03-09 14:50:27'),
	(21, 'test@test.test', 'Test', '456654', 19, '19', '/img/8.jpg', 1, '2019-03-09 14:50:40', '2019-03-09 14:50:40'),
	(22, '13friendoushena@gmail.com', 'Alexander Velichko', '456654', 31, 'wer', '/img/7.jpg', 0, '2019-03-09 15:11:37', '2019-03-09 15:11:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
