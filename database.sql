CREATE DATABASE  IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `database`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: database.c8evkvalvqst.us-east-2.rds.amazonaws.com    Database: database
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item-codes`
--

DROP TABLE IF EXISTS `item-codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item-codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `CAS` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item-codes`
--

LOCK TABLES `item-codes` WRITE;
/*!40000 ALTER TABLE `item-codes` DISABLE KEYS */;
INSERT INTO `item-codes` VALUES (1,1,'5e45630a4e70d9.25044219','null',0),(2,2,'5e456546eae8c5.46889708','null',0),(3,3,'5e4566c0cdb849.17974435','null',0),(4,4,'5e46242bbfdf81.30671293','',0),(5,5,'5e48cfef42f9c0.99896775','null',0);
/*!40000 ALTER TABLE `item-codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item-metadata`
--

DROP TABLE IF EXISTS `item-metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item-metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `title` mediumtext NOT NULL,
  `data_of_industry` mediumtext NOT NULL,
  `location_focus` varchar(80) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `data_rating` int(11) NOT NULL,
  `price` float NOT NULL,
  `currency` varchar(20) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `code_index` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item-metadata`
--

LOCK TABLES `item-metadata` WRITE;
/*!40000 ALTER TABLE `item-metadata` DISABLE KEYS */;
INSERT INTO `item-metadata` VALUES (1,1,'test upload','test upload','Logistics','Unfocused','test upload:test upload',0,1,'USD',1,1,'5e45630a4e70d9.25044219','2020-02-13'),(2,2,'first upload','first upload','Logistics','Unfocused','upload:upload',0,1,'USD',1,2,'5e456546eae8c5.46889708','2020-02-13'),(3,3,'upload from zilopi','upload from zilopi','Logistics','Unfocused','upload:zilopi:upload:zilopi',0,1,'USD',1,3,'5e4566c0cdb849.17974435','2020-02-13'),(4,4,'Market share of H2SO4 in US','H2So4','Chemical','USA','h2so4:market share:h2so4',0,1,'USD',1,4,'5e46242bbfdf81.30671293','2020-02-14'),(5,5,'Logistics cost, driver cost, fuel cost, fixed cost','Logistics cost data in EUROPE','Logistics','Unfocused','logistics cost data:europe:logistics cost:driver cost:fuel cost:fixed cost',0,14,'USD',1,5,'5e48cfef42f9c0.99896775','2020-02-16');
/*!40000 ALTER TABLE `item-metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner-account`
--

DROP TABLE IF EXISTS `partner-account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner-account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `phone` bigint(20) NOT NULL,
  `country` varchar(80) NOT NULL,
  `industry` varchar(200) NOT NULL,
  `linkedin` mediumtext NOT NULL,
  `rating` int(11) NOT NULL,
  `about` mediumtext NOT NULL,
  `experience` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner-account`
--

LOCK TABLES `partner-account` WRITE;
/*!40000 ALTER TABLE `partner-account` DISABLE KEYS */;
INSERT INTO `partner-account` VALUES (1,'Atul','Vinod','atulvinod1911@gmail.com','atulvinod',7889771639,'India','Agriculture','url to linked',0,'hjhjhun uuij jhj jhÂ  m,xcv',0),(2,'Akhil','Vinod','akhilvinod1911@gmail.com','password',9419004939,'India','CS','CS',0,'Nothing to worry about',1),(3,'Test Partner','Test','test@example.com','test',9419004939,'India','url','test',0,'After hours got me charged',2),(4,'test ','2','test2@example.com','test',9419004939,'Argentina','sdf','ind',0,'er',2),(5,'test','test','testindus@example.com','test',7889771639,'India','sdf','sdf<> sdfgsdg',0,'rw',3),(6,'test2','test2','test2ind@example.com','test',3234,'India','linked','test1<> test2',0,'sd',3),(7,'test3','test3','test3@example.com','test',34,'India','test1<> test2<> test3','url',0,'something about me that is edited?',3);
/*!40000 ALTER TABLE `partner-account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner-uploads`
--

DROP TABLE IF EXISTS `partner-uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner-uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `information_type` varchar(80) NOT NULL,
  `mime` varchar(30) NOT NULL,
  `downloads` mediumint(9) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner-uploads`
--

LOCK TABLES `partner-uploads` WRITE;
/*!40000 ALTER TABLE `partner-uploads` DISABLE KEYS */;
INSERT INTO `partner-uploads` VALUES (1,1,'5e45630a4e70d9.25044219','None','image/jpeg',0,'7ef2dfc912d7c6519c4990a67187.26952931'),(2,1,'5e456546eae8c5.46889708','None','image/jpeg',0,'7ef2dfc912d7c6519c4990a6e951.99609331'),(3,1,'5e4566c0cdb849.17974435','None','image/jpeg',0,'7ef2dfc912d7c6519c4990a6b9b5.67777640'),(4,1,'5e46242bbfdf81.30671293','Market Share','application/octet-stream',0,'edad2f960462aaff4bbc40b6e027.55061826'),(5,1,'5e48cfef42f9c0.99896775','Cost Price','application/octet-stream',0,'d8d04d188f59e9e97396dce9fa67.64582585');
/*!40000 ALTER TABLE `partner-uploads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 14:10:30
