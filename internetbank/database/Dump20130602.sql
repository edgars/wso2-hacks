CREATE DATABASE  IF NOT EXISTS `banking` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `banking`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: banking
-- ------------------------------------------------------
-- Server version	5.5.16-log

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
-- Table structure for table `bank_client_login`
--

DROP TABLE IF EXISTS `bank_client_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_client_login` (
  `id` int(45) NOT NULL AUTO_INCREMENT,
  `bank_client_user` varchar(255) NOT NULL,
  `bank_client_pass` varchar(255) DEFAULT NULL,
  `bank_client_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`bank_client_user`),
  KEY `fk_client_login` (`bank_client_id`),
  CONSTRAINT `fk_client_login` FOREIGN KEY (`bank_client_id`) REFERENCES `bank_client_details` (`bank_client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_client_login`
--

LOCK TABLES `bank_client_login` WRITE;
/*!40000 ALTER TABLE `bank_client_login` DISABLE KEYS */;
INSERT INTO `bank_client_login` VALUES (12,'vish','c9e55fc0be18bed4a9c695a6d8ac2840','1234');
/*!40000 ALTER TABLE `bank_client_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_client_loginman`
--

DROP TABLE IF EXISTS `bank_client_loginman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_client_loginman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_client_id` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_loginman_client` (`bank_client_id`),
  CONSTRAINT `fk_loginman_client` FOREIGN KEY (`bank_client_id`) REFERENCES `bank_client_details` (`bank_client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_client_loginman`
--

LOCK TABLES `bank_client_loginman` WRITE;
/*!40000 ALTER TABLE `bank_client_loginman` DISABLE KEYS */;
INSERT INTO `bank_client_loginman` VALUES (24,'1234','2013-04-03 13:25:53'),(25,'1234','2013-04-06 19:49:42'),(26,'1234','2013-04-24 11:31:30'),(27,'1234','2013-04-27 09:42:10');
/*!40000 ALTER TABLE `bank_client_loginman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_trans`
--

DROP TABLE IF EXISTS `bank_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_trans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_client_id` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `withdrawn` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bk_client_id` (`bank_client_id`),
  CONSTRAINT `fk_bk_client_id` FOREIGN KEY (`bank_client_id`) REFERENCES `bank_client_details` (`bank_client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_trans`
--

LOCK TABLES `bank_trans` WRITE;
/*!40000 ALTER TABLE `bank_trans` DISABLE KEYS */;
INSERT INTO `bank_trans` VALUES (72,'1234','cash','2000','2000',NULL,'2013-04-03 13:25:15');
/*!40000 ALTER TABLE `bank_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_client_details`
--

DROP TABLE IF EXISTS `bank_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_client_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_client_id` varchar(45) NOT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob_detail` varchar(45) DEFAULT NULL,
  `phone_land_no` varchar(45) DEFAULT NULL,
  `phone_mobile_no` varchar(45) DEFAULT NULL,
  `email_detail` varchar(45) DEFAULT NULL,
  `add_detail` varchar(255) DEFAULT NULL,
  `city_detail` varchar(55) DEFAULT NULL,
  `state_detail` varchar(55) DEFAULT NULL,
  `proof_detail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`bank_client_id`),
  KEY `idx_bank_client_id` (`bank_client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_client_details`
--

LOCK TABLES `bank_client_details` WRITE;
/*!40000 ALTER TABLE `bank_client_details` DISABLE KEYS */;
INSERT INTO `bank_client_details` VALUES (12,'1234','Surat','Vishv3sh','M.','Shah','Male','1/1/1990','1234567','1234567','aa@ab.co','1211211212','ahmedabad','gujurat',NULL);
/*!40000 ALTER TABLE `bank_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_emp_loginman`
--

DROP TABLE IF EXISTS `bank_emp_loginman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_emp_loginman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_emp_id` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_emp_loginman` (`bank_emp_id`),
  CONSTRAINT `fk_emp_loginman` FOREIGN KEY (`bank_emp_id`) REFERENCES `bank_emp_details` (`bank_emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_emp_loginman`
--

LOCK TABLES `bank_emp_loginman` WRITE;
/*!40000 ALTER TABLE `bank_emp_loginman` DISABLE KEYS */;
INSERT INTO `bank_emp_loginman` VALUES (17,'1234','2013-04-03 13:23:50'),(18,'1234','2013-04-03 14:11:54'),(19,'1234','2013-04-03 14:42:34'),(20,'1234','2013-04-03 14:59:47'),(21,'1234','2013-04-03 15:03:20'),(22,'1234','2013-04-03 15:48:37'),(23,'1234','2013-04-03 15:54:00'),(24,'1234','2013-04-03 16:15:33'),(25,'1234','2013-04-03 16:35:13'),(26,'1234','2013-04-24 11:41:50'),(27,'1234','2013-04-24 12:05:55');
/*!40000 ALTER TABLE `bank_emp_loginman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_emp_login`
--

DROP TABLE IF EXISTS `bank_emp_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_emp_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_emp_user` varchar(255) NOT NULL,
  `bank_emp_pass` varchar(255) NOT NULL,
  `bank_emp_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`bank_emp_user`),
  UNIQUE KEY `bank_emp_id_UNIQUE` (`bank_emp_id`),
  KEY `fk_bank_emp_id` (`bank_emp_id`),
  CONSTRAINT `fk_emp_login` FOREIGN KEY (`bank_emp_id`) REFERENCES `bank_emp_details` (`bank_emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_emp_login`
--

LOCK TABLES `bank_emp_login` WRITE;
/*!40000 ALTER TABLE `bank_emp_login` DISABLE KEYS */;
INSERT INTO `bank_emp_login` VALUES (6,'emp','ac8be4aee61f5f6e21b8c5afffb52939','1234');
/*!40000 ALTER TABLE `bank_emp_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_admin_login`
--

DROP TABLE IF EXISTS `bank_admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_admin_login` (
  `id` int(11) NOT NULL,
  `bank_admin_user` varchar(255) NOT NULL,
  `bank_admin_pass` varchar(255) DEFAULT NULL,
  `bank_admin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`bank_admin_user`,`bank_admin_id`),
  KEY `idx_bank_admin_id` (`bank_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_admin_login`
--

LOCK TABLES `bank_admin_login` WRITE;
/*!40000 ALTER TABLE `bank_admin_login` DISABLE KEYS */;
INSERT INTO `bank_admin_login` VALUES (1,'admin','admin','1234');
/*!40000 ALTER TABLE `bank_admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_emp_details`
--

DROP TABLE IF EXISTS `bank_emp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_emp_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_emp_id` varchar(45) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob_detail` varchar(45) DEFAULT NULL,
  `phone_land_no` varchar(45) DEFAULT NULL,
  `phone_mobile_no` varchar(45) DEFAULT NULL,
  `email_detail` varchar(45) DEFAULT NULL,
  `add_detail` varchar(255) DEFAULT NULL,
  `city_detail` varchar(55) DEFAULT NULL,
  `state_detail` varchar(55) DEFAULT NULL,
  `proof_detail` varchar(45) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`bank_emp_id`),
  KEY `idx_bank_emp_id` (`bank_emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_emp_details`
--

LOCK TABLES `bank_emp_details` WRITE;
/*!40000 ALTER TABLE `bank_emp_details` DISABLE KEYS */;
INSERT INTO `bank_emp_details` VALUES (5,'1234','Manager','Ahmedabad','Karan','M.','Shah','1/1/1990','1234567','1234455','abcd@abc.com','7/a,abcdabcd.','Ahemedabad','Hyderabad',NULL,'Male');
/*!40000 ALTER TABLE `bank_emp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_admin_loginman`
--

DROP TABLE IF EXISTS `bank_admin_loginman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_admin_loginman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_admin_id` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_admin_bank_id` (`bank_admin_id`),
  CONSTRAINT `fk_admin_bank_id` FOREIGN KEY (`bank_admin_id`) REFERENCES `bank_admin_login` (`bank_admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_admin_loginman`
--

LOCK TABLES `bank_admin_loginman` WRITE;
/*!40000 ALTER TABLE `bank_admin_loginman` DISABLE KEYS */;
INSERT INTO `bank_admin_loginman` VALUES (1,'1234',NULL),(2,'1234','2013-04-01 12:46:53'),(3,'1234','2013-04-01 12:51:12'),(4,'1234','2013-04-01 13:38:07'),(5,'1234','2013-04-01 13:38:54'),(6,'1234','2013-04-01 13:39:29'),(7,'1234','2013-04-01 13:44:45'),(8,'1234','2013-04-01 13:54:40'),(9,'1234','2013-04-01 14:23:33'),(10,'1234','2013-04-01 14:25:42'),(11,'1234','2013-04-01 14:28:22'),(12,'1234','2013-04-01 14:32:50'),(13,'1234','2013-04-01 14:39:54'),(14,'1234','2013-04-03 12:06:54'),(15,'1234','2013-04-03 13:14:11'),(16,'1234','2013-04-03 13:17:13'),(17,'1234','2013-04-03 13:22:57'),(18,'1234','2013-04-24 11:37:58');
/*!40000 ALTER TABLE `bank_admin_loginman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) NOT NULL,
  `bank_branch_name` varchar(45) DEFAULT NULL,
  `bank_branch_add` varchar(45) DEFAULT NULL,
  `bank_branch_city` varchar(45) DEFAULT NULL,
  `bank_branch_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,12,'First','test','test','987898789');
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-02  9:22:55
