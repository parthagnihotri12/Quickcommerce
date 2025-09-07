CREATE DATABASE  IF NOT EXISTS `quickcom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `quickcom`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: quickcom
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `emailid` varchar(100) NOT NULL,
  `mobileno` varchar(12) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `picture` text,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emailid`,`mobileno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('dpal34036@gmail.com','9165043030','deepesh','1.jpg','deepesh123');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adoffers`
--

DROP TABLE IF EXISTS `adoffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adoffers` (
  `adofferid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productdetailid` int(11) DEFAULT NULL,
  `filenames` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` text,
  PRIMARY KEY (`adofferid`),
  KEY `ao_cid_fk_idx` (`categoryid`),
  KEY `ao_scid_idx` (`subcategoryid`),
  KEY `ao_bid_fk_idx` (`brandid`),
  KEY `ao_pid_fk_idx` (`productid`),
  KEY `ao_pdid_fk_idx` (`productdetailid`),
  CONSTRAINT `ao_bid_fk` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`) ON DELETE CASCADE,
  CONSTRAINT `ao_cid_fk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `ao_pdid_fk` FOREIGN KEY (`productdetailid`) REFERENCES `productdetail` (`productdetailid`) ON DELETE CASCADE,
  CONSTRAINT `ao_pid_fk` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE,
  CONSTRAINT `ao_scid` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoffers`
--

