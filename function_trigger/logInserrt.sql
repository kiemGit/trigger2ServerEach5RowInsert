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


-- Dumping structure for trigger palembang.logInsert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `logInsert` AFTER INSERT ON `trs` FOR EACH ROW BEGIN
  
  DECLARE countInserted INT;
  
  UPDATE palembang.data_temp SET palembang.data_temp.countInsert = palembang.data_temp.countInsert+1 WHERE palembang.data_temp.tableName = 'trs';
  
  SET countInserted = (SELECT checkCountInserted2('trs'));
	  IF countInserted = 1 THEN
		INSERT INTO trs_srv2 VALUES ('1234125', 2);
	  END IF;
  
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
