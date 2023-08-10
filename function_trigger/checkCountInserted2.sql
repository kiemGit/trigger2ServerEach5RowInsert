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


-- Dumping structure for function palembang.checkCountInserted2
DELIMITER //
CREATE DEFINER=`hakim`@`%%` FUNCTION `checkCountInserted2`(`tableName` VARCHAR(27)) RETURNS int(20)
BEGIN

   DECLARE countInserted INT(2);
   DECLARE success INT(2);
   
   SET countInserted = (SELECT palembang.data_temp.countInsert FROM palembang.data_temp WHERE palembang.data_temp.tableName = tableName);
   
   IF countInserted = 6 THEN
      SET success = 1;
      UPDATE palembang.data_temp SET palembang.data_temp.countInsert = palembang.data_temp.countInsert-5 WHERE palembang.data_temp.tableName = tableName;
   ELSE
      SET success = 0;
      
   END IF;
   
   RETURN success;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
