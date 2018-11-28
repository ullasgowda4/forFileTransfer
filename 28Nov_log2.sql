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
  `business_unit` int(11) DEFAULT NULL,
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
  KEY `IDX_35B1F34E8C200E5E` (`business_unit`),
  CONSTRAINT `FK_35B1F34E783E3463` FOREIGN KEY (`manager_id`) REFERENCES `admin_user` (`id`),
  CONSTRAINT `FK_35B1F34E8C200E5E` FOREIGN KEY (`business_unit`) REFERENCES `business_unit` (`id`),
  CONSTRAINT `FK_35B1F34EB092A811` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_attendance_log`
--

LOCK TABLES `manager_attendance_log` WRITE;
/*!40000 ALTER TABLE `manager_attendance_log` DISABLE KEYS */;
INSERT INTO `manager_attendance_log` VALUES (1,3,16721,'2018-11-16 16:38:28','2018-11-16','2018-11-26 21:30:00','19.0176147',0,NULL,'72.8561644','19.0176147','72.8561644',1,1,'256, Rd Number 19, Wadla Village, Wadala, Mumbai, Maharashtra 400031, India',1,1,'4:51:32',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'256, Rd Number 19, Wadla Village, Wadala, Mumbai, Maharashtra 400031, India',1,'2018-11-26 15:05:15','2018-11-26 15:07:12'),(2,3,2399,'2018-11-26 15:48:09','2018-11-26','2018-11-26 15:48:26','12.9151689',0,NULL,'77.5860632','12.9151689','77.5860632',1,1,'Swamy Complex, Swamy Complex, 24th Main, 24th Main Rd, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India',1,1,'0:0:17',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Swamy Complex, Swamy Complex, 24th Main, 24th Main Rd, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India',1,'2018-11-26 15:48:10','2018-11-26 15:48:26'),(3,3,7525,'2018-11-26 15:48:33','2018-11-26','2018-11-26 16:05:30','12.9151689',0,NULL,'77.5860632','12.9151661','77.586022',1,1,'Swamy Complex, Swamy Complex, 24th Main, 24th Main Rd, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India',1,1,'0:16:57',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-26 15:48:34','2018-11-26 16:05:30'),(4,3,16724,'2018-11-26 16:03:10','2018-11-26','2018-11-26 16:05:52','19.0176147',0,NULL,'72.8561644','12.9151661','77.586022',1,4,'256, Rd Number 19, Wadla Village, Wadala, Mumbai, Maharashtra 400031, India',1,1,'0:2:42',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-26 16:05:36','2018-11-26 16:05:52'),(5,3,16725,'2018-11-26 16:03:10','2018-11-26','2018-11-26 16:06:37','19.0176147',0,NULL,'72.8561644','12.9151661','77.586022',1,4,'256, Rd Number 19, Wadla Village, Wadala, Mumbai, Maharashtra 400031, India',1,1,'0:3:27',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-26 16:06:25','2018-11-26 16:06:37'),(6,523,16754,'2018-11-27 20:12:06','2018-11-27','2018-11-27 20:13:19','23.0480168',0,NULL,'72.5601786','23.0480168','72.5601786',1,1,'2, Ankur Rd, Sardar Patel Colony, Sundar Nagar, Naranpura, Ahmedabad, Gujarat 380014, India',5,1,'0:1:13',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2, Ankur Rd, Sardar Patel Colony, Sundar Nagar, Naranpura, Ahmedabad, Gujarat 380014, India',1,'2018-11-27 20:12:06','2018-11-27 20:13:19'),(7,504,16755,'2018-11-27 20:14:30','2018-11-27','2018-11-27 20:15:27','23.0482631',0,NULL,'72.5601534','23.0482631','72.5601534',1,1,'3, Ankur Rd, Sardar Patel Colony, Sundar Nagar, Naranpura, Ahmedabad, Gujarat 380014, India',5,1,'0:0:57',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3, Ankur Rd, Sardar Patel Colony, Sundar Nagar, Naranpura, Ahmedabad, Gujarat 380014, India',1,'2018-11-27 20:14:31','2018-11-27 20:15:28'),(8,523,16759,'2018-11-28 09:44:05','2018-11-28',NULL,'23.0480011',0,NULL,'72.5599061','0','0',1,0,'Nakhudi Talav Cross Bd patel house, Near Sardar Patel Statue,, Sardar Patel Road, Naranpura, Ahmedabad, Gujarat 380014, India',5,1,NULL,2,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NA',1,'2018-11-28 09:44:05','2018-11-28 09:44:05'),(9,504,16760,'2018-11-28 09:44:16','2018-11-28',NULL,'23.0477978',0,NULL,'72.5595829','0','0',1,0,'3, Rangupavan Society, Sardar Patel Colony, Sundar Nagar, Naranpura, Ahmedabad, Gujarat 380014, India',5,1,NULL,2,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NA',1,'2018-11-28 09:44:18','2018-11-28 09:44:18');
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

-- Dump completed on 2018-11-28  9:56:44
