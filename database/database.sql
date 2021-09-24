-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.22 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para belsa_outfit1.0
CREATE DATABASE IF NOT EXISTS `belsa_outfit1.0` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `belsa_outfit1.0`;

-- Volcando estructura para tabla belsa_outfit1.0.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departament` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `addressable_id` bigint unsigned NOT NULL,
  `addressable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`addressable_id`,`addressable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.addresses: ~35 rows (aproximadamente)
DELETE FROM `addresses`;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`country`, `state`, `city`, `direction`, `floor`, `departament`, `description`, `addressable_id`, `addressable_type`, `created_at`, `updated_at`) VALUES
	('Taiwan', 'Rhode Island', 'Lake Josianneberg', '9019 King Camp Suite 362', '', '', NULL, 1, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Luxembourgs', 'Kansas', 'North Feltonland', '522 Jamar Mews', NULL, NULL, NULL, 1, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 18:05:09'),
	('Niger', 'Illinois', 'Earlport', '9993 Klein Shoal', '', '', NULL, 2, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Nicaragua', 'Idaho', 'East Asa', '77819 Purdy Expressway', '', '', NULL, 2, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Christmas Island', 'Iowa', 'Jairomouth', '35269 Krajcik Common Apt. 178', '', '', NULL, 3, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Belgium', 'District of Columbia', 'West Kimberly', '10644 Cartwright Plaza Suite 051', '', '', NULL, 3, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Singapore', 'Tennessee', 'Sidneyborough', '39382 Brekke Path', '', '', NULL, 4, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Botswana', 'Washington', 'Boyerton', '25570 Kunze Junction', '', '', NULL, 4, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Slovakia (Slovak Republic)', 'Tennessee', 'Jasperside', '408 Jenkins Motorway Apt. 000', '', '', NULL, 5, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Morocco', 'California', 'Cummeratamouth', '119 Berry Views', '', '', NULL, 5, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('India', 'Rhode Island', 'Pagacfort', '17858 Lina Corner Suite 213', '', '', NULL, 6, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('French Southern Territories', 'Maryland', 'Phoebemouth', '17530 West Inlet Apt. 361', '', '', NULL, 6, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Monaco', 'Ohio', 'Walshfort', '918 Devon Point', '', '', NULL, 7, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Oman', 'Maryland', 'Venafort', '95296 Wilhelm Squares', '', '', NULL, 7, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Kyrgyz Republic', 'New Mexico', 'North Pedroburgh', '9393 Legros Springs', '', '', NULL, 8, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Finland', 'North Carolina', 'Tremblayhaven', '93929 Zulauf Trace', '', '', NULL, 8, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('United Arab Emirates', 'Missouri', 'Kellenshire', '840 Travon Ferry', '', '', NULL, 9, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Central African Republic', 'New Mexico', 'Tamaraton', '3864 Osinski Camp', '', '', NULL, 9, 'App\\Models\\Supplier', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	('Jamaica', 'Alaska', 'Donnellyland', '9845 Holden Drive', '', '', NULL, 10, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('Lebanon', 'Arkansas', 'North Jackeline', '63220 Bashirian Gardens', '', '', NULL, 10, 'App\\Models\\Supplier', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	('Reunion', 'New Jersey', 'Greenholtchester', '37221 Aufderhar Dale', '', '', NULL, 11, 'App\\Models\\Client', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	('dasda', 'asdasda', 'dasdasd', 'asdasd', NULL, NULL, NULL, 11, 'App\\Models\\Supplier', '2021-03-05 17:05:41', '2021-03-05 17:05:41'),
	('Western Sahara', 'Montana', 'Daughertyberg', '22690 Lind Center Suite 794', '', '', NULL, 12, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('asdasd', 'asdasd', 'asdasdasda', 'sdasdasd', NULL, NULL, NULL, 12, 'App\\Models\\Supplier', '2021-03-05 17:07:16', '2021-03-05 17:07:16'),
	('Saint Vincent and the Grenadines', 'Colorado', 'Tatetown', '7504 Jeff Rapid Apt. 942', '', '', NULL, 13, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('fasds', 'asdfs', 'asdfasdfas', 'dsfasdfs', '2', '1', NULL, 13, 'App\\Models\\Supplier', '2021-03-05 17:17:01', '2021-03-05 17:17:19'),
	('Gibraltar', 'Washington', 'New Avis', '2962 Ana Mountain Suite 195', '', '', NULL, 14, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('asdfa', 'asdfas', 'daasef', '32as3df5as1df', '1a', '3', NULL, 14, 'App\\Models\\Supplier', '2021-03-05 18:31:48', '2021-03-05 18:32:19'),
	('American Samoa', 'Ohio', 'West Laronview', '364 Alize Club Suite 637', '', '', NULL, 15, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('Cameroon', 'Massachusetts', 'New Nico', '440 Sonya View', '', '', NULL, 16, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('Congo', 'Oregon', 'Maceytown', '8706 Runolfsdottir Heights Apt. 635', '', '', NULL, 17, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('San Marino', 'Iowa', 'O\'Reillyville', '1165 Daniel Pine', '', '', NULL, 18, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('Australia', 'Tennessee', 'Magnusside', '12152 Murazik Summit Suite 256', '', '', NULL, 19, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('Russian Federation', 'Missouri', 'North Vaughnburgh', '1512 Erick Pines Suite 774', '', '', NULL, 20, 'App\\Models\\Client', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	('Argentina', 'Tucuman', 'Concepcion', '24 de septiembre', '1', '5', 'porton negro', 25, 'App\\Models\\Client', '2021-03-05 15:26:09', '2021-03-05 16:00:53');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.categories: ~11 rows (aproximadamente)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Sweater', 'Categoria: Sweater', '1', NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(2, 'Camisas', 'Categoria: Camisas', '1', NULL, '2021-03-05 03:35:37', '2021-03-05 03:35:37'),
	(3, 'Vestidos ', 'Categoria: Vestidos ', '1', NULL, '2021-03-05 03:35:38', '2021-03-05 03:35:38'),
	(4, 'Pantalones', 'Categoria: Pantalones', '1', NULL, '2021-03-05 03:35:38', '2021-03-05 03:35:38'),
	(5, 'Shorts', 'Categoria: Shorts', '1', NULL, '2021-03-05 03:35:39', '2021-03-05 03:35:39'),
	(6, 'Remeras', 'Categoria: Remeras', '1', NULL, '2021-03-05 03:35:40', '2021-03-05 03:35:40'),
	(7, 'Camperas', 'Categoria: Camperas', '1', NULL, '2021-03-05 03:35:41', '2021-03-05 03:35:41'),
	(8, 'Bufandas', 'Categoria: Bufandas', '1', NULL, '2021-03-05 03:35:42', '2021-03-05 03:35:42'),
	(9, 'Gorros', 'Categoria: Gorros', '1', NULL, '2021-03-05 03:35:43', '2021-03-05 03:35:43'),
	(10, 'Cintos', 'Categoria: Cintos', '1', NULL, '2021-03-05 03:35:44', '2021-03-05 03:35:44'),
	(11, 'Anteojos', 'Categoria: Anteojos', '1', NULL, '2021-03-05 03:35:44', '2021-03-05 03:35:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.clients: ~20 rows (aproximadamente)
DELETE FROM `clients`;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `name`, `email`, `telephone`, `created_at`, `updated_at`) VALUES
	(1, 'Dr. Leonard Cronin MD', 'mueller.maximillia@welch.com', '(800) 326-9591', '2021-03-05 03:36:32', '2021-03-05 03:36:32'),
	(2, 'Ms. Aleen Ward Jr.', 'garnett.gerlach@gmail.com', '844.867.0470', '2021-03-05 03:36:32', '2021-03-05 03:36:32'),
	(3, 'Alvis McGlynn', 'mcglynn.vanessa@bauch.com', '844.461.1446', '2021-03-05 03:36:32', '2021-03-05 03:36:32'),
	(4, 'Mr. Chester Champlin', 'ibuckridge@kihn.com', '844.250.1772', '2021-03-05 03:36:32', '2021-03-05 03:36:32'),
	(5, 'Maryse Bins', 'runolfsdottir.ike@fisher.com', '844.286.9901', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(6, 'Brian Dietrich', 'jayce.harvey@hotmail.com', '844.447.3933', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(7, 'Elody Balistreri', 'era.lakin@bode.biz', '1-855-906-3722', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(8, 'Jany Bednar', 'della14@bruen.com', '844-445-1954', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(9, 'Garth Lang', 'vern51@marvin.com', '855-278-4982', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(10, 'Miss Valerie Wehner', 'nicolas76@parker.org', '1-888-288-8275', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(11, 'Curt Douglas', 'tom98@beatty.com', '1-800-414-2473', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(12, 'Guillermo Jones II', 'langosh.annamarie@hotmail.com', '(800) 727-3993', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(13, 'Ms. Maribel Schaefer II', 'uwyman@stark.net', '1-844-215-2444', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(14, 'Santiago Schulist', 'blick.matt@kilback.com', '(877) 791-0381', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(15, 'Janie Legros', 'ischmitt@runolfsson.com', '855-898-1222', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(16, 'Genevieve Stanton', 'kiel66@gmail.com', '866.730.6112', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(18, 'Prof. Riley Runolfsson', 'abotsford@gmail.com', '(888) 741-2296', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(20, 'Miss Kelli Zboncak DVM', 'lulu83@gmail.com', '(800) 834-1907', '2021-03-05 03:36:33', '2021-03-05 03:36:33'),
	(21, 'samir mahmud', 'samir@samir.com', '3865290803', '2021-03-05 04:57:52', '2021-03-05 04:57:52'),
	(25, 'Pablo Martin Mahmud', 'martin@martin.com', '1354361332', '2021-03-05 15:26:09', '2021-03-05 15:59:54');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.colors: ~11 rows (aproximadamente)
DELETE FROM `colors`;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`id`, `name`, `code`, `slug`, `status`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Azul', NULL, 'Azul', '1', 'Color: Azul', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(2, 'Verder', NULL, 'Verder', '1', 'Color: Verder', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(3, 'Rojo ', NULL, 'Rojo ', '1', 'Color: Rojo ', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(4, 'Blanco', NULL, 'Blanco', '1', 'Color: Blanco', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(5, 'Negro', NULL, 'Negro', '1', 'Color: Negro', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(6, 'Morado', NULL, 'Morado', '1', 'Color: Morado', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(7, 'Gris', NULL, 'Gris', '1', 'Color: Gris', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(8, 'Amarillo', NULL, 'Amarillo', '1', 'Color: Amarillo', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(9, 'Celeste', NULL, 'Celeste', '1', 'Color: Celeste', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(10, 'Rosa', NULL, 'Rosa', '1', 'Color: Rosa', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(11, 'Crema', NULL, 'Crema', '1', 'Color: Crema', '2021-03-05 03:35:35', '2021-03-05 03:35:35');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.detail__products
CREATE TABLE IF NOT EXISTS `detail__products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `waist_id` bigint unsigned NOT NULL,
  `color_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail__products_product_id_foreign` (`product_id`),
  KEY `detail__products_waist_id_foreign` (`waist_id`),
  KEY `detail__products_color_id_foreign` (`color_id`),
  CONSTRAINT `detail__products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `detail__products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detail__products_waist_id_foreign` FOREIGN KEY (`waist_id`) REFERENCES `waists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.detail__products: ~0 rows (aproximadamente)
