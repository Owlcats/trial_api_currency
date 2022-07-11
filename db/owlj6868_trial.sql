-- MariaDB dump 10.19  Distrib 10.5.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: owlj6868_trial
-- ------------------------------------------------------
-- Server version	10.5.16-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES (1,1,'trial_awan_solution',1,0,0,NULL,1);
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owl_curency`
--

DROP TABLE IF EXISTS `owl_curency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owl_curency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curency_code` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`curency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owl_curency`
--

LOCK TABLES `owl_curency` WRITE;
/*!40000 ALTER TABLE `owl_curency` DISABLE KEYS */;
INSERT INTO `owl_curency` (`id`, `curency_code`, `name`, `rate`, `date`) VALUES (1,'EUR','Euro',1,'2022-07-09 02:26:41'),(2,'AED','Arab Emirates Dirham',3.7364,'2022-07-09 02:26:41'),(3,'AFN','Afghanistan Afghani',89.6127,'2022-07-09 02:26:41'),(4,'ALL','Albanian Lek',116.6628,'2022-07-09 02:26:41'),(5,'AMD','Armenian Dram',417.7281,'2022-07-09 02:26:41'),(6,'ANG','',1.8211,'2022-07-09 02:26:41'),(7,'AOA','Angolan Kwanza',447.3845,'2022-07-09 02:26:41'),(8,'ARS','Argentine Peso',128.7644,'2022-07-09 02:26:41'),(9,'AUD','Australian Dollar',1.4883,'2022-07-09 02:26:41'),(10,'AWG','Aruban Guilder',1.8211,'2022-07-09 02:26:41'),(11,'AZN','Azerbaijan New Manat',1.7297,'2022-07-09 02:26:41'),(12,'BAM','Marka',1.9558,'2022-07-09 02:26:41'),(13,'BBD','Barbados Dollar',2.0348,'2022-07-09 02:26:41'),(14,'BDT','Bangladeshi Taka',94.2814,'2022-07-09 02:26:41'),(15,'BGN','Bulgarian Lev',1.9558,'2022-07-09 02:26:41'),(16,'BHD','Bahraini Dinar',0.3825,'2022-07-09 02:26:41'),(17,'BIF','Burundi Franc',2060.98,'2022-07-09 02:26:41'),(18,'BMD','Bermudian Dollar',1.0174,'2022-07-09 02:26:41'),(19,'BND','Brunei Dollar',1.425,'2022-07-09 02:26:41'),(20,'BOB','Boliviano',6.9977,'2022-07-09 02:26:41'),(21,'BRL','Brazilian Real',5.4943,'2022-07-09 02:26:41'),(22,'BSD','Bahamian Dollar',1.0174,'2022-07-09 02:26:41'),(23,'BTN','Bhutan Ngultrum',80.4023,'2022-07-09 02:26:41'),(24,'BWP','Botswana Pula',12.8553,'2022-07-09 02:26:41'),(25,'BYN','',2.8999,'2022-07-09 02:26:41'),(26,'BZD','Belize Dollar',2.0348,'2022-07-09 02:26:41'),(27,'CAD','Canadian Dollar',1.3214,'2022-07-09 02:26:41'),(28,'CDF','Francs',2022.7815,'2022-07-09 02:26:41'),(29,'CHF','Swiss Franc',0.99,'2022-07-09 02:26:41'),(30,'CLP','Chilean Peso',989.7193,'2022-07-09 02:26:41'),(31,'CNY','Yuan Renminbi',6.8117,'2022-07-09 02:26:41'),(32,'COP','Colombian Peso',4358.8895,'2022-07-09 02:26:41'),(33,'CRC','Costa Rican Colon',702.3129,'2022-07-09 02:26:41'),(34,'CUP','Cuban Peso',24.4176,'2022-07-09 02:26:41'),(35,'CVE','Cape Verde Escudo',110.265,'2022-07-09 02:26:41'),(36,'CZK','Czech Koruna',24.8025,'2022-07-09 02:26:41'),(37,'DJF','Djibouti Franc',180.8133,'2022-07-09 02:26:41'),(38,'DKK','Danish Krone',7.4604,'2022-07-09 02:26:41'),(39,'DOP','Dominican Peso',55.6363,'2022-07-09 02:26:41'),(40,'DZD','Algerian Dinar',150.5027,'2022-07-09 02:26:41'),(41,'EGP','Egyptian Pound',19.2424,'2022-07-09 02:26:41'),(42,'ERN','Eritrean Nakfa',15.261,'2022-07-09 02:26:41'),(43,'ETB','Ethiopian Birr',53.6693,'2022-07-09 02:26:41'),(44,'FJD','Fiji Dollar',2.2541,'2022-07-09 02:26:41'),(45,'FKP','Falkland Islands Pound',0.8478,'2022-07-09 02:26:41'),(46,'FOK','',7.4604,'2022-07-09 02:26:41'),(47,'GBP','Pound Sterling',0.8478,'2022-07-09 02:26:41'),(48,'GEL','Georgian Lari',2.962,'2022-07-09 02:26:41'),(49,'GGP','Pound Sterling',0.8478,'2022-07-09 02:26:41'),(50,'GHS','Ghanaian Cedi',8.4566,'2022-07-09 02:26:41'),(51,'GIP','Gibraltar Pound',0.8478,'2022-07-09 02:26:41'),(52,'GMD','Gambian Dalasi',54.9217,'2022-07-09 02:26:41'),(53,'GNF','Guinea Franc',8789.5216,'2022-07-09 02:26:41'),(54,'GTQ','',7.8817,'2022-07-09 02:26:41'),(55,'GYD','Guyana Dollar',211.7672,'2022-07-09 02:26:41'),(56,'HKD','Hong Kong Dollar',7.9846,'2022-07-09 02:26:41'),(57,'HNL','Honduran Lempira',25.0615,'2022-07-09 02:26:41'),(58,'HRK','Croatian Kuna',7.5345,'2022-07-09 02:26:41'),(59,'HTG','Haitian Gourde',117.5366,'2022-07-09 02:26:41'),(60,'HUF','Hungarian Forint',405.9763,'2022-07-09 02:26:41'),(61,'IDR','Indonesian Rupiah',15269.2955,'2022-07-09 02:26:41'),(62,'ILS','Israeli New Shekel',3.5467,'2022-07-09 02:26:41'),(63,'IMP','',0.8478,'2022-07-09 02:26:41'),(64,'INR','Indian Rupee',80.4055,'2022-07-09 02:26:41'),(65,'IQD','Iraqi Dinar',1476.8153,'2022-07-09 02:26:41'),(66,'IRR','Iranian Rial',42914.8993,'2022-07-09 02:26:41'),(67,'ISK','Iceland Krona',138.7989,'2022-07-09 02:26:41'),(68,'JEP','',0.8478,'2022-07-09 02:26:41'),(69,'JMD','Jamaican Dollar',154.2187,'2022-07-09 02:26:41'),(70,'JOD','Jordanian Dinar',0.7213,'2022-07-09 02:26:41'),(71,'JPY','Japanese Yen',138.2189,'2022-07-09 02:26:41'),(72,'KES','Kenyan Shilling',121.4145,'2022-07-09 02:26:41'),(73,'KGS','Som',81.5135,'2022-07-09 02:26:41'),(74,'KHR','Kampuchean Riel',4122.7224,'2022-07-09 02:26:41'),(75,'KID','',1.4883,'2022-07-09 02:26:41'),(76,'KMF','Comoros Franc',491.9678,'2022-07-09 02:26:41'),(77,'KRW','Korean Won',1322.0505,'2022-07-09 02:26:41'),(78,'KWD','Kuwaiti Dinar',0.3048,'2022-07-09 02:26:41'),(79,'KYD','Cayman Islands Dollar',0.8478,'2022-07-09 02:26:41'),(80,'KZT','Kazakhstan Tenge',485.0208,'2022-07-09 02:26:41'),(81,'LAK','Lao Kip',17017.2952,'2022-07-09 02:26:41'),(82,'LBP','Lebanese Pound',1533.7299,'2022-07-09 02:26:41'),(83,'LKR','Sri Lanka Rupee',362.0552,'2022-07-09 02:26:41'),(84,'LRD','Liberian Dollar',155.3487,'2022-07-09 02:26:41'),(85,'LSL','Lesotho Loti',17.029,'2022-07-09 02:26:41'),(86,'LYD','Libyan Dinar',4.8942,'2022-07-09 02:26:41'),(87,'MAD','Moroccan Dirham',10.0339,'2022-07-09 02:26:41'),(88,'MDL','Moldovan Leu',19.6018,'2022-07-09 02:26:41'),(89,'MGA','',4154.4206,'2022-07-09 02:26:41'),(90,'MKD','Denar',61.6495,'2022-07-09 02:26:41'),(91,'MMK','Myanmar Kyat',1866.1077,'2022-07-09 02:26:41'),(92,'MNT','Mongolian Tugrik',3180.069,'2022-07-09 02:26:41'),(93,'MOP','Macau Pataca',8.224,'2022-07-09 02:26:41'),(94,'MRU','',36.9435,'2022-07-09 02:26:41'),(95,'MUR','Mauritius Rupee',45.9168,'2022-07-09 02:26:41'),(96,'MVR','Maldive Rufiyaa',15.7512,'2022-07-09 02:26:41'),(97,'MWK','Malawi Kwacha',1056.1244,'2022-07-09 02:26:41'),(98,'MXN','Mexican Nuevo Peso',20.8986,'2022-07-09 02:26:41'),(99,'MYR','Malaysian Ringgit',4.5008,'2022-07-09 02:26:41'),(100,'MZN','Mozambique Metical',65.1085,'2022-07-09 02:26:41'),(101,'NAD','Namibian Dollar',17.029,'2022-07-09 02:26:41'),(102,'NGN','Nigerian Naira',432.4554,'2022-07-09 02:26:41'),(103,'NIO','Nicaraguan Cordoba Oro',36.5924,'2022-07-09 02:26:41'),(104,'NOK','Norwegian Krone',10.2658,'2022-07-09 02:26:41'),(105,'NPR','Nepalese Rupee',128.6437,'2022-07-09 02:26:41'),(106,'NZD','New Zealand Dollar',1.6471,'2022-07-09 02:26:41'),(107,'OMR','Omani Rial',0.3912,'2022-07-09 02:26:41'),(108,'PAB','Panamanian Balboa',1.0174,'2022-07-09 02:26:41'),(109,'PEN','Peruvian Nuevo Sol',3.9583,'2022-07-09 02:26:41'),(110,'PGK','Papua New Guinea Kina',3.5934,'2022-07-09 02:26:41'),(111,'PHP','Philippine Peso',56.8084,'2022-07-09 02:26:42'),(112,'PKR','Pakistan Rupee',211.214,'2022-07-09 02:26:42'),(113,'PLN','Polish Zloty',4.7766,'2022-07-09 02:26:42'),(114,'PYG','Paraguay Guarani',7045.5426,'2022-07-09 02:26:42'),(115,'QAR','Qatari Rial',3.7033,'2022-07-09 02:26:42'),(116,'RON','Romanian New Leu',4.942,'2022-07-09 02:26:42'),(117,'RSD','Dinar',117.3832,'2022-07-09 02:26:42'),(118,'RUB','Russian Ruble',63.9688,'2022-07-09 02:26:42'),(119,'RWF','Rwanda Franc',1086.1181,'2022-07-09 02:26:42'),(120,'SAR','Saudi Riyal',3.8152,'2022-07-09 02:26:42'),(121,'SBD','Solomon Islands Dollar',8.163,'2022-07-09 02:26:42'),(122,'SCR','Seychelles Rupee',13.2933,'2022-07-09 02:26:42'),(123,'SDG','Sudanese Pound',497.1851,'2022-07-09 02:26:42'),(124,'SEK','Swedish Krona',10.7117,'2022-07-09 02:26:42'),(125,'SGD','Singapore Dollar',1.425,'2022-07-09 02:26:42'),(126,'SHP','St. Helena Pound',0.8478,'2022-07-09 02:26:42'),(127,'SLL','Sierra Leone Leone',13386.3504,'2022-07-09 02:26:42'),(128,'SOS','Somali Shilling',584.375,'2022-07-09 02:26:42'),(129,'SRD','Surinam Dollar',22.5932,'2022-07-09 02:26:42'),(130,'SSP','South Sudan Pound',509.8819,'2022-07-09 02:26:42'),(131,'STN','',24.5,'2022-07-09 02:26:42'),(132,'SYP','Syrian Pound',2564.2317,'2022-07-09 02:26:42'),(133,'SZL','Swaziland Lilangeni',17.029,'2022-07-09 02:26:42'),(134,'THB','Thai Baht',36.7239,'2022-07-09 02:26:42'),(135,'TJS','Tajik Somoni',11.0308,'2022-07-09 02:26:42'),(136,'TMT','Manat',3.5679,'2022-07-09 02:26:42'),(137,'TND','Tunisian Dollar',2.9141,'2022-07-09 02:26:42'),(138,'TOP','Tongan Pa\'anga',2.3779,'2022-07-09 02:26:42'),(139,'TRY','Turkish Lira',17.5556,'2022-07-09 02:26:42'),(140,'TTD','Trinidad and Tobago Dollar',7.2869,'2022-07-09 02:26:42'),(141,'TVD','',1.4883,'2022-07-09 02:26:42'),(142,'TWD','Taiwan Dollar',30.2025,'2022-07-09 02:26:42'),(143,'TZS','Tanzanian Shilling',2377.2659,'2022-07-09 02:26:42'),(144,'UAH','Ukraine Hryvnia',30.8952,'2022-07-09 02:26:42'),(145,'UGX','Uganda Shilling',3827.8214,'2022-07-09 02:26:42'),(146,'USD','US Dollar',1.0175,'2022-07-09 02:26:42'),(147,'UYU','Uruguayan Peso',40.8443,'2022-07-09 02:26:42'),(148,'UZS','Uzbekistan Sum',11034.508,'2022-07-09 02:26:42'),(149,'VES','',5.6587,'2022-07-09 02:26:42'),(150,'VND','Vietnamese Dong',23680.042,'2022-07-09 02:26:42'),(151,'VUV','Vanuatu Vatu',120.9545,'2022-07-09 02:26:42'),(152,'WST','Samoan Tala',2.7338,'2022-07-09 02:26:42'),(153,'XAF','CFA Franc BEAC',655.957,'2022-07-09 02:26:42'),(154,'XCD','East Caribbean Dollar',2.747,'2022-07-09 02:26:42'),(155,'XDR','',0.7721,'2022-07-09 02:26:42'),(156,'XOF','CFA Franc BCEAO',655.957,'2022-07-09 02:26:42'),(157,'XPF','CFP Franc',119.332,'2022-07-09 02:26:42'),(158,'YER','Yemeni Rial',255.3939,'2022-07-09 02:26:42'),(159,'ZAR','South African Rand',17.0277,'2022-07-09 02:26:42'),(160,'ZMW','Zambian Kwacha',16.7367,'2022-07-09 02:26:42'),(161,'ZWL','',388.2796,'2022-07-09 02:26:42');
/*!40000 ALTER TABLE `owl_curency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owl_user`
--

DROP TABLE IF EXISTS `owl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owl_user`
--

LOCK TABLES `owl_user` WRITE;
/*!40000 ALTER TABLE `owl_user` DISABLE KEYS */;
INSERT INTO `owl_user` (`id`, `username`, `password`, `create_date`) VALUES (1,'owlcats','512f7227d727b076e4a13e61021ce51c','2022-07-09 00:56:43');
/*!40000 ALTER TABLE `owl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`id`, `code`, `name`) VALUES (1,'KD01','TEST'),(2,'KD02','TEST2');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'owlj6868_trial'
--

--
-- Dumping routines for database 'owlj6868_trial'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-11 13:17:42
