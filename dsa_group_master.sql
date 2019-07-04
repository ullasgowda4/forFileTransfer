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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsa_group_master`
--

LOCK TABLES `dsa_group_master` WRITE;
/*!40000 ALTER TABLE `dsa_group_master` DISABLE KEYS */;
INSERT INTO `dsa_group_master` VALUES (1,9,'Thunderbolts A',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(2,9,'Thunderbolts B',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(3,9,'Thunderbolts C',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(4,9,'Thunderbolts D',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(5,9,'Thunderbolts E',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(6,9,'Thunderbolts F',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(7,9,'Thunderbolts G',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(8,9,'Thunderbolts H',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(9,9,'Thunderbolts I',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(10,9,'Thunderbolts J',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(11,9,'Thunderbolts K',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(12,9,'Thunderbolts L',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(13,9,'Thunderbolts M',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:42'),(14,9,'Thunderbolts N',4,'Thunderbolts','2019-07-02 12:38:35','2019-07-02 16:39:43'),(15,9,'Warriors A',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(16,9,'Warriors B',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(17,9,'Warriors C',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(18,9,'Warriors D',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(19,9,'Warriors E',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(20,9,'Warriors F',8,'Warriors','2019-07-02 12:38:35','2019-07-02 16:39:43'),(21,9,'Crusaders',12,'Crusaders','2019-07-02 12:38:35','2019-07-02 16:39:43'),(22,9,'Avengers',10,'Avengers A','2019-07-02 12:53:07','2019-07-02 12:53:07'),(23,8,'Heroes',10,'Heroes 1','2019-07-02 12:53:07','2019-07-02 12:53:07'),(24,9,'test group',3,'test category','2019-07-02 15:42:23','2019-07-02 15:42:23'),(25,8,'Guardians A',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(26,8,'Guardians B',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(27,8,'Guardians C',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(28,8,'Guardians D',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(29,8,'Guardians E',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(30,8,'Guardians F',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(31,8,'Guardians G',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(32,8,'Guardians H',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(33,8,'Guardians I',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(34,8,'Guardians J',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(35,8,'Guardians K',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(36,8,'Guardians L',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(37,8,'Guardians M',15,'Guardians','2019-07-02 16:52:58','2019-07-02 16:52:58'),(38,8,'Daredevils A',25,'Daredevils','2019-07-02 16:52:58','2019-07-02 16:52:58'),(39,8,'Daredevils B',25,'Daredevils','2019-07-02 16:52:58','2019-07-02 16:52:58'),(40,8,'Daredevils C',25,'Daredevils','2019-07-02 16:52:58','2019-07-02 16:52:58'),(41,8,'Incredibles A',375,'Incredibles','2019-07-02 16:52:58','2019-07-02 16:52:58'),(42,8,'Incredibles B',375,'Incredibles','2019-07-02 16:52:58','2019-07-02 16:52:58'),(43,8,'Incredibles C',375,'Incredibles','2019-07-02 16:52:58','2019-07-02 16:52:58'),(44,8,'Titans A',525,'Titans','2019-07-02 16:52:58','2019-07-02 16:52:58'),(45,8,'Titans B',525,'Titans','2019-07-02 16:52:58','2019-07-02 16:52:58'),(46,8,'Gladiators',8,'Gladiators','2019-07-02 16:52:58','2019-07-02 16:52:58'),(47,8,'Marvels',11,'Marvels','2019-07-02 16:52:58','2019-07-02 16:52:58'),(48,10,'Superman 1',8,'Super man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(49,10,'Superman 2',8,'Super man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(50,10,'Superman 3',8,'Super man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(51,9,'Shaktiman 1',10,'Shaktiman','2019-07-03 15:32:05','2019-07-03 15:42:19'),(52,9,'Shaktiman 2',10,'Shaktiman','2019-07-03 15:32:05','2019-07-03 15:42:19'),(53,9,'Shaktiman 3',10,'Shaktiman','2019-07-03 15:32:05','2019-07-03 15:42:19'),(54,8,'Bat man 1',15,'Bat man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(55,8,'Bat man 2',15,'Bat man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(56,8,'Bat man 3',15,'Bat man','2019-07-03 15:32:05','2019-07-03 15:42:19'),(57,10,'Bat man 4',20,'Bat man','2019-07-03 15:32:05','2019-07-03 15:32:05'),(58,10,'Bat man 5',20,'Bat man','2019-07-03 15:32:05','2019-07-03 15:32:05'),(59,9,'Team Mclaren A',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(60,9,'Team Mclaren B',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(61,9,'Team Mclaren C',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(62,9,'Team Mclaren D',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(63,9,'Team Mclaren E',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(64,9,'Team Mclaren F',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(65,9,'Team Mclaren G',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(66,9,'Team Mclaren H',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(67,9,'Team Mclaren I',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(68,9,'Team Mclaren J',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(69,9,'Team Mclaren K',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(70,9,'Team Mclaren L',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(71,9,'Team Mclaren M',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(72,9,'Team Mclaren N',4,'Mclaren','2019-07-03 17:25:20','2019-07-04 11:34:34'),(73,9,'Team Mercedes A',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(74,9,'Team Mercedes B',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(75,9,'Team Mercedes C',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(76,9,'Team Mercedes D',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(77,9,'Team Mercedes E',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(78,9,'Team Mercedes F',8,'Mercedes','2019-07-03 17:25:20','2019-07-04 11:34:34'),(79,9,'Team Ferrari',12,'Ferrari','2019-07-03 17:25:20','2019-07-04 11:34:34');
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

-- Dump completed on 2019-07-04 23:43:34
