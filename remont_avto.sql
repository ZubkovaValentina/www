-- MySQL dump 10.13  Distrib 5.5.53, for Win64 (AMD64)
--
-- Host: localhost    Database: remont_avto
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `key_client` int(8) NOT NULL AUTO_INCREMENT,
  `full_name` char(20) NOT NULL,
  `address` char(50) NOT NULL,
  `mobile_phone` int(11) NOT NULL,
  `series_p` int(10) NOT NULL,
  PRIMARY KEY (`key_client`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'Tambiev R.V.','Moskva yl.Plesheeva',896712354,1331125434),(4,'asd','asd',123,123);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couple_goods`
--

DROP TABLE IF EXISTS `couple_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couple_goods` (
  `key_goods` int(10) NOT NULL AUTO_INCREMENT,
  `couple_number` int(20) NOT NULL,
  `date` date NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `key_order` int(10) NOT NULL,
  PRIMARY KEY (`key_goods`),
  KEY `couple_goods_ibfk_1` (`key_order`),
  CONSTRAINT `couple_goods_ibfk_1` FOREIGN KEY (`key_order`) REFERENCES `order_product` (`key_order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couple_goods`
--

LOCK TABLES `couple_goods` WRITE;
/*!40000 ALTER TABLE `couple_goods` DISABLE KEYS */;
INSERT INTO `couple_goods` VALUES (3,3,'2017-08-08',25554700.00,3);
/*!40000 ALTER TABLE `couple_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail` (
  `key_detail` int(10) NOT NULL AUTO_INCREMENT,
  `name_detail` char(20) NOT NULL,
  `manufacturer` char(20) NOT NULL,
  `car_model` tinytext,
  `power` int(8) NOT NULL,
  `sum_detail` decimal(10,2) NOT NULL,
  `kolvo` int(8) NOT NULL,
  `couple_number` int(8) NOT NULL,
  PRIMARY KEY (`key_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,'motor','Kakyshki','Bmv',0,0.00,0,0),(2,'dvigatel','Milavitsa','Porsche',0,0.00,0,0),(3,'ghfdser','vghjhd','fvbfvx 78',2525,5252.00,25,123);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_order_product`
--

DROP TABLE IF EXISTS `detail_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_order_product` (
  `key_detail` int(10) NOT NULL,
  `key_order` int(10) NOT NULL,
  KEY `key_detail` (`key_detail`),
  KEY `key_order` (`key_order`),
  CONSTRAINT `detail_order_product_ibfk_1` FOREIGN KEY (`key_detail`) REFERENCES `detail` (`key_detail`),
  CONSTRAINT `detail_order_product_ibfk_2` FOREIGN KEY (`key_order`) REFERENCES `order_product` (`key_order`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_order_product`
--

LOCK TABLES `detail_order_product` WRITE;
/*!40000 ALTER TABLE `detail_order_product` DISABLE KEYS */;
INSERT INTO `detail_order_product` VALUES (1,3),(2,3),(2,10),(1,10);
/*!40000 ALTER TABLE `detail_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `key_employee` int(10) NOT NULL AUTO_INCREMENT,
  `Full_name` char(20) NOT NULL,
  `INN` int(15) NOT NULL,
  `Position` char(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `children` int(2) DEFAULT NULL,
  `education` varchar(32) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`key_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Bashkirova L.V.',123546398,'byhgalter','1985-03-15',0,'высшее','ж'),(2,'Gybarev N.A.',756430982,'administrator','1974-12-20',2,'высшее','м');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `key_invoice` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_number` int(20) NOT NULL,
  `date` date NOT NULL,
  `key_client` int(10) NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `accepted` char(20) NOT NULL,
  `passed` char(20) NOT NULL,
  `detail` varchar(32) NOT NULL,
  PRIMARY KEY (`key_invoice`),
  KEY `invoice_ibfk_1` (`key_client`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`key_client`) REFERENCES `client` (`key_client`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (3,45,'2017-08-08',2,25554700.00,'Bashkirova L.V.','Bashkirova L.V.','');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `key_order` int(10) NOT NULL AUTO_INCREMENT,
  `order_number` int(20) NOT NULL,
  `date` date NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `key_client` int(10) NOT NULL,
  `sum_detail` decimal(10,2) NOT NULL,
  `sum_work` decimal(10,2) NOT NULL,
  PRIMARY KEY (`key_order`),
  KEY `order_product_ibfk_1` (`key_client`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`key_client`) REFERENCES `client` (`key_client`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (3,3,'2017-07-01',25554700.00,2,0.00,0.00),(7,123,'2007-12-12',4234.00,2,0.00,0.00),(8,234,'2007-12-12',222.00,4,0.00,0.00),(9,234,'2007-12-12',222.00,4,0.00,0.00),(10,123456,'2017-03-15',2000.00,2,0.00,0.00);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_order`
--

DROP TABLE IF EXISTS `payment_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_order` (
  `key_payment` int(10) NOT NULL AUTO_INCREMENT,
  `payment_number` int(20) NOT NULL,
  `date` date NOT NULL,
  `detail` varchar(32) NOT NULL,
  `kolvo` int(8) NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  PRIMARY KEY (`key_payment`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_order`
--

LOCK TABLES `payment_order` WRITE;
/*!40000 ALTER TABLE `payment_order` DISABLE KEYS */;
INSERT INTO `payment_order` VALUES (1,33,'2016-06-15','',0,350000.00),(2,125,'2016-12-04','',0,1250550.00),(3,250,'2017-08-08','',0,25554700.00);
/*!40000 ALTER TABLE `payment_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `key_provider` int(10) NOT NULL AUTO_INCREMENT,
  `name_organization` char(20) NOT NULL,
  `provider_address` char(50) NOT NULL,
  `mobile_phone` int(11) NOT NULL,
  `fax` int(10) NOT NULL,
  `INN` char(15) NOT NULL,
  `detail` varchar(32) NOT NULL,
  `sum_detail` decimal(10,2) NOT NULL,
  PRIMARY KEY (`key_provider`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Radyga','Moskva yl.Leskova',895434891,495662888,'345278912','',0.00),(2,'Berezka','Moskva yl.Vasileva',894532781,495336677,'234509871','',0.00),(3,'fvscz','vdffs',234,245,'5312','bddd',3445.00);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-25 14:18:34
