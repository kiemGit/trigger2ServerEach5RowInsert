-- --------------------------------------------------------
-- Host:                         192.168.0.19
-- Server version:               5.5.32 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for palembang
CREATE DATABASE IF NOT EXISTS `palembang` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `palembang`;


-- Dumping structure for table palembang.data_temp
CREATE TABLE IF NOT EXISTS `data_temp` (
  `tableName` varchar(123) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countInsert` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table palembang.data_temp: ~2 rows (approximately)
/*!40000 ALTER TABLE `data_temp` DISABLE KEYS */;
INSERT INTO `data_temp` (`tableName`, `countInsert`) VALUES
	('trs', 1),
	('trscps', 3);
/*!40000 ALTER TABLE `data_temp` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
