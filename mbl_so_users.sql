-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 10.40.0.161    Database: capital_first_ams_v_2
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `so_data`
--

DROP TABLE IF EXISTS `so_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sm_head_id` int(11) DEFAULT NULL,
  `tm_head_id` int(11) DEFAULT NULL,
  `sh_head_id` int(11) DEFAULT NULL,
  `rh_head_id` int(11) DEFAULT NULL,
  `zh_head_id` int(11) DEFAULT NULL,
  `nh_head_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_mobile_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_emp_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payroll` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doj` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gross_salary` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `so_email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '0',
  `is_first_check_in_done` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_8FBADC22B6A86F94` (`sm_head_id`),
  KEY `IDX_8FBADC22547474ED` (`tm_head_id`),
  KEY `IDX_8FBADC22FC3F2ADB` (`sh_head_id`),
  KEY `IDX_8FBADC2213FD41E5` (`rh_head_id`),
  KEY `IDX_8FBADC222A0111` (`zh_head_id`),
  KEY `IDX_8FBADC222E6F2083` (`nh_head_id`),
  KEY `managers_id` (`zh_head_id`,`sh_head_id`,`rh_head_id`,`sm_head_id`,`tm_head_id`,`so_emp_id`),
  CONSTRAINT `FK_8FBADC2213FD41E5` FOREIGN KEY (`rh_head_id`) REFERENCES `so_head_data` (`id`),
  CONSTRAINT `FK_8FBADC222A0111` FOREIGN KEY (`zh_head_id`) REFERENCES `so_head_data` (`id`),
  CONSTRAINT `FK_8FBADC222E6F2083` FOREIGN KEY (`nh_head_id`) REFERENCES `so_head_data` (`id`),
  CONSTRAINT `FK_8FBADC22547474ED` FOREIGN KEY (`tm_head_id`) REFERENCES `so_head_data` (`id`),
  CONSTRAINT `FK_8FBADC22B6A86F94` FOREIGN KEY (`sm_head_id`) REFERENCES `so_head_data` (`id`),
  CONSTRAINT `FK_8FBADC22FC3F2ADB` FOREIGN KEY (`sh_head_id`) REFERENCES `so_head_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9221 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_data`
--
-- WHERE:  business_unit = "Micro Business Loan"

LOCK TABLES `so_data` WRITE;
/*!40000 ALTER TABLE `so_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `so_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-15 22:52:37
