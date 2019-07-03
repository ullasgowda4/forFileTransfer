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
-- Table structure for table `business_unit`
--

DROP TABLE IF EXISTS `business_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exception_login` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `checkin_start` time NOT NULL,
  `checkin_end` time NOT NULL,
  `halfday_cutoff` time NOT NULL,
  `checkout_period` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_key` longtext COLLATE utf8_unicode_ci,
  `lead_generation` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `app_so_login` tinyint(1) DEFAULT NULL,
  `so_mis_designations` longtext COLLATE utf8_unicode_ci,
  `manager_mis_designations` longtext COLLATE utf8_unicode_ci,
  `leadmanagement_by` int(11) NOT NULL DEFAULT '0',
  `lead_geofence` tinyint(1) DEFAULT '0',
  `lead_geofence_radius` int(11) DEFAULT NULL,
  `is_mis_enabled` tinyint(1) DEFAULT '0',
  `is_performance_enabled` tinyint(1) DEFAULT '0',
  `mis_recipients` longtext COLLATE utf8_unicode_ci,
  `is_leave_enabled` tinyint(1) DEFAULT '1',
  `leaves_allowed` int(11) NOT NULL DEFAULT '0',
  `is_dsa_group_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8C200E5E5E237E06` (`name`),
  UNIQUE KEY `UNIQ_8C200E5E3EE4B093` (`short_name`),
  KEY `buShortName` (`short_name`),
  KEY `buName` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_unit`
--

LOCK TABLES `business_unit` WRITE;
/*!40000 ALTER TABLE `business_unit` DISABLE KEYS */;
INSERT INTO `business_unit` VALUES (1,'Consumer Durable',0,1,'CD','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,NULL,'2019-05-24 13:53:42',0,'{\"designations\":[\"Jr. BDO\",\"BDO\",\"Sr. BDO\",\"Channel Manager\"]}','{\"designations\":{\"level_1\":[\"SM\",\"TM\"],\"level_2\":[\"TL\"]}}',0,0,10000,0,0,NULL,1,2,0),(2,'Two Wheeler',0,1,'TW','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,'2018-11-05 12:25:52','2019-05-15 18:04:01',0,'{\"designations\":[\"Sales officer\"]}','{\"designations\":{\"level_1\":[\"Sales Manager-2 Wheeler Finance & Alliance\", \"Sales Manager-2 Wheeler Premium Bikes & Refinance\", \"Sales Manager-Two Wheeler Loan\"],\"level_2\":[]}}',0,0,NULL,1,0,NULL,1,1,0),(3,'Used Car',0,1,'UC','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,NULL,'2019-05-29 11:20:36',0,'{\"designations\":[\"Sales officer\"]}','{\"designations\":{\"level_1\":[\"TM\"],\"level_2\":[]}}',0,0,NULL,0,0,NULL,1,30,0),(4,'Cross Sell Pl',1,1,'CS','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,'2018-11-05 12:25:52','2019-05-21 16:00:55',0,'{\"designations\":[\"FOS - PL\",\"FOS Mobile App\"]}','{\"designations\":{\"level_1\":[\"SM\"],\"level_2\":[]}}',2,0,NULL,0,0,NULL,1,2,0),(5,'Micro Business Loan',0,1,'MBL','09:00:00','20:00:00','10:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Lead Generated\",\"unit\":\"nos\",\"code\":\"lead\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',1,NULL,'2019-05-28 10:25:44',1,'{\"designations\":[\"DST\",\"TL\"]}','{\"designations\":{\"level_1\":[\"SM\"],\"level_2\":[]}}',1,1,100000000,0,1,NULL,1,31,0),(6,'Personal Loan',1,1,'PL','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,'2018-11-05 12:25:52','2019-05-15 18:05:02',0,'{\"designations\":[\"BIL PL-DST\",\"BIL PL-CBM\",\"BIL PL-TL\"]}',NULL,2,0,NULL,0,0,NULL,1,1,0),(7,'Home Loan',0,1,'HL','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,NULL,'2019-05-15 18:05:17',1,'{\"designations\":[\"DST\", \"Sales officer\"]}','{\"designations\":{\"level_1\":[\"SM\",\"TM\",\"RH\"],\"level_2\":[]}}',0,0,NULL,0,0,NULL,1,1,0),(8,'BIL',1,1,'BIL','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',0,NULL,'2019-05-15 18:05:37',1,'{\"designations\":[\"Channel Business Manager\",\"MIS Coordinator\",\"Runner Boy\",\"Sales Coordinator\",\"Sales Officer\",\"Team leader\",\"Tele Caller\",\"BIL PL-SC\"]}',NULL,0,0,0,0,0,NULL,1,1,1),(9,'Loan Against Property',1,1,'LAP','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',1,NULL,'2019-05-24 18:12:52',1,'{\"designations\":[\"DST\",\"SALES CO-ORDINATOR\",\"TEAM LEADER\",\"CBM\",\"TELECALLER\",\"MIS EXECUTIVE\"]}','{\"designations\":{\"level_1\":[\"SM\",\"TM\"],\"level_2\":[]}}',1,1,100000000,0,1,NULL,1,10,1),(10,'Suvidha',1,1,'LAPS','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Customers Visited\",\"unit\":\"nos\",\"code\":\"customerVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"},{\"key\":\"Leave Applied\",\"unit\":\"nos\",\"code\":\"leaveApplied\"}]}',1,NULL,'2019-07-03 10:53:24',1,'{\"designations\":[\"DST\",\"SALES CO-ORDINATOR\",\"TEAM LEADER\",\"CBM\",\"TELECALLER\",\"MIS EXECUTIVE\"]}','{\"designations\":{\"level_1\":[\"SM\",\"TM\"],\"level_2\":[]}}',1,0,100000000,0,1,NULL,1,1,1),(11,'SEPL',0,1,'SEPL','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,'2018-11-05 12:25:52','2019-06-26 16:29:42',1,NULL,NULL,0,0,NULL,0,0,NULL,1,2,0),(12,'Collections',0,1,'Collections','09:30:00','21:30:00','13:00:00','10','{\"data\":[{\"key\":\"Total Present\",\"unit\":\"days\",\"code\":\"totalPresent\"},{\"key\":\"Total Absent\",\"unit\":\"days\",\"code\":\"totalAbsent\"},{\"key\":\"Stores Visited\",\"unit\":\"nos\",\"code\":\"storeVisit\"},{\"key\":\"Branches Visited\",\"unit\":\"nos\",\"code\":\"branchVisit\"}]}',0,NULL,'2019-06-17 15:04:19',1,NULL,NULL,0,0,NULL,0,0,NULL,1,2,0),(777,'Unknown BU',0,0,'--','00:00:00','00:00:00','00:00:00','0',NULL,0,'2019-01-09 00:00:00','2019-01-09 00:00:00',0,NULL,NULL,0,0,NULL,0,0,NULL,1,2,0),(778,'ALL',0,0,'ALL','01:00:00','12:00:00','02:00:00','10',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL,1,2,0);
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

-- Dump completed on 2019-07-03 15:07:03
