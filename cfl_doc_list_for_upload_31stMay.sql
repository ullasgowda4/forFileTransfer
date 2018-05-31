-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: capital_first
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
-- Table structure for table `upload_documents_list`
--

DROP TABLE IF EXISTS `upload_documents_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_documents_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docCategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `docName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandatory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_heading` longtext COLLATE utf8_unicode_ci,
  `minimum_pages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maximum_pages` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_documents_list`
--

LOCK TABLES `upload_documents_list` WRITE;
/*!40000 ALTER TABLE `upload_documents_list` DISABLE KEYS */;
INSERT INTO `upload_documents_list` VALUES (1,'CUSTOMERPHOTO','CKYC Photography','Customer Photo','YES','NO',1,'2018-05-29 15:18:34','2018-05-31 15:36:30','EN',NULL,'1','1'),(2,'POI','IDENTITY PROOF','Aadhaar','YES','NO',1,'2018-05-29 15:18:47','2018-05-31 15:44:26','EN','Upload both sides of your Aadhar.','2','2'),(3,'POI','IDENTITY PROOF','PAN','YES','NO',1,'2018-05-29 15:18:59','2018-05-31 15:46:54','EN','Upload front side of your PAN Card','1','1'),(4,'POI','IDENTITY PROOF','Voter ID','NO','NO',1,'2018-05-29 15:19:11','2018-05-31 15:46:39','EN','Upload the front side of your Voter ID.','1','1'),(5,'POI','IDENTITY PROOF','Passport','NO','NO',1,'2018-05-29 15:19:24','2018-05-31 15:47:33','EN','test sub - heading passport','1','3'),(6,'POA_RESIDENCE','Current Residence Address Proof','Aadhar','NO','NO',1,'2018-05-29 15:19:51','2018-05-31 15:38:32','EN','Upload both sides of your Aadhar.','2','2'),(7,'POA_RESIDENCE','Current Residence Address Proof','Passport','NO','NO',1,'2018-05-29 15:20:02','2018-05-31 15:39:29','EN','test sub - heading passport','1','3'),(8,'POA_RESIDENCE','Current Residence Address Proof','Voter ID','NO','NO',1,'2018-05-29 15:20:13','2018-05-31 15:39:53','EN','Upload the front side of your Voter ID','1','1'),(9,'POA_RESIDENCE','Current Residence Address Proof','Water Bill','NO','NO',1,'2018-05-29 15:20:24','2018-05-31 15:40:06','EN','Upload the front side of the bill.','1','1'),(10,'POA_RESIDENCE','Current Residence Address Proof','landline Bill','NO','NO',1,'2018-05-29 15:20:38','2018-05-31 15:40:43','EN','Upload the front side of your bill.','1','1'),(11,'POA_RESIDENCE','Current Residence Address Proof','Electricity Bill','NO','NO',1,'2018-05-29 15:20:50','2018-05-31 15:41:16','EN','Upload the front side of your bill.','1','1'),(12,'POA_RESIDENCE','Current Residence Address Proof','Gas Connection','NO','NO',1,'2018-05-29 15:21:00','2018-05-31 15:42:00','EN','Upload the first page in your Gas book.','1','1'),(13,'POA_RESIDENCE','Current Residence Address Proof','Registered Rent Agreement','NO','NO',1,'2018-05-29 15:21:11','2018-05-31 15:42:38','EN','Upload all pages of your agreement.','3','60'),(14,'POA_RESIDENCE','Current Residence Address Proof','Registered Sale Deed','NO','NO',1,'2018-05-29 15:21:21','2018-05-31 15:43:13','EN','Upload all the pages of your agreement.','3','60'),(15,'POA_RESIDENCE','Current Residence Address Proof','Passbook','NO','NO',1,'2018-05-29 15:21:31','2018-05-31 15:44:02','EN','Upload the first page your Passbook.','1','1'),(16,'POA_RESIDENCE','Current Residence Address Proof','Bank Statement','NO','YES',1,'2018-05-29 15:21:42','2018-05-31 15:55:26','EN','Upload all the pages of your statement.','1','60'),(17,'POA_BUSINESS','Business (Office) Address Proof','Landline Bill','NO','NO',1,'2018-05-29 15:22:29','2018-05-31 15:37:15','EN','Upload the front side of the bill.','1','1'),(18,'POA_BUSINESS','Business (Office) Address Proof','Electricity Bill','NO','NO',1,'2018-05-29 15:22:38','2018-05-31 15:37:26','EN','Upload the front side of the bill.','1','1'),(19,'POA_BUSINESS','Business (Office) Address Proof','TAN Allotment Number','NO','NO',1,'2018-05-29 15:22:48','2018-05-31 15:46:45','EN','Upload the front side of the bill.','1','1'),(20,'SALARYSLIPS','Last three Months salary slip / Salary Certificate','Bank Statement of Salary Account for last 3 months','YES','YES',1,'2018-05-29 15:23:12','2018-05-31 15:52:37','EN','Upload all pages of your Salary slip','1','10'),(21,'SALARYSLIPS','Last three Months salary slip / Salary Certificate','Salary slips for last 3 months','YES','YES',1,'2018-05-29 15:23:29','2018-05-31 15:53:06','EN','Upload all the pages of your Salary slip.','1','10'),(22,'BANKSTATEMENTS','Bank Statements','Bank Statement for last 3 months','YES','YES',1,'2018-05-29 15:23:48','2018-05-31 15:36:03','EN','Upload all the pages of the statement.','1','20');
/*!40000 ALTER TABLE `upload_documents_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-31 15:58:02
