-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: capital_first_ams_v_2
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `manager_attendance_log`
--

DROP TABLE IF EXISTS `manager_attendance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_attendance_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_in_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `check_out` datetime DEFAULT NULL,
  `map_in_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `false_check_in` tinyint(1) DEFAULT '0',
  `false_check_in_distance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_in_long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_out_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_out_long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_type` int(11) DEFAULT '0',
  `checkout_type` int(11) DEFAULT '0',
  `check_in_address` longtext COLLATE utf8_unicode_ci,
  `business_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT '1',
  `total_hours_spent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` int(11) DEFAULT '1',
  `login_reason` int(11) DEFAULT '0',
  `halfday_checkin` tinyint(1) DEFAULT '0',
  `lan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lan_notes` longtext COLLATE utf8_unicode_ci,
  `visit_purpose` int(11) DEFAULT NULL,
  `visit_sub_purpose` int(11) DEFAULT NULL,
  `customer_name` longtext COLLATE utf8_unicode_ci,
  `customer_mobile` longtext COLLATE utf8_unicode_ci,
  `loan_amount` longtext COLLATE utf8_unicode_ci,
  `check_out_address` longtext COLLATE utf8_unicode_ci,
  `check_in_status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_35B1F34EB092A811` (`store_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `FK_35B1F34E783E3463` FOREIGN KEY (`manager_id`) REFERENCES `admin_user` (`id`),
  CONSTRAINT `FK_35B1F34EB092A811` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_attendance_log`
--
-- WHERE:  user_type = 2

LOCK TABLES `manager_attendance_log` WRITE;
/*!40000 ALTER TABLE `manager_attendance_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager_attendance_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 14:08:39