DELETE FROM `detail__products`;
/*!40000 ALTER TABLE `detail__products` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail__products` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint unsigned NOT NULL,
  `imageable_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.images: ~61 rows (aproximadamente)
DELETE FROM `images`;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
	(1, 'products/b1f43d49ee1a069ca2d50a11ee7baf01.png', 1, 'App\\Models\\Category', '2021-03-05 03:35:37', '2021-03-05 03:35:37'),
	(2, 'products/bf75d2025f47c8e1c41998c27b6b2994.png', 2, 'App\\Models\\Category', '2021-03-05 03:35:37', '2021-03-05 03:35:37'),
	(3, 'products/9a7a9d891192db0682d46c6a421ffffa.png', 3, 'App\\Models\\Category', '2021-03-05 03:35:38', '2021-03-05 03:35:38'),
	(4, 'products/0614d5016642ddf956b983d772315ec5.png', 4, 'App\\Models\\Category', '2021-03-05 03:35:39', '2021-03-05 03:35:39'),
	(5, 'products/c7bd858244142c259d1f0ae3d5207af0.png', 5, 'App\\Models\\Category', '2021-03-05 03:35:40', '2021-03-05 03:35:40'),
	(6, 'products/810e3dd2114c398bd229ad1322b26b3c.png', 6, 'App\\Models\\Category', '2021-03-05 03:35:41', '2021-03-05 03:35:41'),
	(7, 'products/7eac1334b2a57afe934b5df1f0c5f374.png', 7, 'App\\Models\\Category', '2021-03-05 03:35:42', '2021-03-05 03:35:42'),
	(8, 'products/f187e6831b0d5711323666ca32bcc48a.png', 8, 'App\\Models\\Category', '2021-03-05 03:35:43', '2021-03-05 03:35:43'),
	(9, 'products/34a5b461ed3120d23fdbd2549cdfaa2f.png', 9, 'App\\Models\\Category', '2021-03-05 03:35:44', '2021-03-05 03:35:44'),
	(10, 'products/d7e71fa1f72cc930e8c07d6a5a742a0c.png', 10, 'App\\Models\\Category', '2021-03-05 03:35:44', '2021-03-05 03:35:44'),
	(11, 'products/0a670f12c91b9525ec76849fae6d3f70.png', 11, 'App\\Models\\Category', '2021-03-05 03:35:45', '2021-03-05 03:35:45'),
	(12, 'products/2cf82e8d108b753f092c57c602039153.png', 1, 'App\\Models\\Product', '2021-03-05 03:35:49', '2021-03-05 03:35:49'),
	(13, 'products/68e3b589101a3b08ae3e427c8565c401.png', 2, 'App\\Models\\Product', '2021-03-05 03:35:50', '2021-03-05 03:35:50'),
	(14, 'products/46bf49f4f419ba941d2f5ec454ffdd8b.png', 3, 'App\\Models\\Product', '2021-03-05 03:35:51', '2021-03-05 03:35:51'),
	(15, 'products/7f12f9986bfd80ab0e863b48b89073d7.png', 4, 'App\\Models\\Product', '2021-03-05 03:35:52', '2021-03-05 03:35:52'),
	(16, 'products/cfbd6a68332eeacb4835f615ad724175.png', 5, 'App\\Models\\Product', '2021-03-05 03:35:53', '2021-03-05 03:35:53'),
	(17, 'products/1b1e06370f6c1e83580b103969a611ac.png', 6, 'App\\Models\\Product', '2021-03-05 03:35:54', '2021-03-05 03:35:54'),
	(18, 'products/313d60c710ae747c855fcb1455e3a151.png', 7, 'App\\Models\\Product', '2021-03-05 03:35:55', '2021-03-05 03:35:55'),
	(19, 'products/393bf3daa953ab1caad78c1fe952a4fa.png', 8, 'App\\Models\\Product', '2021-03-05 03:35:56', '2021-03-05 03:35:56'),
	(20, 'products/a2af50c00a631fa009aeddb2c81986ae.png', 9, 'App\\Models\\Product', '2021-03-05 03:35:57', '2021-03-05 03:35:57'),
	(21, 'products/b6e10a41972dd3c83bbab68aa36970ee.png', 10, 'App\\Models\\Product', '2021-03-05 03:35:57', '2021-03-05 03:35:57'),
	(22, 'products/d3418a696fae1a342a9666f9463671cb.png', 11, 'App\\Models\\Product', '2021-03-05 03:35:58', '2021-03-05 03:35:58'),
	(23, 'products/80670d6a44715ae9527ad6b7a9677a3e.png', 12, 'App\\Models\\Product', '2021-03-05 03:35:59', '2021-03-05 03:35:59'),
	(24, 'products/ad26fe0ff1c82f05558e3dc0a90d11fd.png', 13, 'App\\Models\\Product', '2021-03-05 03:36:00', '2021-03-05 03:36:00'),
	(25, 'products/283ef85167be3f07b426664945229608.png', 14, 'App\\Models\\Product', '2021-03-05 03:36:01', '2021-03-05 03:36:01'),
	(26, 'products/4068bf0289f69a346f7f09daa3e16ade.png', 15, 'App\\Models\\Product', '2021-03-05 03:36:02', '2021-03-05 03:36:02'),
	(27, 'products/3e2a4b119832413a437c8265667f9f4a.png', 16, 'App\\Models\\Product', '2021-03-05 03:36:03', '2021-03-05 03:36:03'),
	(28, 'products/ce038f940b652302c18e05cc0466cf9d.png', 17, 'App\\Models\\Product', '2021-03-05 03:36:04', '2021-03-05 03:36:04'),
	(29, 'products/e8ed2ee5f142aac45d5adaceed3399c7.png', 18, 'App\\Models\\Product', '2021-03-05 03:36:04', '2021-03-05 03:36:04'),
	(30, 'products/309850d4b49479805201381e0db4563c.png', 19, 'App\\Models\\Product', '2021-03-05 03:36:05', '2021-03-05 03:36:05'),
	(31, 'products/58c4c989a4b24c403bb9bb1d74382f8c.png', 20, 'App\\Models\\Product', '2021-03-05 03:36:06', '2021-03-05 03:36:06'),
	(32, 'products/213da534039c6dcebbe651f48b3a7c83.png', 21, 'App\\Models\\Product', '2021-03-05 03:36:07', '2021-03-05 03:36:07'),
	(33, 'products/85d67c7340c707f85ee7546c2e211ceb.png', 22, 'App\\Models\\Product', '2021-03-05 03:36:08', '2021-03-05 03:36:08'),
	(34, 'products/54904853547a0970caecdfe1c19ebf24.png', 23, 'App\\Models\\Product', '2021-03-05 03:36:09', '2021-03-05 03:36:09'),
	(35, 'products/abc42b1ebd911dbdccc6ae6cb6c50927.png', 24, 'App\\Models\\Product', '2021-03-05 03:36:10', '2021-03-05 03:36:10'),
	(36, 'products/052249e02bfae2c7a7edeec9286e084a.png', 25, 'App\\Models\\Product', '2021-03-05 03:36:11', '2021-03-05 03:36:11'),
	(37, 'products/1273000a564d447bb703288da4ce36fd.png', 26, 'App\\Models\\Product', '2021-03-05 03:36:11', '2021-03-05 03:36:11'),
	(38, 'products/1b114ddee6fffd7e1ac71c9eaeba8e4d.png', 27, 'App\\Models\\Product', '2021-03-05 03:36:12', '2021-03-05 03:36:12'),
	(39, 'products/40b6017a83092d3ff460ce1a38bae927.png', 28, 'App\\Models\\Product', '2021-03-05 03:36:13', '2021-03-05 03:36:13'),
	(40, 'products/2e2d706c3345cdc5a1cc061f562d67e0.png', 29, 'App\\Models\\Product', '2021-03-05 03:36:14', '2021-03-05 03:36:14'),
	(41, 'products/3fb5b7bad60c8994c8accb5b61d2c917.png', 30, 'App\\Models\\Product', '2021-03-05 03:36:15', '2021-03-05 03:36:15'),
	(42, 'products/bbee610be0fb5d4e46ce04743e4fd2eb.png', 31, 'App\\Models\\Product', '2021-03-05 03:36:16', '2021-03-05 03:36:16'),
	(43, 'products/dfc229c3e97e15dd7ef4415c43efa331.png', 32, 'App\\Models\\Product', '2021-03-05 03:36:17', '2021-03-05 03:36:17'),
	(44, 'products/65f8b42a93d4ea30d01184444adb6c21.png', 33, 'App\\Models\\Product', '2021-03-05 03:36:17', '2021-03-05 03:36:17'),
	(45, 'products/499db606ee3455498ce5a4385987b84a.png', 34, 'App\\Models\\Product', '2021-03-05 03:36:18', '2021-03-05 03:36:18'),
	(46, 'products/8b4f389070a397b1be9e2223f84bb616.png', 35, 'App\\Models\\Product', '2021-03-05 03:36:19', '2021-03-05 03:36:19'),
	(47, 'products/a91a5e7225edbd36ac6877481600140c.png', 36, 'App\\Models\\Product', '2021-03-05 03:36:20', '2021-03-05 03:36:20'),
	(48, 'products/b79d9bf58f325ca5b8c3b3524fca0a51.png', 37, 'App\\Models\\Product', '2021-03-05 03:36:21', '2021-03-05 03:36:21'),
	(49, 'products/225acf6b2ba9f3bca5b031d7e35e5424.png', 38, 'App\\Models\\Product', '2021-03-05 03:36:22', '2021-03-05 03:36:22'),
	(50, 'products/c6e95f9fe0e735934e8d79236f909f93.png', 39, 'App\\Models\\Product', '2021-03-05 03:36:23', '2021-03-05 03:36:23'),
	(51, 'products/a682b748fcf7c780778160688acde13d.png', 40, 'App\\Models\\Product', '2021-03-05 03:36:24', '2021-03-05 03:36:24'),
	(52, 'products/16ad52b0dcbe48ae707117758373f7af.png', 41, 'App\\Models\\Product', '2021-03-05 03:36:24', '2021-03-05 03:36:24'),
	(53, 'products/0a596eb45c5fbbd22b9434987d0bd443.png', 42, 'App\\Models\\Product', '2021-03-05 03:36:25', '2021-03-05 03:36:25'),
	(54, 'products/6c047e29d39d84b77f00b30c5aed7ce1.png', 43, 'App\\Models\\Product', '2021-03-05 03:36:26', '2021-03-05 03:36:26'),
	(55, 'products/ce83d4959e327433227293072d288bef.png', 44, 'App\\Models\\Product', '2021-03-05 03:36:27', '2021-03-05 03:36:27'),
	(56, 'products/a4973d372ff3b29629f449600ff70219.png', 45, 'App\\Models\\Product', '2021-03-05 03:36:28', '2021-03-05 03:36:28'),
	(57, 'products/92eb2bcdae2e7086a681b28d19ba3e0d.png', 46, 'App\\Models\\Product', '2021-03-05 03:36:29', '2021-03-05 03:36:29'),
	(58, 'products/5f297a6be8ff94018c658b860781e795.png', 47, 'App\\Models\\Product', '2021-03-05 03:36:30', '2021-03-05 03:36:30'),
	(59, 'products/f34a89c81fc851b14b5e58643f235fdd.png', 48, 'App\\Models\\Product', '2021-03-05 03:36:31', '2021-03-05 03:36:31'),
	(60, 'products/bcb6bc4fbf3ab6116721455ae3abd8ec.png', 49, 'App\\Models\\Product', '2021-03-05 03:36:31', '2021-03-05 03:36:31'),
	(61, 'products/c18d4842884dbf2dcdd5b1fdf9e388cb.png', 50, 'App\\Models\\Product', '2021-03-05 03:36:32', '2021-03-05 03:36:32');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.migrations: 24 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_02_20_041413_create_sessions_table', 1),
	(7, '2021_02_21_041434_create_categories_table', 1),
	(8, '2021_02_21_041435_create_tags_table', 1),
	(9, '2021_02_21_043139_create_colors_table', 1),
	(10, '2021_02_21_043323_create_waists_table', 1),
	(11, '2021_02_21_051857_create_products_table', 1),
	(12, '2021_02_21_051858_create_detail__products_table', 1),
	(13, '2021_02_21_051858_create_product__tags_table', 1),
	(14, '2021_02_21_064751_create_addresses_table', 1),
	(15, '2021_02_21_070658_create_suppliers_table', 1),
	(16, '2021_02_21_072119_create_product__supliers_table', 1),
	(17, '2021_02_21_072330_create_clients_table', 1),
	(18, '2021_02_21_073124_create_payment__forms_table', 1),
	(19, '2021_02_21_080642_create_sales_table', 1),
	(20, '2021_02_21_080843_create_sale__details_table', 1),
	(21, '2021_02_21_081047_create_state__orders_table', 1),
	(22, '2021_02_21_081048_create_orders_table', 1),
	(23, '2021_02_21_084025_create_images_table', 1),
	(24, '2021_03_03_122351_create_permission_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.model_has_permissions: ~0 rows (aproximadamente)
DELETE FROM `model_has_permissions`;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.model_has_roles: ~1 rows (aproximadamente)
DELETE FROM `model_has_roles`;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `state_order_id` bigint unsigned NOT NULL,
  `sale_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_state_order_id_foreign` (`state_order_id`),
  KEY `orders_sale_id_foreign` (`sale_id`),
  KEY `orders_client_id_foreign` (`client_id`),
  CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `orders_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  CONSTRAINT `orders_state_order_id_foreign` FOREIGN KEY (`state_order_id`) REFERENCES `state__orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.orders: ~0 rows (aproximadamente)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.payment__forms
CREATE TABLE IF NOT EXISTS `payment__forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.payment__forms: ~5 rows (aproximadamente)
DELETE FROM `payment__forms`;
/*!40000 ALTER TABLE `payment__forms` DISABLE KEYS */;
INSERT INTO `payment__forms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Visa', 'Tarjeta: Visa', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(2, 'MasterCard', 'Tarjeta: MasterCard', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(3, 'Discover Card', 'Tarjeta: Discover Card', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(4, 'Visa Retired', 'Tarjeta: Visa Retired', '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(5, 'American Express', 'Tarjeta: American Express', '2021-03-05 03:36:34', '2021-03-05 03:36:34');
/*!40000 ALTER TABLE `payment__forms` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.permissions: ~33 rows (aproximadamente)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin.home', 'Ver el Panel de Control', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29'),
	(2, 'admin.roles.index', 'Listado de Roles', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29'),
	(3, 'admin.roles.create', 'Crear Role', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29'),
	(4, 'admin.roles.edit', 'Editar Role', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(5, 'admin.roles.destroy', 'Eliminar Role', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(6, 'admin.users.index', 'Listado de Usuarios', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(7, 'admin.users.create', 'Crear Usuario', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(8, 'admin.users.edit', 'Editar Usuario', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(9, 'admin.users.destroy', 'Eliminar Usuario', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(10, 'admin.categories.index', 'Listado de Categorias', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(11, 'admin.categories.create', 'Crear Categoria', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(12, 'admin.categories.edit', 'Editar Categoria', 'web', '2021-03-05 03:35:30', '2021-03-05 03:35:30'),
	(13, 'admin.categories.destroy', 'Eliminar Categoria', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(14, 'admin.tags.index', 'Listado de Tags', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(15, 'admin.tags.create', 'Crear Tag', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(16, 'admin.tags.edit', 'Editar Tag', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(17, 'admin.tags.destroy', 'Eliminar Tag', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(18, 'admin.colors.index', 'Listado de Colores', 'web', '2021-03-05 03:35:31', '2021-03-05 03:35:31'),
	(19, 'admin.colors.create', 'Crear Color', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(20, 'admin.colors.edit', 'Editar Color', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(21, 'admin.colors.destroy', 'Eliminar Color', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(22, 'admin.waists.index', 'Listado de Talles', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(23, 'admin.waists.create', 'Crear Talle', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(24, 'admin.waists.edit', 'Editar Talle', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(25, 'admin.waists.destroy', 'Eliminar Talle', 'web', '2021-03-05 03:35:32', '2021-03-05 03:35:32'),
	(26, 'admin.suppliers.index', 'Listado de Proveedores', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(27, 'admin.suppliers.create', 'Crear Proveedor', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(28, 'admin.suppliers.edit', 'Editar Proveedor', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(29, 'admin.suppliers.destroy', 'Eliminar Proveedor', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(30, 'admin.clients.index', 'Listado de Proveedores', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(31, 'admin.clients.create', 'Crear Proveedor', 'web', '2021-03-05 03:35:33', '2021-03-05 03:35:33'),
	(32, 'admin.clients.edit', 'Editar Proveedor', 'web', '2021-03-05 03:35:34', '2021-03-05 03:35:34'),
	(33, 'admin.clients.destroy', 'Eliminar Proveedor', 'web', '2021-03-05 03:35:34', '2021-03-05 03:35:34');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.personal_access_tokens: ~0 rows (aproximadamente)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `category_id` bigint unsigned DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.products: ~50 rows (aproximadamente)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `status`, `category_id`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Eaque.', '2', 3, 'eaque', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(2, 'Architecto.', '2', 3, 'architecto', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(3, 'Explicabo ratione.', '1', 7, 'explicabo-ratione', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(4, 'Ad.', '2', 8, 'ad', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(5, 'Dolores.', '2', 3, 'dolores', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(6, 'Ut facilis.', '1', 3, 'ut-facilis', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(7, 'Est.', '1', 1, 'est', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(8, 'Qui.', '1', 6, 'qui', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(9, 'Adipisci in.', '1', 7, 'adipisci-in', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(10, 'Illo perspiciatis.', '2', 3, 'illo-perspiciatis', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(11, 'Totam.', '2', 2, 'totam', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(12, 'Nemo.', '2', 6, 'nemo', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(13, 'Rerum dolorum.', '1', 1, 'rerum-dolorum', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(14, 'Hic quaerat.', '1', 10, 'hic-quaerat', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(15, 'Quas quibusdam.', '1', 4, 'quas-quibusdam', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(16, 'Odio ut.', '2', 7, 'odio-ut', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(17, 'Voluptatem ducimus.', '2', 7, 'voluptatem-ducimus', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(18, 'Repudiandae aut.', '2', 10, 'repudiandae-aut', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(19, 'Eos.', '1', 8, 'eos', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(20, 'Et pariatur.', '1', 1, 'et-pariatur', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(21, 'Adipisci.', '1', 10, 'adipisci', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(22, 'Non.', '2', 3, 'non', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(23, 'Illo odio.', '1', 8, 'illo-odio', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(24, 'Consequuntur dolore.', '1', 1, 'consequuntur-dolore', '2021-03-05 03:35:47', '2021-03-05 03:35:47'),
	(25, 'Aut recusandae.', '2', 11, 'aut-recusandae', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(26, 'Deserunt.', '1', 11, 'deserunt', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(27, 'Totam excepturi.', '1', 11, 'totam-excepturi', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(28, 'Qui quaerat.', '1', 11, 'qui-quaerat', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(29, 'Necessitatibus.', '2', 8, 'necessitatibus', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(30, 'Porro.', '1', 5, 'porro', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(31, 'Et vitae.', '2', 7, 'et-vitae', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(32, 'Odit.', '2', 3, 'odit', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(33, 'Reiciendis quia.', '1', 4, 'reiciendis-quia', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(34, 'Mollitia.', '2', 3, 'mollitia', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(35, 'Sunt enim.', '1', 3, 'sunt-enim', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(36, 'Et consequatur.', '2', 3, 'et-consequatur', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(37, 'Perferendis.', '2', 11, 'perferendis', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(38, 'Dolor sunt.', '1', 10, 'dolor-sunt', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(39, 'Quas.', '1', 10, 'quas', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(40, 'Ea quia.', '2', 8, 'ea-quia', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(41, 'Rerum.', '2', 10, 'rerum', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(42, 'Dolorum.', '1', 10, 'dolorum', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(43, 'Sapiente.', '1', 7, 'sapiente', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(44, 'Impedit consequuntur.', '1', 2, 'impedit-consequuntur', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(45, 'Officia.', '2', 11, 'officia', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(46, 'Repudiandae.', '1', 4, 'repudiandae', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(47, 'Voluptatibus.', '2', 4, 'voluptatibus', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(48, 'Quaerat veritatis.', '2', 8, 'quaerat-veritatis', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(49, 'Et.', '1', 11, 'et', '2021-03-05 03:35:48', '2021-03-05 03:35:48'),
	(50, 'Dolores quidem.', '1', 7, 'dolores-quidem', '2021-03-05 03:35:49', '2021-03-05 03:35:49');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.product_supplier
CREATE TABLE IF NOT EXISTS `product_supplier` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `supplier_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_supplier_product_id_foreign` (`product_id`),
  KEY `product_supplier_supplier_id_foreign` (`supplier_id`),
  CONSTRAINT `product_supplier_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_supplier_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.product_supplier: ~100 rows (aproximadamente)
