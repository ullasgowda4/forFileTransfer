-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 10.40.0.161    Database: capital_first_ams_v_3
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
-- Table structure for table `manage_dsa_contest`
--

DROP TABLE IF EXISTS `manage_dsa_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage_dsa_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit` int(11) DEFAULT NULL,
  `contest_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manageContestBuId` (`business_unit`),
  KEY `manageContestIsActive` (`is_active`),
  CONSTRAINT `FK_77B514228C200E5E` FOREIGN KEY (`business_unit`) REFERENCES `business_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_dsa_contest`
--

LOCK TABLES `manage_dsa_contest` WRITE;
/*!40000 ALTER TABLE `manage_dsa_contest` DISABLE KEYS */;
INSERT INTO `manage_dsa_contest` VALUES (1,9,'test1','2019-06-01','2019-08-31',1,'2019-07-02 06:00:00','2019-07-02 12:00:00'),(2,8,'test1','2019-06-01','2019-08-31',1,'2019-07-02 06:00:00','2019-07-02 12:00:00'),(3,10,'test1','2019-06-01','2019-08-31',1,'2019-07-02 06:00:00','2019-07-02 12:00:00');
/*!40000 ALTER TABLE `manage_dsa_contest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 20:03:36