LOCK TABLES `adoffers` WRITE;
/*!40000 ALTER TABLE `adoffers` DISABLE KEYS */;
INSERT INTO `adoffers` VALUES (19,17,38,15,7,11,'e89fd726-1053-492b-9637-3d7d6b6cd2de.png','2024-12-25 17:13:59','2024-12-25 17:13:59','Frazi'),(20,17,39,17,6,10,'3dde0bf3-251d-411f-8df1-d07ca0a4e25d.png','2024-12-25 17:15:55','2024-12-25 17:15:55','Frazi'),(21,17,37,11,11,6,'87f7fa4e-e523-449f-91a9-2a09d11fd793.png','2024-12-25 17:16:19','2024-12-25 17:16:19','Frazi'),(22,17,38,15,7,12,'e9fc7f65-ac3c-443b-ae58-b9642344288f.png','2024-12-25 17:17:49','2024-12-25 17:17:49','Frazi'),(23,17,38,15,7,12,'73c4a373-9150-4b78-8308-fd330caaf2e6.png','2024-12-25 17:18:42','2024-12-25 17:18:42','Frazi'),(24,17,38,15,7,11,'5f0d5217-982d-43d2-a1aa-3a5885d064ce.png','2024-12-25 17:19:23','2024-12-25 17:19:23','Frazi'),(25,17,39,18,10,8,'73f62a2b-2f56-45d2-afdb-4063803178df.png','2024-12-25 18:03:52','2024-12-25 18:03:52','Frazi'),(26,17,38,15,7,11,'3410d463-6d77-44f3-929e-0c0aaffe1c45.png','2024-12-25 18:05:20','2024-12-25 18:05:20','Frazi'),(27,17,38,15,7,11,'c0247415-d87c-4d9d-8beb-8e2c8be4ed24.png','2024-12-25 18:06:44','2024-12-25 18:06:44','Frazi'),(28,17,39,18,10,8,'2c401014-91f2-4e2e-acc5-0c2f01600394.png','2024-12-25 18:07:17','2024-12-25 18:07:17','Frazi'),(29,17,37,11,11,6,'2d0079b4-29a0-4dd3-8d05-7b01212698a2.png','2024-12-25 18:10:30','2024-12-25 18:10:30','Frazi'),(30,17,37,11,11,6,'0528ca70-3fb3-42a5-a23a-d7f6a81bcd8e.png','2024-12-25 18:11:49','2024-12-25 18:11:49','Frazi'),(31,17,37,11,11,6,'a8a12a3e-165c-4ea6-bed6-d4824f7c01b3.png','2024-12-25 18:18:08','2024-12-25 18:18:08','Frazi'),(32,17,38,15,7,9,'647b309d-502d-4ada-8618-2303ba696d9e.png','2024-12-25 18:19:06','2024-12-25 18:19:06','Frazi');
/*!40000 ALTER TABLE `adoffers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankandotheroffer`
--

DROP TABLE IF EXISTS `bankandotheroffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bankandotheroffer` (
  `bankofferid` int(11) NOT NULL AUTO_INCREMENT,
  `status` text,
  `filenames` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` text,
  PRIMARY KEY (`bankofferid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankandotheroffer`
--

LOCK TABLES `bankandotheroffer` WRITE;
/*!40000 ALTER TABLE `bankandotheroffer` DISABLE KEYS */;
INSERT INTO `bankandotheroffer` VALUES (13,'show','6939b463-504d-42db-8dc3-6455fefcfba4.webp','2024-12-25 12:47:05','2024-12-25 12:47:05','Frazi'),(14,'show','cdc802d0-2424-40fc-8628-9d1f29b44483.jpg','2024-12-25 16:35:37','2024-12-25 16:35:37','Frazi'),(15,'show','484dae27-14ca-4c1f-9d74-510d3d463fbc.webp','2024-12-25 16:36:00','2024-12-25 16:36:00','Frazi'),(16,'show','cb64cdf8-5e40-4c25-a9aa-2447ef74bcbe.webp','2024-12-25 16:37:18','2024-12-25 16:37:18','Frazi'),(17,'show','6535d371-e4ac-44d4-9868-b79a5f2c0801.webp','2024-12-25 16:37:44','2024-12-25 16:37:44','Frazi'),(18,'show','805dfa2f-a7c6-4a79-9845-4c3175d21b80.webp','2024-12-25 16:38:10','2024-12-25 16:38:10','Frazi'),(19,'show','79862418-ece8-49bd-b406-11e9cb77f301.webp','2024-12-25 16:57:44','2024-12-25 16:57:44','Frazi'),(20,'show','53aa6ca2-be8c-4656-9e62-bfbf2be255fa.png','2024-12-25 16:58:36','2024-12-25 16:58:36','Frazi'),(21,'show','6fa6dcfa-efab-4ff1-92a6-f5c6a8491e62.webp','2024-12-25 16:59:04','2024-12-25 16:59:04','Frazi'),(22,'show','9efab313-61a4-4920-9949-90dff50a7dd6.webp','2024-12-25 16:59:23','2024-12-25 16:59:23','Frazi'),(23,'show','bf6caefa-8f59-4d14-b797-1f310a54a08a.webp','2024-12-25 17:00:20','2024-12-25 17:00:20','Frazi'),(24,'show','453123b4-9021-4e54-990d-52e2d466d665.webp','2024-12-25 18:30:19','2024-12-25 18:30:19','Frazi'),(25,'show','8fc6d990-a0b4-4281-8a2e-bbb31010e3d2.webp','2024-12-25 18:30:41','2024-12-25 18:30:41','Frazi'),(26,'show','2be3fa72-77f7-45f5-b9d6-f6076ea70c5b.png','2024-12-25 18:31:24','2024-12-25 18:31:24','Frazi'),(27,'show','13ec7845-4bfc-4a63-aaad-bd38b6c1a063.webp','2024-12-25 18:45:58','2024-12-25 18:45:58','Frazi'),(28,'show','ee691ead-a87b-40eb-827a-fdae68b9666a.webp','2024-12-25 18:46:09','2024-12-25 18:46:09','Frazi'),(29,'show','fb9b2e30-64ad-4147-a867-d49dc653cb74.png','2024-12-25 18:46:20','2024-12-25 18:46:20','Frazi'),(30,'show','19f1845d-2a16-4eb2-9205-81653eff5c15.webp','2024-12-25 18:49:48','2024-12-25 18:49:48','Frazi'),(31,'show','cdb14b48-1ed6-4e34-8478-030bc8bd5f71.jpeg','2024-12-25 18:50:13','2024-12-25 18:50:13','Frazi');
/*!40000 ALTER TABLE `bankandotheroffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `brandid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `brandicon` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brandid`),
  KEY `cat_brd_fkk_idx` (`categoryid`),
  KEY `sub_brd_fkk_idx` (`subcategoryid`),
  CONSTRAINT `cat_brd_fkk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `sub_brd_fkk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (11,17,37,'colgate','3e018370-381b-49e6-b71b-02e79dffe814.png','2024-10-19 13:34:14','2024-12-25 13:47:48','Farzi'),(12,17,37,'pepsodent','2dd7e207-7d8b-4c5a-b129-654036854a10.png','2024-10-19 13:34:57','2024-12-25 13:48:11','Farzi'),(13,17,37,'patanjali','ee7f4baa-ab82-4bbd-9a70-62ec2cf76b07.webp','2024-10-19 13:35:44','2024-12-25 13:48:48','Farzi'),(14,17,38,'amul','9bad5bec-4586-4432-aa08-0fea48482869.png','2024-10-19 13:38:28','2024-12-25 13:49:46','Farzi'),(15,17,38,'safola','2658288a-20c9-40e0-a9f4-6430e8b0da59.png','2024-10-19 13:39:27','2024-12-25 13:50:19','Farzi'),(16,17,38,'Mother dairy','70a57cbc-b1c4-4ff2-8c2d-d060a48400fc.png','2024-10-19 13:42:02','2024-12-25 13:50:39','Farzi'),(17,17,39,'Parle','2c6dbdec-2c69-45b9-80be-b13f61180642.png','2024-10-19 14:25:49','2024-12-25 13:51:10','Farzi'),(18,17,39,'Britania','5ce7f99f-fed3-41df-b728-85300a1fe006.png','2024-10-19 14:26:44','2024-12-25 13:51:23','Farzi'),(19,16,33,'Apsara','ecbef8b4-6ee6-4178-8ff5-3494009e646a.png','2024-10-19 16:24:41','2024-12-25 13:51:47','Farzi'),(20,16,32,'classmate','87bc2021-2c13-4c35-8df3-048ed0a27704.webp','2024-10-19 16:26:41','2024-10-19 16:26:41','Farzi'),(21,16,34,'natraj','7dc4a339-d9ae-4ffe-8fcb-ca8047d83197.jpg','2024-10-19 16:27:22','2024-10-19 16:27:22','Farzi'),(22,13,26,'oppo','1d2a1ab6-2fe7-48c7-872c-430cad3a4605.png','2024-11-18 13:32:37','2024-11-18 13:32:37','Farzi');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brands` (
  `brandid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `brandicon` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brandid`),
  KEY `categoryid_idx` (`categoryid`),
  KEY `subcategoryid_idx` (`subcategoryid`),
  CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `subcategoryid` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (7,NULL,NULL,'pepsi','7b61615d-30b7-4306-a504-cb5331bfc4e9.jpg','2024-08-05 07:07:05','2024-08-05 07:07:05','Farzi'),(8,NULL,NULL,'mc dowells','73bc3a31-0bfc-4d76-a691-46953c285750.jpg','2024-08-05 07:07:33','2024-08-05 07:07:33','Farzi'),(9,NULL,NULL,'maaza','ff3a85b6-718e-41fb-a1cd-51bf4367253c.jpg','2024-08-05 07:07:50','2024-08-06 15:00:24','farzi'),(10,NULL,NULL,'claptop','91027a2c-f651-4f22-be3c-0b92c540ac3d.jpg','2024-08-05 07:08:36','2024-08-05 07:08:36','Farzi'),(11,NULL,NULL,'hsoinw','7ed8d7eb-eff3-49e1-83bd-7ae85cf4184d.jpg','2024-08-05 15:37:01','2024-08-06 14:58:46','farzi'),(12,NULL,NULL,'hibiati','0576c7fa-7724-4ced-b06a-703348338c61.webp','2024-08-05 16:34:04','2024-08-05 16:34:04','Farzi'),(13,NULL,NULL,'jbjn','68c256de-663e-4cf0-b507-0ab6688f77fd.jpg','2024-08-06 07:49:10','2024-08-06 07:49:10','Farzi'),(14,NULL,NULL,'gwuw','a7d1ab08-beec-43c2-999f-23907cefccb8.jpg','2024-08-06 14:12:43','2024-08-06 14:12:43','Farzi');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) DEFAULT NULL,
  `categoryicon` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (12,'medical','4aab6ce3-09bd-4664-a35a-72fd158f12e2.png','2024-08-03 20:51:11','2024-12-25 13:46:58','Farzi'),(13,'electronics','93ecb80f-e31b-46b9-ba88-4ae5adceaff5.png','2024-08-12 15:22:16','2024-09-27 20:53:14','Farzi'),(15,'Toys','628e5721-d3bc-4d9b-a750-81ac79ae4fad.png','2024-09-23 18:49:30','2024-09-23 18:49:30','Farzi'),(16,'study material','e581336d-c469-4253-b044-252923f21bf6.png','2024-09-23 18:50:35','2024-09-23 18:50:35','Farzi'),(17,'groceries','51e700be-e175-41aa-93e1-2b2ec0fd3939.png','2024-10-14 11:34:32','2024-10-14 11:34:32','Farzi'),(18,'lifestyle','2e1756dd-e726-41a2-a0b4-9befd6e2d1aa.png','2024-10-14 11:36:18','2024-10-14 11:36:18','Farzi'),(19,'Fashion','537bf6ba-ba20-45f9-b4a7-8b6df1af9365.png','2024-10-14 11:37:59','2024-10-14 11:37:59','Farzi'),(20,'animals product','0d8051ee-6f91-4401-b6a6-41c0ca936e5e.webp','2024-11-12 15:17:32','2024-11-12 15:17:32','Farzi');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainbanner`
--

DROP TABLE IF EXISTS `mainbanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mainbanner` (
  `bannerid` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `filenames` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` text,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainbanner`
--

LOCK TABLES `mainbanner` WRITE;
/*!40000 ALTER TABLE `mainbanner` DISABLE KEYS */;
INSERT INTO `mainbanner` VALUES (22,'show','bf2011ee-fe5e-4ed9-b6b9-d0beaa02624f.jpeg','2024-12-26 13:14:14','2024-12-26 13:14:14','Frazi'),(23,'show','4c44db32-34c1-4a61-9794-16afb6ae1008.jpeg','2024-12-26 13:14:28','2024-12-26 13:14:28','Frazi'),(24,'show','663e9a03-fb12-4a8e-b9b3-f2763f889489.jpeg','2024-12-26 13:14:41','2024-12-26 13:14:41','Frazi'),(25,'show','0289b128-8973-4f31-ba53-72586b823e34.jpeg','2024-12-26 13:14:54','2024-12-26 13:14:54','Frazi'),(26,'show','072a55ea-3067-4d01-9c56-37c1a6360fc2.jpeg','2024-12-26 13:15:08','2024-12-26 13:15:08','Frazi');
/*!40000 ALTER TABLE `mainbanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `productdescription` text,
  `picture` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `cat_sc_fkkk_idx` (`subcategoryid`),
  KEY `cat_prd_fkkk_idx` (`categoryid`),
  KEY `brd_cat_fkkk_idx` (`brandid`),
  CONSTRAINT `brd_cat_fkkk` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`) ON DELETE CASCADE,
  CONSTRAINT `cat_prd_fkkk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `cat_sc_fkkk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,17,39,17,'parle G','parle G 5 rupee','fc1dd334-b1ca-495f-9068-b8dfbc880cde.png','2024-10-19 15:41:53','2024-12-25 13:52:36','Farzi'),(7,17,38,15,'safola gold','safola gold oil','f84ade40-d058-4879-8e70-b2016ef9811b.webp','2024-10-19 15:42:32','2024-12-25 13:52:51','Farzi'),(8,16,32,20,'classmate notebook','classmate blank page notebook','f363f396-c91f-4c7a-b414-7726f71bc594.png','2024-10-19 16:29:28','2024-12-25 13:53:26','Farzi'),(9,16,33,19,'pencil','pencil color','f89a2fab-79e1-43c4-809b-d920aaaa0026.png','2024-10-19 16:31:26','2024-12-25 13:53:41','Farzi'),(10,17,39,18,'goodday','goodday','f60261be-2d2f-459a-a720-1df93475c348.png','2024-10-19 19:49:54','2024-12-25 13:54:12','Farzi'),(11,17,37,11,'colgate max fresh','extra tajgi','1ebd1808-9ca0-436d-976f-36e858efa729.png','2024-11-14 15:50:02','2024-11-14 15:50:02','Farzi'),(12,13,26,22,'oppo a3s','moon light camera','cfa9cde2-01aa-461a-bf91-8b33c2219dd7.jpg','2024-11-18 13:33:11','2024-11-18 13:33:11','Farzi');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetail`
--

DROP TABLE IF EXISTS `productdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productdetail` (
  `productdetailid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productdetailname` text,
  `weight` int(11) DEFAULT NULL,
  `weighttype` varchar(45) DEFAULT NULL,
  `packagingtype` varchar(45) DEFAULT NULL,
  `noofqty` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `offerprice` decimal(12,2) DEFAULT NULL,
  `offertype` varchar(45) DEFAULT NULL,
  `productstatus` varchar(45) DEFAULT NULL,
  `productdetaildescription` text,
  `picture` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productdetailid`),
  KEY `pd_cid_fk_idx` (`categoryid`),
  KEY `pd_scid_fk_idx` (`subcategoryid`),
  KEY `pd_brd_fk_idx` (`brandid`),
  KEY `pd_pr_fk_idx` (`productid`),
  CONSTRAINT `pd_brd_fk` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`) ON DELETE CASCADE,
  CONSTRAINT `pd_cid_fk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `pd_pr_fk` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE,
  CONSTRAINT `pd_scid_fk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetail`
--

LOCK TABLES `productdetail` WRITE;
/*!40000 ALTER TABLE `productdetail` DISABLE KEYS */;
INSERT INTO `productdetail` VALUES (4,17,38,15,7,'safola gold 50 gram',50,'gm','plasticbag',7,7878,28.00,20.00,'Diwali Sale','Popular','<p>good better best</p>','4c8acab4-4c12-45ca-85fb-30acd41736c4.webp','2024-10-19 15:57:13','2024-12-25 16:28:51','Farzi'),(5,17,39,17,6,'parle 100 gm',100,'gm','plasticbag',1,10,40.00,10.00,'Dashera Sale','Trending','<p>good to go</p>','da9708fd-3359-42e0-84d7-8a41540ac6d1.webp','2024-11-14 15:46:33','2024-12-25 16:29:31','Farzi'),(6,17,37,11,11,'colgate 100 gm',100,'gm','paper',9,98,223.00,200.00,'NewYear Sale','Trending','<p>refresh product</p>','ec43101b-cad6-44b6-a66b-35c16a5558aa.png','2024-11-14 15:53:29','2024-12-25 16:29:57','Farzi'),(7,13,26,22,12,'nss ks selfie camera',180,'gm','paper',1,2,10000.00,9999.00,'Dashera Sale','Popular','<p>good keep it up</p>','ee4a8a38-cb8f-4e0b-a61c-69e1d55819a4.png','2024-11-18 13:35:54','2024-12-25 16:30:39','Farzi'),(8,17,39,18,10,'good day dry fruit',90,'gm','plastic',2,1,25.00,20.00,'NewYear Sale','Popular','<p>good product for kids mens and old age people must try</p>','e0aed185-6441-4865-9c60-75056328336d.webp','2024-12-19 13:48:29','2024-12-25 16:30:23','Farzi'),(9,17,38,15,7,'safola gold vitamin oil',12,'kg','plasticbag',12,2,100.00,75.00,'NewYear Sale','Popular','<p>good for heart patient and obtain from natural resources  100 percent pure oil</p>','6b19cb8f-ce18-4039-b4ac-db824d96647d.webp','2024-12-19 13:54:58','2024-12-25 16:32:16','Farzi'),(10,17,39,17,6,'parle G lite',10,'gm','paper',44,22,99.00,89.00,'NewYear Sale','Popular','<p>lite for  lite peoples easily carry in bags</p>','c10dce00-d442-4498-aef5-a1fe4131ffe5.png','2024-12-19 13:56:54','2024-12-25 16:32:30','Farzi'),(11,17,39,15,7,'Saffola Gold Rice Bran Based Blended Oil ',1,'l','Polyethylene',1,11,140.00,120.00,'Dashera Sale','Trending','<p><strong>Features &amp; Details</strong></p><ul><li>Hygienically packed</li><li>Consistent in taste and aroma</li><li>Supreme quality</li></ul><p><strong>Description</strong></p><p>Saffola Gold Rice Bran Based Blended Oil have a higher smoke point compared to the oils that it is a combination of, making them perfect for all types of cooking. Choose Saffola Gold Rice Bran Based Blended Oil which partners your journey for a healthy lifestyle. Buy Saffola Gold Rice Bran Based Blended Oil online now!</p><p><strong>Product Information</strong></p><p>General InformationBrandSaffolaManufacturerMarico Ltd.Manufacturer AddressMarico Ltd.</p><p>S Ameya Inc. Koundi Baddi, Dist. Solan H.P-173205</p><p>Manufacturer Emailcsc@marico.comManufacturer Websitewww.marico.com</p>','9b1eef66-f38d-47dd-bb2a-41ab7d30bf62.png','2024-12-22 20:46:52','2024-12-25 16:32:44','Farzi'),(12,17,38,15,7,'Saffola Gold  Bran Based Blended  petrol',1,'l','Polyethylene',1,11,140.00,120.00,'Dashera Sale','Trending','<p><strong>Features &amp; Details</strong><span class=\"ql-cursor\">﻿</span></p><ul><li>Hygienically packed</li><li>Consistent in taste and aroma</li><li>Supreme quality</li></ul><p><strong>Description</strong></p><p>Saffola Gold Rice Bran Based Blended Oil have a higher smoke point compared to the oils that it is a combination of, making them perfect for all types of cooking. Choose Saffola Gold Rice Bran Based Blended Oil which partners your journey for a healthy lifestyle. Buy Saffola Gold Rice Bran Based Blended Oil online now!</p><p><strong>Disclaimer:</strong></p><p>Despite our attempts to provide you with the most accurate information possible, the actual packaging, ingredients and colour of the product may sometimes vary. Please read the label, directions and warnings carefully before use.</p><p><strong>Product Information</strong></p><p>General InformationBrandSaffolaManufacturerMarico Ltd.Manufacturer AddressMarico Ltd.</p><p>S Ameya Inc. Koundi Baddi, Dist. Solan H.P-173205</p><p>Manufacturer Emailcsc@marico.comManufacturer Websitewww.marico.com</p>','8c1111a9-b295-470c-b92f-a5b701c427f5.jpg','2024-12-22 21:40:37','2024-12-25 16:34:01','Farzi'),(13,17,39,17,6,'Saffola Gold Rice Bran Based Blended Oil 3 L',10,'gm','paper',44,22,99.00,89.00,'NewYear Sale','Popular','<p><strong>Features &amp; Details</strong><span class=\"ql-cursor\">﻿</span></p><ul><li>Hygienically packed</li><li>Consistent in taste and aroma</li><li>Supreme quality</li></ul><p><strong>Description</strong></p><p>Saffola Gold Rice Bran Based Blended Oil have a higher smoke point compared to the oils that it is a combination of, making them perfect for all types of cooking. Choose Saffola Gold Rice Bran Based Blended Oil which partners your journey for a healthy lifestyle. Buy Saffola Gold Rice Bran Based Blended Oil online now!</p><p><strong>Disclaimer:</strong></p><p>Despite our attempts to provide you with the most accurate information possible, the actual packaging, ingredients and colour of the product may sometimes vary. Please read the label, directions and warnings carefully before use.</p><p><strong>Product Information</strong></p><p>General InformationBrandSaffolaManufacturerMarico Ltd.Manufacturer AddressMarico Ltd.</p><p>S Ameya Inc. Koundi Baddi, Dist. Solan H.P-173205</p><p>Manufacturer Emailcsc@marico.comManufacturer Websitewww.marico.com</p>','a191a531-9bde-4896-b6c6-8dbb7e690916.webp','2024-12-22 21:44:45','2024-12-25 16:32:59','Farzi');
/*!40000 ALTER TABLE `productdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetails`
--

DROP TABLE IF EXISTS `productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productdetails` (
  `productdetailid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productdetailname` text,
  `weight` int(11) DEFAULT NULL,
  `weighttype` varchar(45) DEFAULT NULL,
  `packagingtype` varchar(45) DEFAULT NULL,
  `noofqty` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `offerprice` int(11) DEFAULT NULL,
  `offertype` varchar(45) DEFAULT NULL,
  `productstatus` text,
  `productdetaildescription` text,
  `picture` text,
  PRIMARY KEY (`productdetailid`),
  KEY `cat_cid_fk_idx` (`categoryid`),
  KEY `scat_sid_fk_idx` (`subcategoryid`),
  KEY `br_bid_fk_idx` (`brandid`),
  KEY `prd_pid_fk_idx` (`productid`),
  CONSTRAINT `br_bid_fk` FOREIGN KEY (`brandid`) REFERENCES `brands` (`brandid`) ON DELETE CASCADE,
  CONSTRAINT `cat_cid_fk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `prd_pid_fk` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`) ON DELETE CASCADE,
  CONSTRAINT `scat_sid_fk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetails`
--

LOCK TABLES `productdetails` WRITE;
/*!40000 ALTER TABLE `productdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productpictures`
--

DROP TABLE IF EXISTS `productpictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productpictures` (
  `productpictureid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `productdetailid` int(11) DEFAULT NULL,
  `filenames` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` text,
  PRIMARY KEY (`productpictureid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productpictures`
--

LOCK TABLES `productpictures` WRITE;
/*!40000 ALTER TABLE `productpictures` DISABLE KEYS */;
INSERT INTO `productpictures` VALUES (1,12,19,3,1,3,'d87cc84c-84a6-4ca3-be3e-eb9161c4a96d.webp,02acf803-5e24-4b37-a12b-9a52134b633a.png,bfed2ddc-3fb3-4a84-9b42-a481439fbdc3.png','2024-08-20 10:00:55','2024-08-20 10:00:55','Farzi'),(2,12,19,3,1,3,'b54dded4-3139-43f9-b975-d7955a7b11dc.webp,d44a06b6-6e8c-44b1-82e1-fa3531de0a8b.png,2b94d789-dfc3-448b-89a0-fd47cdece892.png','2024-08-20 10:24:57','2024-08-20 10:24:57','Farzi'),(3,10,13,1,3,1,'175eec5a-b32e-40e1-b898-b5a3974138e8.png,f7957f6f-e706-44a2-9859-e526272dfd2e.png,8226403e-9515-4f07-9755-87246f4eae74.png,50aba7bd-cc48-44a9-bad4-c0c956caa847.png,2e29efdc-dd3c-497f-acee-224a8a0afc28.png','2024-08-20 10:25:56','2024-08-20 10:25:56','Farzi'),(4,17,39,17,6,5,'c0c73019-f697-44a9-ade9-8300b4a33070.jpg,0b7fac2b-3155-48bd-af44-4e865dcba877.png,583c26a6-cd13-4bd7-8257-aee4a599b890.png,05a81860-9107-4f26-bf8d-51c5efe15d29.png,4719cb7b-490b-43a9-8070-65ebba4ce92a.png','2024-11-14 15:48:21','2024-11-14 15:48:21','Farzi'),(5,17,38,15,7,4,'bd0e92d6-1800-45ad-bb66-e2c8a2f24894.png,4c0da15c-0214-4143-9eba-c091e90dbcca.png,9c5f5efc-184d-4994-9d0a-ed5c0e3dda89.png,b0ac2881-8e4e-492d-bda0-c2cc7345a033.png','2024-11-14 15:49:11','2024-11-14 15:49:11','Farzi'),(6,17,37,11,11,6,'d0664fe5-f92d-42ed-982e-b00524224867.png,570b20cb-b3f9-47d4-b059-9c2587d2c701.png,fe44ec5a-4c55-449c-be2c-653b7c3b96af.png,73a93871-24eb-4802-b694-61ddadff623c.png','2024-11-14 15:54:02','2024-11-14 15:54:02','Farzi');
/*!40000 ALTER TABLE `productpictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `productdescription` text,
  `picture` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `cat_prd_fk_idx` (`categoryid`),
  KEY `cat_sc_fk_idx` (`subcategoryid`),
  KEY `cat_brd_fk_idx` (`brandid`),
  CONSTRAINT `cat_brd_fk` FOREIGN KEY (`brandid`) REFERENCES `brands` (`brandid`) ON DELETE CASCADE,
  CONSTRAINT `cat_prd_fk` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE,
  CONSTRAINT `cat_sc_fk` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subcategory` (
  `subcategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryname` text,
  `subcategoryicon` text,
  `createat` datetime DEFAULT NULL,
  `updateat` datetime DEFAULT NULL,
  `adminid` int(11) DEFAULT NULL,
  PRIMARY KEY (`subcategoryid`),
  KEY `fk_catid_idx` (`categoryid`),
  CONSTRAINT `fk_catid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (22,19,'men','a02e1cf2-e067-43f2-bdea-9fa589f534bd.png','2024-10-14 11:57:36','2024-12-25 13:39:33',321),(23,19,'women','eeee923b-a4ef-4477-8702-df15207772b1.png','2024-10-14 11:58:32','2024-10-14 11:58:32',420),(24,19,'Kids ','53a4f850-5dfd-4e77-9f94-17125498c55e.png','2024-10-14 11:59:15','2024-10-14 11:59:15',420),(25,13,'laptops','00516ba9-cb43-4aa8-959d-1bd481f24ac4.png','2024-10-14 12:04:05','2024-10-14 12:04:05',420),(26,13,'mobile','e739e734-c440-4aa2-84ae-f4a0590297fc.png','2024-10-14 12:05:03','2024-10-14 12:05:03',420),(27,13,'computer','43ebf5d3-cf50-41dd-ac00-d5cb839d4d01.png','2024-10-14 12:05:57','2024-10-14 12:05:57',420),(28,12,'Baby Care:','02b96c41-b87c-4a2d-a0c9-1a8f4c1661c1.png','2024-10-14 12:09:46','2024-10-14 12:09:46',420),(29,12,'First Aid:','c7d7c3bc-f80c-4135-9f6e-3004a029a062.png','2024-10-14 12:10:39','2024-10-14 12:10:39',420),(30,12,'Medical Equipment','fdcf4403-47ba-438a-bd45-d1c4bbbe5b56.png','2024-10-14 12:11:50','2024-10-14 12:11:50',420),(31,15,'Remote Control and Electronic Toys','3bc7e248-5d49-4361-94ce-0c567f769d2f.png','2024-10-14 12:44:06','2024-10-14 12:44:06',420),(32,16,'Books','72e456bb-c93a-4eb2-a1a2-93b1acf2ac79.png','2024-10-14 12:45:35','2024-10-14 12:45:35',420),(33,16,'Writing Instruments','995abb85-6051-4b3c-9ec0-2826871abc38.png','2024-10-14 12:46:30','2024-10-14 12:46:30',420),(34,16,'Rulers and Geometry Sets','1b1f55a8-e567-4b80-87b1-a12d519c86a3.png','2024-10-14 12:47:44','2024-10-14 12:47:44',420),(35,18,'Bags and Accessories','35aadc74-d2a8-4671-a62a-31ca512c258b.gif','2024-10-14 14:02:34','2024-10-14 14:02:34',420),(36,18,'Beauty and Personal Care','e7f32b54-a577-4c9f-89e8-7f8cad8cb456.png','2024-10-14 14:05:03','2024-10-14 14:05:03',420),(37,17,'oral care','60076794-237d-45da-b52f-bef1aea0a62d.png','2024-10-19 13:29:46','2024-10-19 13:29:46',420),(38,17,'oil ,Ghee and Butter','c3ed39b6-cbe9-477c-b973-9c28a84cb467.png','2024-10-19 13:31:42','2024-10-19 13:31:42',420),(39,17,'bread and biscuits','5594916e-cf2a-42ec-9cf8-4705f2f962fb.png','2024-10-19 14:24:39','2024-10-19 14:24:39',420);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useraddress` (
  `addressid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `houseno` varchar(45) DEFAULT NULL,
  `floorno` varchar(45) DEFAULT NULL,
  `towerno` varchar(45) DEFAULT NULL,
  `building` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addressid`),
  KEY `qc_fk_uid_idx` (`userid`),
  CONSTRAINT `qc_fk_uid` FOREIGN KEY (`userid`) REFERENCES `usersdata` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES (1,1,'1','1','1111','1111','11','11','11','11','11'),(2,4,'678998','87','009','99','84','hairan gali pareshan mohalla','landline','gwalior','Madhya Pradesh'),(3,3,'678998','87','009','99','84','hairan gali pareshan mohalla','landline','gwalior','Madhya Pradesh');
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersdata`
--

DROP TABLE IF EXISTS `usersdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usersdata` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `emailaddress` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `mobileno_UNIQUE` (`mobileno`),
  UNIQUE KEY `emailaddress_UNIQUE` (`emailaddress`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersdata`
--

LOCK TABLES `usersdata` WRITE;
/*!40000 ALTER TABLE `usersdata` DISABLE KEYS */;
INSERT INTO `usersdata` VALUES (1,NULL,'pal','Male','dpal34036@gmail.com','1999/1/1','9165043030'),(2,'ravi','shankar','Male','22mc10de594@mitsgwl.ac.in','2000/2/1','6266073637'),(3,'raguveer','singh bagel','Male','nothinglikeanything@gmail.com','2000/1/2','7667002231'),(4,'raga','gand','Male','neeleshbaghel40@gmail.com','2000/1/2','8319212779');
/*!40000 ALTER TABLE `usersdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-17 18:47:39
