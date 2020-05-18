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
-- Table structure for table `boards_topic`
--

DROP TABLE IF EXISTS `boards_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` longtext NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `status` varchar(8) NOT NULL,
  `board_id` int(11) NOT NULL,
  `starter_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_topic_board_id_4462fe82_fk_boards_board_id` (`board_id`),
  KEY `boards_topic_starter_id_60e98681_fk_accounts_user_id` (`starter_id`),
  KEY `boards_topic_category_id_342e47ba_fk_boards_category_id` (`category_id`),
  CONSTRAINT `boards_topic_board_id_4462fe82_fk_boards_board_id` FOREIGN KEY (`board_id`) REFERENCES `boards_board` (`id`),
  CONSTRAINT `boards_topic_category_id_342e47ba_fk_boards_category_id` FOREIGN KEY (`category_id`) REFERENCES `boards_category` (`id`),
  CONSTRAINT `boards_topic_starter_id_60e98681_fk_accounts_user_id` FOREIGN KEY (`starter_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_topic`
--

LOCK TABLES `boards_topic` WRITE;
/*!40000 ALTER TABLE `boards_topic` DISABLE KEYS */;
INSERT INTO `boards_topic` VALUES (1,'Estimation not enough.\r\nSome stories delayed. \r\n\r\nFor estimation, we need to consider the following:\r\n1. communication \r\n2. dependency \r\n3. Environment\r\n4. Testing Testing Testing','2020-03-12 06:36:55.383180',5,'active',1,2,2),(2,'Build issue.\r\nEspecially checkin codes for different repos with dependancy.\r\n\r\nWait au-cdp merge before merge au-V4.','2020-03-12 06:14:44.277298',6,'active',1,2,2),(3,'Great team work. everyone is glad to backup others.','2020-03-12 03:11:27.159111',0,'active',1,2,1),(4,'Messages and docs are reviewed in time during sprints.','2020-03-12 06:34:36.548918',0,'active',1,5,1),(5,'WFH reduces efficiency, it needs more communications with team members and working is always interrupted by shenshou(s)...','2020-03-12 05:18:11.668323',2,'active',1,6,2),(6,'Positive support from team members','2020-03-12 05:20:46.901673',0,'active',1,6,1),(7,'work more closely with engineer when design SUPT strategy \r\nit will be much more better if engineer could finger out the \'pain point\' in code logic and the SUPT data could be prepared accordingly','2020-03-12 05:24:41.523580',0,'active',1,6,4),(8,'Everyone should be positive during backlog refinement meeting.','2020-03-12 06:30:55.581469',1,'active',1,2,2),(9,'Build is not stable, no successful builds for days.','2020-03-12 06:48:29.891854',3,'active',1,2,2),(10,'Good experience in local pipeline practice. sharing with other team','2020-03-12 06:39:17.447730',0,'active',1,2,1),(11,'Need ADFV2 guideline.\r\n1. API\r\n2. UI\r\n3 DWR','2020-03-12 06:53:28.549373',1,'active',1,2,4),(12,'Split Stories to small ones.','2020-03-12 06:56:38.962058',0,'active',1,2,4);
/*!40000 ALTER TABLE `boards_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 15:30:28
