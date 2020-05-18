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
-- Table structure for table `boards_post`
--

DROP TABLE IF EXISTS `boards_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `post_type` varchar(1000) NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_post_created_by_id_0b841038_fk_accounts_user_id` (`created_by_id`),
  KEY `boards_post_topic_id_f477c024_fk_boards_topic_id` (`topic_id`),
  KEY `boards_post_updated_by_id_76d3c48f_fk_accounts_user_id` (`updated_by_id`),
  CONSTRAINT `boards_post_created_by_id_0b841038_fk_accounts_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `accounts_user` (`id`),
  CONSTRAINT `boards_post_topic_id_f477c024_fk_boards_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `boards_topic` (`id`),
  CONSTRAINT `boards_post_updated_by_id_76d3c48f_fk_accounts_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards_post`
--

LOCK TABLES `boards_post` WRITE;
/*!40000 ALTER TABLE `boards_post` DISABLE KEYS */;
INSERT INTO `boards_post` VALUES (1,'can use https://cd.successfactors.com/job/MultipleComponentsReleasePipeline/ for across-module PRs','2020-03-12 03:15:42.621041',NULL,'post','active',2,2,NULL),(3,'','2020-03-12 05:58:06.244451',NULL,'star','active',7,5,NULL),(4,'','2020-03-12 05:58:49.544643',NULL,'star','active',7,4,NULL),(5,'-Estimation should consider kinds of activities: Design/ Testing / Dependency check /Possible Requirement turnover / Integration &Testing / Nonfunctional Testing/demo etc. @All\r\n\r\nBI owners should take responsibility for quality. testing should be sufficient.','2020-03-12 06:10:44.257031',NULL,'post','active',2,1,NULL),(6,'To use multipleComponentReleasePipeline, we need to disable auto merge after PR approved.\r\n@Miracle,  Follow up with WangCheng.','2020-03-12 06:14:44.275206',NULL,'post','active',2,2,NULL),(7,'','2020-03-12 06:18:43.088724',NULL,'star','active',2,2,NULL),(8,'','2020-03-12 06:18:44.801781',NULL,'star','active',2,1,NULL),(9,'release documentation prepared during dev sprint stories.','2020-03-12 06:34:36.546308',NULL,'post','active',2,4,NULL),(10,'positively involved in refinement meeting.','2020-03-12 06:36:55.380981',NULL,'post','active',2,1,NULL),(11,'Unstable Build-system. \r\nAI: Backup successful build-system for workaround.','2020-03-12 06:48:29.882870',NULL,'post','active',2,9,NULL);
/*!40000 ALTER TABLE `boards_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 15:30:30
