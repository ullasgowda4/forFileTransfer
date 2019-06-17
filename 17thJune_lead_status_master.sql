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
-- Table structure for table `lead_status_master`
--

DROP TABLE IF EXISTS `lead_status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_status_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit` int(11) DEFAULT NULL,
  `status_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statusMasterStatusId` (`status_id`),
  KEY `statusMasterParentId` (`parent_id`),
  KEY `statusMasterBuId` (`business_unit`),
  CONSTRAINT `FK_AAA1CB718C200E5E` FOREIGN KEY (`business_unit`) REFERENCES `business_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_status_master`
--

LOCK TABLES `lead_status_master` WRITE;
/*!40000 ALTER TABLE `lead_status_master` DISABLE KEYS */;
INSERT INTO `lead_status_master` VALUES (1,NULL,'created','Created',0,1,NULL,NULL),(2,NULL,'updated','Updated',0,1,NULL,NULL),(3,9,'login_pending','Login Pending',0,1,NULL,NULL),(4,9,'login_done','Login Done',0,1,NULL,NULL),(5,9,'approved','Approved',0,1,NULL,NULL),(6,9,'disbursed','Disbursed',0,1,NULL,NULL),(7,9,'reject','reject',0,1,NULL,NULL),(8,9,'customer_not_interested','Customer Not Interested',0,1,NULL,NULL),(9,10,'login_pending','Login Pending',0,1,NULL,NULL),(10,10,'login_done','Login Done',0,1,NULL,NULL),(11,10,'approved','Approved',0,1,NULL,NULL),(12,10,'disbursed','Disbursed',0,1,NULL,NULL),(13,10,'reject','reject',0,1,NULL,NULL),(14,10,'customer_not_interested','Customer Not Interested',0,1,NULL,NULL),(15,9,'call_back','Call Back',3,1,NULL,NULL),(16,9,'incorrect_number','Incorrect Number',3,1,NULL,NULL),(17,9,'no_response','Rigning/No Response',3,1,NULL,NULL),(18,9,'documents_pending','Documents Pending',3,1,NULL,NULL),(19,10,'call_back','Call Back',9,1,NULL,NULL),(20,10,'incorrect_number','Incorrect Number',9,1,NULL,NULL),(21,10,'no_response','Rigning/No Response',9,1,NULL,NULL),(22,10,'documents_pending','Documents Pending',9,1,NULL,NULL),(23,9,'application_id','Message - Application ID to be mentioned',4,1,NULL,NULL),(24,10,'application_id','Message - Application ID to be mentioned',10,1,NULL,NULL),(25,9,'reject_eligibility','Reject - Eligibility',7,1,NULL,NULL),(26,9,'reject_ogl','Reject - OGL',7,1,NULL,NULL),(27,9,'reject_collateral','Reject - Collateral',7,1,NULL,NULL),(28,9,'reject_cibil','Reject - CIBIL',7,1,NULL,NULL),(29,9,'reject_profile','Reject - Profile',7,1,NULL,NULL),(30,9,'reject_wrong_assignment','Reject - Wrongly assigned to me',7,1,NULL,NULL),(31,10,'reject_eligibility','Reject - Eligibility',13,1,NULL,NULL),(32,10,'reject_ogl','Reject - OGL',13,1,NULL,NULL),(33,10,'reject_collateral','Reject - Collateral',13,1,NULL,NULL),(34,10,'reject_cibil','Reject - CIBIL',13,1,NULL,NULL),(35,10,'reject_profile','Reject - Profile',13,1,NULL,NULL),(36,10,'reject_wrong_assignment','Reject - Wrongly assigned to me',13,1,NULL,NULL),(37,9,'cust_nt_interest_high_roi','High ROI',8,1,NULL,NULL),(38,9,'cust_nt_interest_high_loan','Need Higher Loan',8,1,NULL,NULL),(39,9,'cust_nt_interest_postpone','Postponed the loan decision',8,1,NULL,NULL),(40,9,'cust_nt_interest_closed','Closed to Competition',8,1,NULL,NULL),(41,10,'cust_nt_interest_high_roi','High ROI',14,1,NULL,NULL),(42,10,'cust_nt_interest_high_loan','Need Higher Loan',14,1,NULL,NULL),(43,10,'cust_nt_interest_postpone','Postponed the loan decision',14,1,NULL,NULL),(44,10,'cust_nt_interest_closed','Closed to Competition',14,1,NULL,NULL),(45,NULL,'assigned','Assigned',0,1,NULL,NULL);
/*!40000 ALTER TABLE `lead_status_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 17:28:47
