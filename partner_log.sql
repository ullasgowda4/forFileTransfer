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
-- Table structure for table `partner_doc_upload_details`
--

DROP TABLE IF EXISTS `partner_doc_upload_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_doc_upload_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_request` longtext COLLATE utf8_unicode_ci,
  `response_object` longtext COLLATE utf8_unicode_ci,
  `response_message` longtext COLLATE utf8_unicode_ci,
  `upload_status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `last_uploaded_at` datetime DEFAULT NULL,
  `number_of_attempts` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_doc_upload_details`
--

LOCK TABLES `partner_doc_upload_details` WRITE;
/*!40000 ALTER TABLE `partner_doc_upload_details` DISABLE KEYS */;
INSERT INTO `partner_doc_upload_details` VALUES (2,'{\"requestHeaderSource\":\"SOApp_PineLabs\",\"merchantId\":0,\"PartnerName\":null,\"TransactionID\":null,\"ServiceName\":null,\"LoginDate\":null,\"SFDCID\":\"0314201114\",\"SOID\":\"chandralayout2@sangeethamobiles.com\",\"IMEI\":\"869383041385154\",\"SerialNumber\":\"S814SER06C00\",\"ServiceCode\":null,\"InvoiceDate\":\"2019-06-28\",\"InvoiceNumber\":\"AS1920CND2521\",\"documents\":[{\"documentName\":\"INVOICE.jpg\",\"documentBody\":null,\"documentType\":\"Invoice_Copy\"},{\"documentName\":\"CKYC PHOTO.jpg\",\"documentBody\":null,\"documentType\":\"Customer_Photo\"},{\"documentName\":\"OTHERS.jpg\",\"documentBody\":null,\"documentType\":\"Charge_Slip\"},{\"documentName\":\"DELIVERY PROOF.jpg\",\"documentBody\":null,\"documentType\":\"Product_Delivery_Proof\"}]}','null','Server/API Error',0,'2019-06-28 20:03:21','2019-07-04 18:00:01','153'),(3,'{\"requestHeaderSource\":\"SOApp_PineLabs\",\"merchantId\":0,\"PartnerName\":null,\"TransactionID\":null,\"ServiceName\":null,\"LoginDate\":null,\"SFDCID\":\"0314255241\",\"SOID\":\"chandralayout2@sangeethamobiles.com\",\"IMEI\":\"866745049069852\",\"SerialNumber\":\"B819SFD06CAO\",\"ServiceCode\":null,\"InvoiceDate\":\"2019-06-30\",\"InvoiceNumber\":\"AS1920CND2556\",\"documents\":[{\"documentName\":\"INVOICE.jpg\",\"documentBody\":null,\"documentType\":\"Invoice_Copy\"},{\"documentName\":\"CKYC PHOTO.jpg\",\"documentBody\":null,\"documentType\":\"Customer_Photo\"},{\"documentName\":\"OTHERS.jpg\",\"documentBody\":null,\"documentType\":\"Charge_Slip\"},{\"documentName\":\"DELIVERY PROOF.jpg\",\"documentBody\":null,\"documentType\":\"Product_Delivery_Proof\"}]}','null','Server/API Error',0,'2019-06-30 14:55:14','2019-07-04 18:00:01','111'),(4,'{\"requestHeaderSource\":\"SOApp_PineLabs\",\"merchantId\":0,\"PartnerName\":null,\"TransactionID\":null,\"ServiceName\":null,\"LoginDate\":null,\"SFDCID\":\"0314256130\",\"SOID\":\"chandralayout2@sangeethamobiles.com\",\"IMEI\":\"357192103139709\",\"SerialNumber\":\"A505FZBGINS\",\"ServiceCode\":null,\"InvoiceDate\":\"2019-06-30\",\"InvoiceNumber\":\"AS1920CND2402\",\"documents\":[{\"documentName\":\"INVOICE.jpg\",\"documentBody\":null,\"documentType\":\"Invoice_Copy\"},{\"documentName\":\"CKYC PHOTO.jpg\",\"documentBody\":null,\"documentType\":\"Customer_Photo\"},{\"documentName\":\"OTHERS.jpg\",\"documentBody\":null,\"documentType\":\"Charge_Slip\"},{\"documentName\":\"DELIVERY PROOF.jpg\",\"documentBody\":null,\"documentType\":\"Product_Delivery_Proof\"}]}','null','Server/API Error',0,'2019-06-30 15:01:19','2019-07-04 18:00:02','110'),(5,'{\"requestHeaderSource\":\"SOApp_PineLabs\",\"merchantId\":0,\"PartnerName\":null,\"TransactionID\":null,\"ServiceName\":null,\"LoginDate\":null,\"SFDCID\":\"0314371662\",\"SOID\":\"tm4safa@sargam.in\",\"IMEI\":\"\",\"SerialNumber\":\"047L4PB502509\",\"ServiceCode\":null,\"InvoiceDate\":\"2019-07-03\",\"InvoiceNumber\":\"6836\",\"documents\":[{\"documentName\":\"INVOICE.jpg\",\"documentBody\":null,\"documentType\":\"Invoice_Copy\"},{\"documentName\":\"CKYC PHOTO.jpg\",\"documentBody\":null,\"documentType\":\"Customer_Photo\"},{\"documentName\":\"OTHERS.jpg\",\"documentBody\":null,\"documentType\":\"Charge_Slip\"}]}','null','Server/API Error',0,'2019-07-03 17:10:25','2019-07-04 18:00:02','26');
/*!40000 ALTER TABLE `partner_doc_upload_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04 18:12:45
