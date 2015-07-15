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
  `amount` int(11) DEFAULT NULL,
  `acc_typeid` int(11) NOT NULL,
  PRIMARY KEY (`account_no`),
  KEY `acc_typeid` (`acc_typeid`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`acc_typeid`) REFERENCES `account_types` (`acc_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (79,'dfd',454,'gfhfgh',44,417,102),(78,'fgvg',44,'fdgfg',4444,5225,101),(1,'arathi',18,'trivandrum',10001,149565,0),(96,'gracy',78,'jjj',10020,1470,101),(13,'fdf',14,'dfdf',14444,44444,0),(79,'karthi',45,'ofdff',19630,14700,102),(3,'leena',40,'eranakulam',20052,61000,0),(66,'jyj',54,'yhjjjjjj',44463,5000,102),(96,'fgfg',55,'dfgfg',47522,56300,101),(5,'farheen',22,'kannur',50025,71475,0),(141,'fgfgfdg',77,'dgfg',55555,10,101),(9,'hyhy',75,'yhy',76555,78555,0),(77,'kevi',7,'hjgfj',78005,78201,102),(66,'nancy',45,'fgfgg',141111,85222,101),(85,'meera',79,'176220',147002,70050,101),(4,'beena',45,'kollam',147521,49500,0),(111,'rani',70,'hdgggs',169074,12000,102),(10,'celin',25,'thiruvalla',176930,52500,0),(79300,'jerin',75,'hhkllll',187602,200,101),(555,'hjh',44,'jkfgk',444025,5454,102),(7,'hita',25,'kannur',470068,47000,0),(9,'elena',12,'trivandrum',475006,45000,0),(90,'thara',7,'sfjhf',479000,7400,101),(6,'heera',47,'trivandrum',500214,756200,0),(18,'dfgfg',656,'fdgdgdfg',565665,1222,102),(50,'juhi',77,'dgggggsg',701254,10000,101),(16,'sasd',44,'dfdfd',745664,4455,101),(90,'ghjkk',75,'jjh',792000,700,102),(8,'amina',45,'neyyatinkara',1760572,72000,0),(55,'fhfh',65,'tht',6555565,62500,102),(752,'wahiba',20,'kdfg',7900364,147963,101),(96,'sdyuy',78,'jdsfh',44444444,2147483647,102);
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
  `account_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`acc_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` VALUES (101,'savings account'),(102,'current account');
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
INSERT INTO `loan_details` VALUES (1,'deena','education',50000),(2,'geetha','house',100000),(3,'liza','education',25000),(5,'sjd','445',4555),(8,'dfdf','dfdf',111),(9,'suja','house',500000),(10,'vibha','vehicle',350000),(11,'reetha','house',14500000),(12,'fgfg','fgfg',1580000),(802,'jhjh','education',14752);
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
INSERT INTO `withdrawal` VALUES (1,10001,500),(3,20052,1000),(4,20052,1000),(5,176930,1000),(6,20052,500),(7,10001,10),(8,1760572,500),(9,470068,1000),(10,470068,1000),(11,10001,50),(12,10001,50),(13,10001,50),(14,44,44),(15,10001,50),(16,10001,50),(20,470068,50),(36,44,28),(44,10001,50),(50,147521,500),(52,44,522),(55,10001,1),(60,10001,125),(75,470068,450),(77,10001,10),(88,44,2),(110,10001,1),(111,10001,100),(113,10001,225),(117,10001,100),(123,50025,1000),(131,10001,10),(136,44,25),(139,44,2),(141,10001,100),(144,10001,145222),(147,500214,50),(165,10001,125),(174,50025,100),(175,50025,1750),(179,44,10),(185,44,5),(220,44,2),(236,44,5),(251,44,12),(454,44,5),(787,50025,175),(802,44,2);
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

-- Dump completed on 2015-07-15 12:13:37
