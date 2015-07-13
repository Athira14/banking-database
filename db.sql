-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `no` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(30) DEFAULT NULL,
  `account_no` int(11) NOT NULL DEFAULT '0',
  `account_type` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_no`),
  KEY `account_type` (`account_type`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`account_type`) REFERENCES `account_types` (`account_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'arathi',18,'trivandrum',10001,'savings account',149700),(13,'fdf',14,'dfdf',14444,'current account',44444),(3,'leena',40,'eranakulam',20052,'current account',61000),(5,'farheen',22,'kannur',50025,'current account',71475),(9,'hyhy',75,'yhy',76555,'current account',78555),(4,'beena',45,'kollam',147521,'savings account',49500),(10,'celin',25,'thiruvalla',176930,'savings account',52500),(7,'hita',25,'kannur',470068,'current account',47000),(9,'elena',12,'trivandrum',475006,'savings account',45000),(6,'heera',47,'trivandrum',500214,'savings account',756200),(8,'amina',45,'neyyatinkara',1760572,'current account',72000);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_types` (
  `acc_typeid` int(11) NOT NULL,
  `account_type` varchar(20) NOT NULL,
  PRIMARY KEY (`account_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` VALUES (102,'current account'),(101,'savings account');
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_details`
--

DROP TABLE IF EXISTS `loan_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_details` (
  `loan_no` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `loan_type` varchar(30) DEFAULT NULL,
  `loan_amount` int(11) NOT NULL,
  PRIMARY KEY (`loan_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_details`
--

LOCK TABLES `loan_details` WRITE;
/*!40000 ALTER TABLE `loan_details` DISABLE KEYS */;
INSERT INTO `loan_details` VALUES (1,'deena','education',50000),(2,'geetha','house',100000),(3,'liza','education',25000),(5,'sjd','445',4555),(8,'dfdf','dfdf',111),(9,'suja','house',500000),(10,'vibha','vehicle',350000),(11,'reetha','house',14500000),(12,'fgfg','fgfg',1580000);
/*!40000 ALTER TABLE `loan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal`
--

DROP TABLE IF EXISTS `withdrawal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdrawal` (
  `wno` int(11) NOT NULL,
  `account_no` int(11) DEFAULT NULL,
  `amount_withdraw` int(11) DEFAULT NULL,
  PRIMARY KEY (`wno`),
  KEY `account_no` (`account_no`),
  CONSTRAINT `withdrawal_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal`
--

LOCK TABLES `withdrawal` WRITE;
/*!40000 ALTER TABLE `withdrawal` DISABLE KEYS */;
INSERT INTO `withdrawal` VALUES (1,10001,500),(3,20052,1000),(4,20052,1000),(5,176930,1000),(6,20052,500),(7,10001,10),(8,1760572,500),(9,470068,1000),(10,470068,1000),(11,10001,50),(12,10001,50),(13,10001,50),(15,10001,50),(16,10001,50),(20,470068,50),(44,10001,50),(50,147521,500),(55,10001,1),(75,470068,450),(77,10001,10),(110,10001,1),(111,10001,100),(117,10001,100),(123,50025,1000),(141,10001,100),(144,10001,145222),(147,500214,50),(174,50025,100),(175,50025,1750),(787,50025,175);
/*!40000 ALTER TABLE `withdrawal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-13 12:13:19