DELETE FROM `product_supplier`;
/*!40000 ALTER TABLE `product_supplier` DISABLE KEYS */;
INSERT INTO `product_supplier` (`id`, `product_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, NULL, NULL),
	(2, 1, 5, NULL, NULL),
	(3, 2, 1, NULL, NULL),
	(4, 2, 7, NULL, NULL),
	(5, 3, 5, NULL, NULL),
	(6, 3, 5, NULL, NULL),
	(7, 4, 1, NULL, NULL),
	(8, 4, 8, NULL, NULL),
	(9, 5, 2, NULL, NULL),
	(10, 5, 7, NULL, NULL),
	(11, 6, 1, NULL, NULL),
	(12, 6, 10, NULL, NULL),
	(13, 7, 4, NULL, NULL),
	(14, 7, 9, NULL, NULL),
	(15, 8, 1, NULL, NULL),
	(16, 8, 8, NULL, NULL),
	(17, 9, 5, NULL, NULL),
	(18, 9, 5, NULL, NULL),
	(19, 10, 5, NULL, NULL),
	(20, 10, 10, NULL, NULL),
	(21, 11, 4, NULL, NULL),
	(22, 11, 8, NULL, NULL),
	(23, 12, 5, NULL, NULL),
	(24, 12, 10, NULL, NULL),
	(25, 13, 5, NULL, NULL),
	(26, 13, 9, NULL, NULL),
	(27, 14, 1, NULL, NULL),
	(28, 14, 6, NULL, NULL),
	(29, 15, 5, NULL, NULL),
	(30, 15, 6, NULL, NULL),
	(31, 16, 2, NULL, NULL),
	(32, 16, 9, NULL, NULL),
	(33, 17, 3, NULL, NULL),
	(34, 17, 7, NULL, NULL),
	(35, 18, 3, NULL, NULL),
	(36, 18, 9, NULL, NULL),
	(37, 19, 1, NULL, NULL),
	(38, 19, 5, NULL, NULL),
	(39, 20, 2, NULL, NULL),
	(40, 20, 5, NULL, NULL),
	(41, 21, 1, NULL, NULL),
	(42, 21, 8, NULL, NULL),
	(43, 22, 5, NULL, NULL),
	(44, 22, 6, NULL, NULL),
	(45, 23, 3, NULL, NULL),
	(46, 23, 8, NULL, NULL),
	(47, 24, 1, NULL, NULL),
	(48, 24, 6, NULL, NULL),
	(49, 25, 4, NULL, NULL),
	(50, 25, 5, NULL, NULL),
	(51, 26, 5, NULL, NULL),
	(52, 26, 6, NULL, NULL),
	(53, 27, 3, NULL, NULL),
	(54, 27, 10, NULL, NULL),
	(55, 28, 1, NULL, NULL),
	(56, 28, 10, NULL, NULL),
	(57, 29, 5, NULL, NULL),
	(58, 29, 6, NULL, NULL),
	(59, 30, 1, NULL, NULL),
	(60, 30, 8, NULL, NULL),
	(61, 31, 1, NULL, NULL),
	(62, 31, 7, NULL, NULL),
	(63, 32, 3, NULL, NULL),
	(64, 32, 5, NULL, NULL),
	(65, 33, 3, NULL, NULL),
	(66, 33, 10, NULL, NULL),
	(67, 34, 5, NULL, NULL),
	(68, 34, 5, NULL, NULL),
	(69, 35, 5, NULL, NULL),
	(70, 35, 6, NULL, NULL),
	(71, 36, 1, NULL, NULL),
	(72, 36, 7, NULL, NULL),
	(73, 37, 5, NULL, NULL),
	(74, 37, 7, NULL, NULL),
	(75, 38, 4, NULL, NULL),
	(76, 38, 5, NULL, NULL),
	(77, 39, 2, NULL, NULL),
	(78, 39, 10, NULL, NULL),
	(79, 40, 4, NULL, NULL),
	(80, 40, 10, NULL, NULL),
	(81, 41, 3, NULL, NULL),
	(82, 41, 9, NULL, NULL),
	(83, 42, 2, NULL, NULL),
	(84, 42, 10, NULL, NULL),
	(85, 43, 4, NULL, NULL),
	(86, 43, 8, NULL, NULL),
	(87, 44, 4, NULL, NULL),
	(88, 44, 8, NULL, NULL),
	(89, 45, 1, NULL, NULL),
	(90, 45, 5, NULL, NULL),
	(91, 46, 1, NULL, NULL),
	(92, 46, 9, NULL, NULL),
	(93, 47, 4, NULL, NULL),
	(94, 47, 7, NULL, NULL),
	(95, 48, 5, NULL, NULL),
	(96, 48, 10, NULL, NULL),
	(97, 49, 5, NULL, NULL),
	(98, 49, 6, NULL, NULL),
	(99, 50, 1, NULL, NULL),
	(100, 50, 6, NULL, NULL);
/*!40000 ALTER TABLE `product_supplier` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.product_tag
CREATE TABLE IF NOT EXISTS `product_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tag_product_id_foreign` (`product_id`),
  KEY `product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.product_tag: ~100 rows (aproximadamente)
DELETE FROM `product_tag`;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, NULL, NULL),
	(2, 1, 5, NULL, NULL),
	(3, 2, 3, NULL, NULL),
	(4, 2, 3, NULL, NULL),
	(5, 3, 3, NULL, NULL),
	(6, 3, 4, NULL, NULL),
	(7, 4, 3, NULL, NULL),
	(8, 4, 4, NULL, NULL),
	(9, 5, 1, NULL, NULL),
	(10, 5, 4, NULL, NULL),
	(11, 6, 2, NULL, NULL),
	(12, 6, 3, NULL, NULL),
	(13, 7, 1, NULL, NULL),
	(14, 7, 5, NULL, NULL),
	(15, 8, 1, NULL, NULL),
	(16, 8, 3, NULL, NULL),
	(17, 9, 3, NULL, NULL),
	(18, 9, 4, NULL, NULL),
	(19, 10, 2, NULL, NULL),
	(20, 10, 4, NULL, NULL),
	(21, 11, 3, NULL, NULL),
	(22, 11, 4, NULL, NULL),
	(23, 12, 2, NULL, NULL),
	(24, 12, 2, NULL, NULL),
	(25, 13, 2, NULL, NULL),
	(26, 13, 2, NULL, NULL),
	(27, 14, 3, NULL, NULL),
	(28, 14, 3, NULL, NULL),
	(29, 15, 3, NULL, NULL),
	(30, 15, 4, NULL, NULL),
	(31, 16, 2, NULL, NULL),
	(32, 16, 2, NULL, NULL),
	(33, 17, 3, NULL, NULL),
	(34, 17, 3, NULL, NULL),
	(35, 18, 3, NULL, NULL),
	(36, 18, 3, NULL, NULL),
	(37, 19, 3, NULL, NULL),
	(38, 19, 3, NULL, NULL),
	(39, 20, 3, NULL, NULL),
	(40, 20, 5, NULL, NULL),
	(41, 21, 1, NULL, NULL),
	(42, 21, 2, NULL, NULL),
	(43, 22, 2, NULL, NULL),
	(44, 22, 4, NULL, NULL),
	(45, 23, 3, NULL, NULL),
	(46, 23, 5, NULL, NULL),
	(47, 24, 1, NULL, NULL),
	(48, 24, 2, NULL, NULL),
	(49, 25, 3, NULL, NULL),
	(50, 25, 2, NULL, NULL),
	(51, 26, 2, NULL, NULL),
	(52, 26, 3, NULL, NULL),
	(53, 27, 1, NULL, NULL),
	(54, 27, 5, NULL, NULL),
	(55, 28, 1, NULL, NULL),
	(56, 28, 2, NULL, NULL),
	(57, 29, 2, NULL, NULL),
	(58, 29, 5, NULL, NULL),
	(59, 30, 2, NULL, NULL),
	(60, 30, 5, NULL, NULL),
	(61, 31, 3, NULL, NULL),
	(62, 31, 5, NULL, NULL),
	(63, 32, 2, NULL, NULL),
	(64, 32, 2, NULL, NULL),
	(65, 33, 3, NULL, NULL),
	(66, 33, 2, NULL, NULL),
	(67, 34, 3, NULL, NULL),
	(68, 34, 3, NULL, NULL),
	(69, 35, 3, NULL, NULL),
	(70, 35, 3, NULL, NULL),
	(71, 36, 3, NULL, NULL),
	(72, 36, 4, NULL, NULL),
	(73, 37, 2, NULL, NULL),
	(74, 37, 5, NULL, NULL),
	(75, 38, 1, NULL, NULL),
	(76, 38, 2, NULL, NULL),
	(77, 39, 3, NULL, NULL),
	(78, 39, 3, NULL, NULL),
	(79, 40, 2, NULL, NULL),
	(80, 40, 3, NULL, NULL),
	(81, 41, 1, NULL, NULL),
	(82, 41, 4, NULL, NULL),
	(83, 42, 1, NULL, NULL),
	(84, 42, 3, NULL, NULL),
	(85, 43, 1, NULL, NULL),
	(86, 43, 2, NULL, NULL),
	(87, 44, 2, NULL, NULL),
	(88, 44, 3, NULL, NULL),
	(89, 45, 2, NULL, NULL),
	(90, 45, 3, NULL, NULL),
	(91, 46, 2, NULL, NULL),
	(92, 46, 3, NULL, NULL),
	(93, 47, 2, NULL, NULL),
	(94, 47, 3, NULL, NULL),
	(95, 48, 1, NULL, NULL),
	(96, 48, 5, NULL, NULL),
	(97, 49, 3, NULL, NULL),
	(98, 49, 2, NULL, NULL),
	(99, 50, 2, NULL, NULL),
	(100, 50, 4, NULL, NULL);
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.roles: ~3 rows (aproximadamente)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29'),
	(2, 'editor', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29'),
	(3, 'user', 'web', '2021-03-05 03:35:29', '2021-03-05 03:35:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.role_has_permissions: ~77 rows (aproximadamente)
DELETE FROM `role_has_permissions`;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(1, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2),
	(18, 2),
	(19, 2),
	(20, 2),
	(21, 2),
	(22, 2),
	(23, 2),
	(24, 2),
	(25, 2),
	(26, 2),
	(27, 2),
	(28, 2),
	(29, 2),
	(30, 2),
	(31, 2),
	(32, 2),
	(33, 2),
	(1, 3),
	(10, 3),
	(11, 3),
	(12, 3),
	(14, 3),
	(15, 3),
	(16, 3),
	(18, 3),
	(19, 3),
	(20, 3),
	(22, 3),
	(23, 3),
	(24, 3),
	(26, 3),
	(27, 3),
	(28, 3),
	(30, 3),
	(31, 3),
	(32, 3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `neto` double(8,2) NOT NULL,
  `IVA` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `payment_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_user_id_foreign` (`user_id`),
  KEY `sales_client_id_foreign` (`client_id`),
  KEY `sales_payment_id_foreign` (`payment_id`),
  CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `sales_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment__forms` (`id`),
  CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.sales: ~0 rows (aproximadamente)
DELETE FROM `sales`;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.sale__details
CREATE TABLE IF NOT EXISTS `sale__details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(2,2) NOT NULL,
  `cost` decimal(2,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale__details_sale_id_foreign` (`sale_id`),
  KEY `sale__details_product_id_foreign` (`product_id`),
  CONSTRAINT `sale__details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `sale__details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.sale__details: ~0 rows (aproximadamente)
DELETE FROM `sale__details`;
/*!40000 ALTER TABLE `sale__details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale__details` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.sessions: ~1 rows (aproximadamente)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('UTfd7vmZYaUjskbMK4nOSEJyukJfBh0JJJe84lLL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid1pkVWxrbFhEcW94dUtjVUNhVzhrb2s0QllvenkyaktDMkx4SW5RayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9iZWxzYW91dGZpdC5jb20uZGV2ZWwvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNFB0MFBpODNSclExVy9tcFlmTHNLT0pBN1o0SGJFNjhITVB2ZjdERURtYjFSck1MdWtMSVMiO30=', 1614974826);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.state__orders
CREATE TABLE IF NOT EXISTS `state__orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.state__orders: ~5 rows (aproximadamente)
DELETE FROM `state__orders`;
/*!40000 ALTER TABLE `state__orders` DISABLE KEYS */;
INSERT INTO `state__orders` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Pendiete', 'El pedido se encuentra: Pendiete', 1, '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(2, 'Completado', 'El pedido se encuentra: Completado', 1, '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(3, 'Preparandose', 'El pedido se encuentra: Preparandose', 1, '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(4, 'Enviado', 'El pedido se encuentra: Enviado', 1, '2021-03-05 03:36:34', '2021-03-05 03:36:34'),
	(5, 'Entregado', 'El pedido se encuentra: Entregado', 1, '2021-03-05 03:36:34', '2021-03-05 03:36:34');
/*!40000 ALTER TABLE `state__orders` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suppliers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.suppliers: ~13 rows (aproximadamente)
DELETE FROM `suppliers`;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`id`, `name`, `email`, `url`, `telephone`, `created_at`, `updated_at`) VALUES
	(1, 'Boehm, Wolff and Schmelera', 'mitchell.raul@example.org', 'http://www.lind.com/corporis-fugit-maxime-dolorem-blanditiis-quas', '+6047789517242', '2021-03-05 03:35:46', '2021-03-05 17:03:18'),
	(2, 'Ritchie-Mosciski', 'abednar@example.net', 'https://braun.com/in-perspiciatis-rerum-dolores.html', '+3718779149683', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(3, 'Bradtke, Borer and Braun', 'alta.cruickshank@example.net', 'http://www.hoeger.net/illum-explicabo-perspiciatis-iste-dolor-neque-in-doloremque', '+8522419789203', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(4, 'Kemmer-Kerluke', 'daniel.buck@example.com', 'http://www.rowe.com/corrupti-sapiente-porro-qui-laboriosam-nesciunt-veritatis', '+5435262792682', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(5, 'Schmidt Ltd', 'hill.marilou@example.org', 'https://www.trantow.biz/consectetur-eos-ipsa-debitis', '+6600604253801', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(6, 'Reinger Group', 'verner.bogan@example.net', 'http://www.kris.com/vel-repellat-corrupti-rem-ut-omnis', '+8343957402930', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(7, 'Dickinson-Volkman', 'azieme@example.net', 'http://weber.com/atque-temporibus-voluptas-voluptas.html', '+5547547665285', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(8, 'Predovic Group', 'uoreilly@example.com', 'http://www.okeefe.info/tenetur-inventore-voluptatem-cum-iste-incidunt-rerum', '+3792598983543', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(9, 'O\'Keefe-Reynolds', 'dsporer@example.com', 'http://www.upton.com/alias-nesciunt-ut-minima-ullam.html', '+7343190064597', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(10, 'Wunsch LLC', 'zgoldner@example.net', 'http://oberbrunner.net/', '+8757754022683', '2021-03-05 03:35:46', '2021-03-05 03:35:46'),
	(12, 'dasdas', 'dasd@asdas.com', 'dasdasd', '1312135131', '2021-03-05 17:07:16', '2021-03-05 17:07:16'),
	(13, 'Yasana Moda', 'asdfas@fasdfasd.com', 'sdfasdfasd.com', '315131513', '2021-03-05 17:17:01', '2021-03-05 17:17:01'),
	(14, 'JF Pelicanos', 'jf@gmail.com', 'fasdfasd.com', '123456s', '2021-03-05 18:31:48', '2021-03-05 18:32:19');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.tags: ~5 rows (aproximadamente)
DELETE FROM `tags`;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Verano', 'Verano', '1', 'Tag: Verano', '2021-03-05 03:35:45', '2021-03-05 03:35:45'),
	(2, 'Ofertas', 'Ofertas', '1', 'Tag: Ofertas', '2021-03-05 03:35:45', '2021-03-05 03:35:45'),
	(3, 'Invierno', 'Invierno', '1', 'Tag: Invierno', '2021-03-05 03:35:45', '2021-03-05 03:35:45'),
	(4, 'Otoño', 'Otoño', '1', 'Tag: Otoño', '2021-03-05 03:35:45', '2021-03-05 03:35:45'),
	(5, 'Primavera', 'Primavera', '1', 'Tag: Primavera', '2021-03-05 03:35:45', '2021-03-05 03:35:45');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.users: ~10 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'samir mahmud', 'admin@admin.com', NULL, '$2y$10$4Pt0Pi83RrQ1W/mpYfLsKOJA7Z4HbE68HMPvf7DEDmb1RrMLukLIS', NULL, NULL, 'tHWSiwKb4oLD8mF7Z9bNYjPIgKq4orIrEtwSmKRrAxyzmgisqrd51KT3oLWm', NULL, NULL, '2021-03-05 03:35:34', '2021-03-05 03:35:34'),
	(2, 'Deangelo Jakubowski', 'koch.laurel@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'stTqQ2g4A4', NULL, NULL, '2021-03-05 03:35:34', '2021-03-05 03:35:34'),
	(3, 'Darlene Hill', 'reta46@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LI2kiqgRnz', NULL, NULL, '2021-03-05 03:35:34', '2021-03-05 03:35:34'),
	(4, 'Mrs. Helen Hoppe', 'xcarroll@example.org', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fMppvYOa9W', NULL, NULL, '2021-03-05 03:35:34', '2021-03-05 03:35:34'),
	(5, 'Abe Leannon Jr.', 'lela05@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bk6HqB0r8I', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(6, 'Prof. Jovan Schmitt III', 'lhudson@example.net', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HQHhS2cEQe', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(7, 'Delta Bogan', 'emuller@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'N6MZpFlRgz', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(8, 'Clarissa Feest I', 'ylangosh@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gjgymRYWIM', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(9, 'Dorothy Dietrich', 'gleason.chasity@example.net', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FYLH3vr8S3', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(10, 'Jonathon Robel', 'leffler.dion@example.com', '2021-03-05 03:35:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gNVGYl1E03', NULL, NULL, '2021-03-05 03:35:35', '2021-03-05 03:35:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla belsa_outfit1.0.waists
CREATE TABLE IF NOT EXISTS `waists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla belsa_outfit1.0.waists: ~9 rows (aproximadamente)
DELETE FROM `waists`;
/*!40000 ALTER TABLE `waists` DISABLE KEYS */;
INSERT INTO `waists` (`id`, `name`, `slug`, `status`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'S', NULL, '1', 'Talle: S', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(2, 'M', NULL, '1', 'Talle: M', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(3, 'L', NULL, '1', 'Talle: L', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(4, 'XL', NULL, '1', 'Talle: XL', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(5, 'XXL', NULL, '1', 'Talle: XXL', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(6, '1', NULL, '1', 'Talle: 1', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(7, '2', NULL, '1', 'Talle: 2', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(8, '3', NULL, '1', 'Talle: 3', '2021-03-05 03:35:35', '2021-03-05 03:35:35'),
	(9, '4', NULL, '1', 'Talle: 4', '2021-03-05 03:35:35', '2021-03-05 03:35:35');
/*!40000 ALTER TABLE `waists` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
