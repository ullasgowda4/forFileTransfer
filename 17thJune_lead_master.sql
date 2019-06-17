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
-- Table structure for table `lead_master`
--

DROP TABLE IF EXISTS `lead_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit` int(11) DEFAULT NULL,
  `details_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_unit` (`business_unit`),
  CONSTRAINT `FK_5068DAAA8C200E5E` FOREIGN KEY (`business_unit`) REFERENCES `business_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_master`
--

LOCK TABLES `lead_master` WRITE;
/*!40000 ALTER TABLE `lead_master` DISABLE KEYS */;
INSERT INTO `lead_master` VALUES (1,5,'source','dirRef','Direct','2019-01-04 00:00:00','2019-01-04 00:00:00'),(2,9,'source','dirRef','Direct','2019-01-04 00:00:00','2019-01-04 00:00:00'),(3,10,'source','dirRef','Direct','2019-01-04 00:00:00','2019-01-04 00:00:00'),(4,5,'source','empRef','Employee Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(5,9,'source','empRef','Employee Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(6,10,'source','empRef','Employee Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(7,5,'source','othRef','Other Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(8,9,'source','othRef','Other Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(9,10,'source','othRef','Other Referral','2019-01-04 00:00:00','2019-01-04 00:00:00'),(10,5,'source','ccRef','Call Centre','2019-01-04 00:00:00','2019-01-04 00:00:00'),(11,9,'source','ccRef','Call Centre','2019-01-04 00:00:00','2019-01-04 00:00:00'),(12,10,'source','ccRef','Call Centre','2019-01-04 00:00:00','2019-01-04 00:00:00'),(13,5,'product',NULL,'LAP','2019-01-04 00:00:00','2019-01-04 00:00:00'),(14,9,'product',NULL,'LAP','2019-01-04 00:00:00','2019-01-04 00:00:00'),(15,10,'product',NULL,'LAP','2019-01-04 00:00:00','2019-01-04 00:00:00'),(16,5,'product',NULL,'LAPS','2019-01-04 00:00:00','2019-01-04 00:00:00'),(17,9,'product',NULL,'LAPS','2019-01-04 00:00:00','2019-01-04 00:00:00'),(18,10,'product',NULL,'LAPS','2019-01-04 00:00:00','2019-01-04 00:00:00'),(19,5,'product',NULL,'CASA','2019-01-04 00:00:00','2019-01-04 00:00:00'),(20,9,'product',NULL,'CASA','2019-01-04 00:00:00','2019-01-04 00:00:00'),(21,10,'product',NULL,'CASA','2019-01-04 00:00:00','2019-01-04 00:00:00'),(22,5,'product',NULL,'MBL','2019-01-04 00:00:00','2019-01-04 00:00:00'),(23,9,'product',NULL,'MBL','2019-01-04 00:00:00','2019-01-04 00:00:00'),(24,10,'product',NULL,'MBL','2019-01-04 00:00:00','2019-01-04 00:00:00'),(25,5,'campaign',NULL,'Paisa Bazaar','2019-01-04 00:00:00','2019-01-04 00:00:00'),(26,9,'campaign',NULL,'Paisa Bazaar','2019-01-04 00:00:00','2019-01-04 00:00:00'),(27,10,'campaign',NULL,'Paisa Bazaar','2019-01-04 00:00:00','2019-01-04 00:00:00'),(28,5,'campaign',NULL,'Loan Adda','2019-01-04 00:00:00','2019-01-04 00:00:00'),(29,9,'campaign',NULL,'Loan Adda','2019-01-04 00:00:00','2019-01-04 00:00:00'),(30,10,'campaign',NULL,'Loan Adda','2019-01-04 00:00:00','2019-01-04 00:00:00'),(31,5,'campaign',NULL,'Normal','2019-01-04 00:00:00','2019-01-04 00:00:00'),(32,9,'campaign',NULL,'Normal','2019-01-04 00:00:00','2019-01-04 00:00:00'),(33,10,'campaign',NULL,'Normal','2019-01-04 00:00:00','2019-01-04 00:00:00'),(34,5,'businessTypes',NULL,'Manufacturing','2019-01-04 00:00:00','2019-01-04 00:00:00'),(35,9,'businessTypes',NULL,'Manufacturing','2019-01-04 00:00:00','2019-01-04 00:00:00'),(36,10,'businessTypes',NULL,'Manufacturing','2019-01-04 00:00:00','2019-01-04 00:00:00'),(37,5,'businessTypes',NULL,'Trading','2019-01-04 00:00:00','2019-01-04 00:00:00'),(38,9,'businessTypes',NULL,'Trading','2019-01-04 00:00:00','2019-01-04 00:00:00'),(39,10,'businessTypes',NULL,'Trading','2019-01-04 00:00:00','2019-01-04 00:00:00'),(40,5,'businessTypes',NULL,'Service','2019-01-04 00:00:00','2019-01-04 00:00:00'),(41,9,'businessTypes',NULL,'Service','2019-01-04 00:00:00','2019-01-04 00:00:00'),(42,10,'businessTypes',NULL,'Service','2019-01-04 00:00:00','2019-01-04 00:00:00'),(43,5,'businessTypes',NULL,'Others','2019-01-04 00:00:00','2019-01-04 00:00:00'),(44,9,'businessTypes',NULL,'Others','2019-01-04 00:00:00','2019-01-04 00:00:00'),(45,10,'businessTypes',NULL,'Others','2019-01-04 00:00:00','2019-01-04 00:00:00'),(46,5,'leadTypes',NULL,'Hot','2019-01-04 00:00:00','2019-01-04 00:00:00'),(47,9,'leadTypes',NULL,'Hot','2019-01-04 00:00:00','2019-01-04 00:00:00'),(48,10,'leadTypes',NULL,'Hot','2019-01-04 00:00:00','2019-01-04 00:00:00'),(49,5,'leadTypes',NULL,'Warm','2019-01-04 00:00:00','2019-01-04 00:00:00'),(50,9,'leadTypes',NULL,'Warm','2019-01-04 00:00:00','2019-01-04 00:00:00'),(51,10,'leadTypes',NULL,'Warm','2019-01-04 00:00:00','2019-01-04 00:00:00'),(52,5,'leadTypes',NULL,'Cold','2019-01-04 00:00:00','2019-01-04 00:00:00'),(53,9,'leadTypes',NULL,'Cold','2019-01-04 00:00:00','2019-01-04 00:00:00'),(54,10,'leadTypes',NULL,'Cold','2019-01-04 00:00:00','2019-01-04 00:00:00');
/*!40000 ALTER TABLE `lead_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 17:28:21
