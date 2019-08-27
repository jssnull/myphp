-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table native_php_shopping_cart.carts
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table native_php_shopping_cart.carts: ~0 rows (approximately)
DELETE FROM `carts`;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '1HUff', '2019-08-26 07:06:35', '2019-08-26 07:06:35');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;

-- Dumping structure for table native_php_shopping_cart.cart_products
CREATE TABLE IF NOT EXISTS `cart_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT 'last edited product name',
  `description` text COMMENT 'last edited product description',
  `price` float DEFAULT NULL COMMENT 'last edited price',
  `images` json DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `category_name` varchar(250) DEFAULT NULL COMMENT 'last edited category name',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table native_php_shopping_cart.cart_products: ~0 rows (approximately)
DELETE FROM `cart_products`;
/*!40000 ALTER TABLE `cart_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_products` ENABLE KEYS */;

-- Dumping structure for table native_php_shopping_cart.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slug` varchar(50) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table native_php_shopping_cart.categories: ~2 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 0, 'alat-tulis', 'Alat Tulis', '', '2019-08-26 02:54:39', '2019-08-26 02:54:39'),
	(2, 0, 'elektronik', 'Elektronik', '', '2019-08-26 02:54:51', '2019-08-26 02:54:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table native_php_shopping_cart.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(8) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT 'User Order Name',
  `address` text COMMENT 'User Order Address',
  `total_price` float unsigned DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table native_php_shopping_cart.orders: ~0 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table native_php_shopping_cart.order_products
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT 'last edited product name',
  `description` text COMMENT 'last edited product description',
  `price` float DEFAULT NULL COMMENT 'last edited price',
  `images` json DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `category_name` varchar(250) DEFAULT NULL COMMENT 'last edited category name',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table native_php_shopping_cart.order_products: ~0 rows (approximately)
DELETE FROM `order_products`;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;

-- Dumping structure for table native_php_shopping_cart.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slug` varchar(50) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `images` json DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table native_php_shopping_cart.products: ~5 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category_id`, `slug`, `name`, `description`, `price`, `images`, `quantity`, `created_at`, `updated_at`) VALUES
	(1, 2, 'caddy-disk-dvd', 'Caddy Disk DVD', 'Caddy Disk untuk external Hardisk.\r\nMenggunakan slot DVD.', 135000, '["http://192.168.1.7/shopping-cart/public/images/products/caddy-disk-dvd-20190826025555-0.jpg", "http://192.168.1.7/shopping-cart/public/images/products/caddy-disk-dvd-20190826025630-0.jpg", "http://192.168.1.7/shopping-cart/public/images/products/caddy-disk-dvd-20190826025630-1.jpg", "http://192.168.1.7/shopping-cart/public/images/products/caddy-disk-dvd-20190826025630-2.jpg"]', 2, '2019-08-23 11:55:56', '2019-08-26 02:56:30'),
	(2, 2, 'mini-bluetooth-speaker', 'Mini Bluetooth Speaker', 'Menggunakan Bluetooth atau SD Card', 60000, '["http://192.168.1.7/shopping-cart/public/images/products/mini-bluetooth-speaker-20190826025714-0.png", "http://192.168.1.7/shopping-cart/public/images/products/mini-bluetooth-speaker-20190826025714-1.jpg"]', 5, '2019-08-23 11:57:22', '2019-08-26 02:57:14'),
	(4, 2, 'mini-fan', 'Mini USB Fan', '', 25000, '["http://192.168.1.7/shopping-cart/public/images/products/mini-fan-20190826025941-0.jpg"]', 5, '2019-08-26 02:59:41', '2019-08-26 02:59:41'),
	(5, 1, 'sequence-harry-potter', 'Sequence Harry Potter', '', 1000000, '["http://192.168.1.7/shopping-cart/public/images/products/sequence-harry-potter-20190826030646-0.jpg"]', 6, '2019-08-26 03:06:46', '2019-08-26 03:06:46'),
	(6, 0, 'gold-mini-speaker', 'Gold Mini Speaker', '', 40000, '["http://192.168.1.7/shopping-cart/public/images/products/gold-mini-speaker-20190826030718-0.jpg"]', 4, '2019-08-26 03:07:18', '2019-08-26 03:07:18');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
