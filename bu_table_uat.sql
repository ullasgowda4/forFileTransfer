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
-- Table structure for table `business_unit`
--

DROP TABLE IF EXISTS `business_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exception_login` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `checkin_start` time NOT NULL,
  `checkin_end` time NOT NULL,
  `halfday_cutOff` time NOT NULL,
  `checkout_period` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_key` longtext COLLATE utf8_unicode_ci,
  `lead_generation` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `app_so_login` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8C200E5E5E237E06` (`name`),
  UNIQUE KEY `UNIQ_8C200E5E3EE4B093` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_unit`
--

LOCK TABLES `business_unit` WRITE;
/*!40000 ALTER TABLE `business_unit` DISABLE KEYS */;
INSERT INTO `business_unit` VALUES (1,'cd','Consumer Durable',0,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,'2018-11-26 15:11:15',NULL),(2,'tw','Two Wheeler',0,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,'2018-11-05 12:25:52','2018-11-26 15:11:19',NULL),(3,'uc','Used Car',0,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,NULL,NULL),(4,'cs','Cross Sell PL',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,'2018-11-05 12:25:52','2018-11-05 12:25:52',NULL),(5,'mbl','Micro Business Loan',0,1,'09:00:00','20:00:00','10:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Lead Generated\",\"unit\":\"nos\",\"code\":\"lead\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',1,NULL,'2018-12-10 14:54:24',1),(6,'pl','Personal Loan',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,'2018-11-05 12:25:52','2018-11-05 12:25:52',NULL),(7,'HL','Home Loan',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,NULL,1),(8,'BIL','BIL',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,NULL,1),(9,'LAP','Loan Against Property',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,NULL,1),(10,'LAPS','Suvidha',1,1,'09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,NULL,1);
/*!40000 ALTER TABLE `business_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-04 12:07:43
