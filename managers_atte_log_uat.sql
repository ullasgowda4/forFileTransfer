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
-- Table structure for table `attendance_log`
--

DROP TABLE IF EXISTS `attendance_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_id` int(11) DEFAULT NULL,
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
  `check_out_address` longtext COLLATE utf8_unicode_ci,
  `check_in_status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
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
  `managerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8920D967B092A811` (`store_id`),
  KEY `so_id` (`so_id`),
  KEY `IDX_8920D96754BE7860` (`managerId`),
  CONSTRAINT `FK_8920D96754BE7860` FOREIGN KEY (`managerId`) REFERENCES `admin_user` (`id`),
  CONSTRAINT `FK_8920D96782159675` FOREIGN KEY (`so_id`) REFERENCES `so_data` (`id`),
  CONSTRAINT `FK_8920D967B092A811` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195956 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_log`
--
-- WHERE:  user_type = 2

LOCK TABLES `attendance_log` WRITE;
/*!40000 ALTER TABLE `attendance_log` DISABLE KEYS */;
INSERT INTO `attendance_log` VALUES (195585,10,16447,'2018-11-15 19:58:16','2018-11-15','2018-11-15 20:33:14','12.91512635577',0,NULL,'77.58595990935','12.915144763397','77.58600087224',1,1,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Micro Business Loan',2,'0:34:58','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-15 19:58:16','2018-11-15 20:33:14',2,0,1,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195590,6859,16451,'2018-11-15 20:33:38','2018-11-15','2018-11-15 20:33:51','12.915136056975',0,NULL,'77.586049605292','12.915156549548','77.586014318643',1,1,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Consumer Durable',1,'0:0:13','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-15 22:33:42','2018-11-15 22:33:54',2,0,1,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195607,6859,2398,'2018-11-16 12:27:54','2018-11-16','2018-11-16 12:28:14','12.915143',0,NULL,'77.5860163','12.915143','77.5860163',1,1,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Consumer Durable',1,'0:0:20','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-16 12:27:55','2018-11-16 12:28:15',2,0,0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195608,6859,2398,'2018-11-16 12:28:24','2018-11-16','2018-11-16 12:28:28','12.915143',0,NULL,'77.5860163','12.9151412','77.5860193',1,1,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Consumer Durable',1,'0:0:4','Shop No A-94 6/2, Opp. 3M Car Care Centre, 24th Main Rd, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India',1,'2018-11-16 12:28:25','2018-11-16 12:28:29',2,0,0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195609,6859,16466,'2018-11-16 12:28:43','2018-11-16','2018-11-16 12:30:38','12.9151412',0,NULL,'77.5860193','12.9151536','77.5860131',1,1,'Shop No A-94 6/2, Opp. 3M Car Care Centre, 24th Main Rd, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India','Consumer Durable',1,'0:1:55','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-16 12:28:44','2018-11-16 12:30:38',2,0,0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195613,6865,10530,'2018-11-16 12:37:16','2018-11-16','2018-11-16 12:37:30','12.9151546',0,NULL,'77.5860203','12.9151546','77.5860203',1,1,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Consumer Durable',1,'0:0:14','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-16 12:37:18','2018-11-16 12:37:31',2,0,0,'','',NULL,NULL,NULL,NULL,NULL,NULL),(195651,6859,2399,'2018-11-16 16:27:05','2018-11-16','2018-11-16 16:33:49','12.9151534',0,NULL,'77.5860084','12.9151554','77.5860292',1,2,'948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India','Consumer Durable',1,'0:6:44','948, Aurobindo Marg, Marenahalli, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560040, India',1,'2018-11-16 16:27:05','2018-11-16 16:33:50',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195665,NULL,2398,'2018-11-16 17:59:39','2018-11-16','2018-11-16 18:00:01','12.91514',0,NULL,'77.5860244','12.91514','77.5860244',1,1,'Shop No A-94 6/2, Opp. 3M Car Care Centre, 24th Main Rd, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India','Consumer Durable',1,'0:0:22','Shop No A-94 6/2, Opp. 3M Car Care Centre, 24th Main Rd, 2nd Phase, JP Nagar, Bengaluru, Karnataka 560078, India',1,'2018-11-16 17:59:39','2018-11-16 18:00:01',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(195708,NULL,308,'2018-11-20 19:32:47','2018-11-20','2018-11-20 19:34:16','19.0066131',0,NULL,'72.8332362','19.0066131','72.8332362',1,1,'841, Fitwala Rd, Saidham Nagar, Parel, Mumbai, Maharashtra 400013, India','Consumer Durable',1,'0:1:29','841, Fitwala Rd, Saidham Nagar, Parel, Mumbai, Maharashtra 400013, India',1,'2018-11-20 19:32:48','2018-11-20 19:34:17',2,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `attendance_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 14:12:39
