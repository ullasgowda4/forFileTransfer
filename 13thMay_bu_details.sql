-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: capital_first_ams_v_2_bu_changes
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
-- Table structure for table `business_unit_details`
--

DROP TABLE IF EXISTS `business_unit_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_unit_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bu_id` int(11) NOT NULL,
  `detail_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `detail_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `is_fetch` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bu_details` (`detail_type`),
  KEY `idx_bu_details_value` (`detail_value`),
  KEY `idx_bu_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_unit_details`
--

LOCK TABLES `business_unit_details` WRITE;
/*!40000 ALTER TABLE `business_unit_details` DISABLE KEYS */;
INSERT INTO `business_unit_details` VALUES (5,4,'reason','Customer Visit',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(6,4,'reason','reason2',0,0,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(17,4,'purposeofvisit','Document Picked up',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(18,4,'purposeofvisit','Rejected',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(19,4,'purposeofvisit','Follow-up',0,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(20,4,'purposeofvisit','Cancelled',0,1,'2018-11-13 00:00:00','2018-11-13 10:00:00',1),(21,4,'purposeofvisit','Call center Call Back',0,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(22,4,'purposeofvisit','Customer Not available',19,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(23,4,'purposeofvisit','Document Pending',19,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(24,4,'purposeofvisit','Customer need time to think',19,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(25,4,'purposeofvisit','ROI discrepancy',20,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(26,4,'purposeofvisit','TPD discrepancy',20,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(27,4,'purposeofvisit','Not Interested',20,1,'2018-11-13 08:00:00','2018-11-13 14:00:00',1),(28,5,'reason','Customer Visit',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(29,5,'purposeofvisit','Customer Visit',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(30,6,'reason','Customer Visit',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(31,6,'purposeofvisit','Customer Visit',0,1,'2018-10-25 00:00:00','2018-10-25 00:00:00',1),(32,7,'reason','Customerâ€™s Appointment Meeting',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(33,8,'reason','Customerâ€™s Appointment Meeting',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(34,9,'reason','Customerâ€™s Appointment Meeting',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(35,10,'reason','Customerâ€™s Appointment Meeting',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(36,7,'purposeofvisit','Customer Appointment',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(37,8,'purposeofvisit','Customer Appointment',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(38,9,'purposeofvisit','Customer Appointment',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(39,10,'purposeofvisit','Customer Appointment',0,1,'2018-12-07 00:00:00','2018-12-07 00:00:00',1),(40,1,'Leave','Sick Leave',NULL,1,'2019-04-24 00:00:00','2019-04-24 00:00:00',1),(41,1,'Leave','Others',NULL,1,'2019-04-24 18:00:00','2019-04-24 17:00:00',1),(42,1,'Leave','Loss of Pay',0,1,'2019-05-08 00:00:00','2019-05-08 00:00:00',0),(43,2,'Leave','Sick Leave',0,1,'2019-05-08 00:00:00','2019-05-08 00:00:00',1),(44,2,'Leave','Others',0,1,'2019-05-08 00:00:00','2019-05-08 00:00:00',1),(45,2,'Leave','Loss of Pay',0,1,'2019-05-08 00:00:00','2019-05-08 00:00:00',0),(46,3,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(47,3,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(48,3,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(49,4,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(50,4,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(51,4,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(52,5,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(53,5,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(54,5,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(55,6,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(56,6,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(57,6,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(58,7,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(59,7,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(60,7,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(61,8,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(62,8,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(63,8,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(64,9,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(65,9,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(66,9,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0),(67,10,'Leave','Sick Leave',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(68,10,'Leave','Others',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',1),(69,10,'Leave','Loss of Pay',0,1,'2019-05-09 00:00:00','2019-05-09 00:00:00',0);
/*!40000 ALTER TABLE `business_unit_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 19:17:21
