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
-- Table structure for table `dsa_group_master`
--

DROP TABLE IF EXISTS `dsa_group_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsa_group_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit` int(11) DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualifying_volume` double DEFAULT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AC980BF28C200E5E` (`business_unit`),
  CONSTRAINT `FK_AC980BF28C200E5E` FOREIGN KEY (`business_unit`) REFERENCES `business_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsa_group_master`
--

LOCK TABLES `dsa_group_master` WRITE;
/*!40000 ALTER TABLE `dsa_group_master` DISABLE KEYS */;
INSERT INTO `dsa_group_master` VALUES (1,9,'Team Mclaren A',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(2,9,'Team Mclaren B',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(3,9,'Team Mclaren C',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(4,9,'Team Mclaren D',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(5,9,'Team Mclaren E',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(6,9,'Team Mclaren F',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(7,9,'Team Mclaren G',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(8,9,'Team Mclaren H',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(9,9,'Team Mclaren I',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(10,9,'Team Mclaren J',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(11,9,'Team Mclaren K',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(12,9,'Team Mclaren L',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(13,9,'Team Mclaren M',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(14,9,'Team Mclaren N',4,'Mclaren','2019-07-09 16:47:55','2019-07-10 11:00:52'),(15,9,'Team Mercedes A',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(16,9,'Team Mercedes B',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(17,9,'Team Mercedes C',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(18,9,'Team Mercedes D',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(19,9,'Team Mercedes E',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(20,9,'Team Mercedes F',8,'Mercedes','2019-07-09 16:47:55','2019-07-10 11:00:52'),(21,9,'Team Ferrari',12,'Ferrari','2019-07-09 16:47:55','2019-07-10 11:00:52'),(22,9,'Team Mclaren O',4,'Mclaren','2019-07-09 17:00:40','2019-07-10 11:00:52'),(23,9,'Team Mclaren P',4,'Mclaren','2019-07-09 17:00:40','2019-07-10 11:00:52'),(24,8,'Team Alfa Romeo A',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(25,8,'Team Alfa Romeo B',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(26,8,'Team Alfa Romeo C',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(27,8,'Team Alfa Romeo D',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(28,8,'Team Alfa Romeo E',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(29,8,'Team Alfa Romeo F',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(30,8,'Team Alfa Romeo G',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(31,8,'Team Alfa Romeo H',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(32,8,'Team Alfa Romeo I',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(33,8,'Team Alfa Romeo J',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(34,8,'Team Alfa Romeo K',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(35,8,'Team Alfa Romeo L',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(36,8,'Team Alfa Romeo M',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(37,8,'Team Alfa Romeo N',1.5,'Alfa Romeo','2019-07-09 17:19:59','2019-07-10 16:25:29'),(38,8,'Team Haas A',2.5,'Haas','2019-07-09 17:19:59','2019-07-10 16:25:29'),(39,8,'Team Haas B',2.5,'Haas','2019-07-09 17:19:59','2019-07-10 16:25:29'),(40,8,'Team Haas C',2.5,'Haas','2019-07-09 17:19:59','2019-07-10 16:25:29'),(41,8,'Team Red Bull A',5,'Red Bull','2019-07-09 17:19:59','2019-07-10 16:25:29'),(42,8,'Team Red Bull B',5,'Red Bull','2019-07-09 17:19:59','2019-07-10 16:25:29'),(43,8,'Team Renault',8,'Renault','2019-07-09 17:19:59','2019-07-10 16:25:29'),(44,8,'Team Toro Rosso A',4,'Toro Rosso','2019-07-09 17:19:59','2019-07-10 16:25:29'),(45,8,'Team Toro Rosso B',4,'Toro Rosso','2019-07-09 17:19:59','2019-07-10 16:25:29'),(46,8,'Team Toro Rosso C',4,'Toro Rosso','2019-07-09 17:19:59','2019-07-10 16:25:29'),(47,8,'Team Williams',11,'Williams','2019-07-09 17:19:59','2019-07-10 16:25:29'),(48,9,'Team Mclaren Q',4,'Mclaren','2019-07-10 11:00:52','2019-07-10 11:00:52'),(49,8,'Team Alfa Romeo O',1.5,'Alfa Romeo','2019-07-10 16:25:29','2019-07-10 16:25:29'),(50,8,'Team Red Bull C',5,'Red Bull','2019-07-10 16:25:29','2019-07-10 16:25:29');
/*!40000 ALTER TABLE `dsa_group_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-16 16:33:48
