CREATE DATABASE  IF NOT EXISTS `agileretro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agileretro`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 10.129.126.28    Database: agileretro
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `accounts_user`
--

DROP TABLE IF EXISTS `accounts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `accounts_user_entity_id_41625316_fk_boards_entity_id` (`entity_id`),
  CONSTRAINT `accounts_user_entity_id_41625316_fk_boards_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `boards_entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user`
--

LOCK TABLES `accounts_user` WRITE;
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` VALUES (1,'pbkdf2_sha256$120000$qLXKcndCoZsi$8u5X3B3z6IfgxDAwuROVdWHJv+Ya0Xg2MOkiQ+iDsLM=','2020-03-12 03:09:22.049832',1,'agile','','','brian.hao@sap.com',1,1,'2020-01-13 08:58:36.450318',NULL),(2,'pbkdf2_sha256$120000$vRuzUqNpUhXo$xkzVymskrAWbIgITgCLoWzLNO3N/czAy4SqnEx/NSmw=','2020-03-12 03:10:34.116040',0,'I073330','','','miracle.ouyang@sap.com',0,1,'2020-01-13 09:18:01.286092',1),(3,'pbkdf2_sha256$120000$QesPAd7Xesaa$B5BVvBrcnF5ss2E+dzIa4+Oi/cIOCtmPCD4tj9aO+R0=','2020-03-12 01:34:30.019452',0,'test','','','test@test.com',0,1,'2020-01-13 09:54:13.624743',1),(4,'pbkdf2_sha256$120000$amLC1x08FVOF$7gFlIY3MiPB4fhaeCzDeWk3K9BeC1vrfIdDFsbZU+10=','2020-03-09 02:26:45.914024',0,'I320903','','','ruud.xu@sap.com',0,1,'2020-03-09 02:26:45.734921',1),(5,'pbkdf2_sha256$120000$lqJlqoKWIWQc$3dKnP2guzhZ/e+P5SCYfeYObWH1mAEDyg3qiA4jjC7Q=','2020-03-12 03:04:15.152846',0,'Catherine','','','catherine.chen@sap.com',0,1,'2020-03-12 03:04:15.003509',1),(6,'pbkdf2_sha256$120000$G8rZZrmzrjHD$yLmiwEGsRejdVzMJMFCzMzg7IccW2TwSzlpWDW3/W/I=','2020-03-12 05:08:21.962327',0,'ouyang','','','ADFV2@sap.com',0,1,'2020-03-12 05:08:21.810303',1),(7,'pbkdf2_sha256$120000$FmRXKeAfQFp0$aHhD2SKxv8QjgiUCymqQjJKJ5MJqHFn54mj9NrmZUmg=','2020-03-12 05:53:56.723874',0,'I515183','','','sara.zhang02@sap.com',0,1,'2020-03-12 05:53:56.576120',1);
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 15:30:27
