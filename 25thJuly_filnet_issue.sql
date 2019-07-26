-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
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
-- Table structure for table `file_upload_details`
--

DROP TABLE IF EXISTS `file_upload_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_upload_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arg2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `property` longtext COLLATE utf8_unicode_ci,
  `response_error` longtext COLLATE utf8_unicode_ci,
  `response_message` longtext COLLATE utf8_unicode_ci,
  `fileLocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadStatus` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_uploaded_at` datetime DEFAULT NULL,
  `number_of_attempts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62917 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_upload_details`
--
-- WHERE:  id=57594

LOCK TABLES `file_upload_details` WRITE;
/*!40000 ALTER TABLE `file_upload_details` DISABLE KEYS */;
INSERT INTO `file_upload_details` VALUES (57594,'Bank Statement','Loan App','View_Upload_Restrict','','CF_LOANDOCUMENT','-','{\"property\":[{\"propertyName\":\"CF_DocumentName\",\"propertyValue\":\"Bank Statement-1\"},{\"propertyName\":\"DocumentTitle\",\"propertyValue\":\"Bank_Statement_1_0314245419.pdf\"},{\"propertyName\":\"CF_DocumentTypeName\",\"propertyValue\":\"Bank Statement\"},{\"propertyName\":\"CF_UploadedBy\",\"propertyValue\":\"UC.MUKESHR.KAPTAN58218@CAPFIRST.COM\"},{\"propertyName\":\"CF_OriginalPhotocopy\",\"propertyValue\":\"X\"},{\"propertyName\":\"CF_Mandatory\",\"propertyValue\":\"N\"},{\"propertyName\":\"CF_SFDCLoanNumber\",\"propertyValue\":\"0314245419\"},{\"propertyName\":\"CF_Latitude\",\"propertyValue\":\"22.3121083\"},{\"propertyName\":\"CF_Longitude\",\"propertyValue\":\"73.1642281\"},{\"propertyName\":\"CF_GeoLocation\",\"propertyValue\":\"609 K P Platina, Opp. Vanijya Bhavan, Race Course Rd, Vadodara, Gujarat 390007, India\"}]}',NULL,NULL,'Bank_Statement_1_0314245419.pdf',1,'2019-07-01 10:55:10','2019-07-02 12:44:03','1','80435100','{8088B16B-0000-C86A-B70A-2B338B520979}');
/*!40000 ALTER TABLE `file_upload_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-26 12:17:30
