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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2020-01-13 08:36:18.417117'),(2,'boards','0001_initial','2020-01-13 08:36:18.570115'),(3,'contenttypes','0001_initial','2020-01-13 08:36:18.587612'),(4,'contenttypes','0002_remove_content_type_name','2020-01-13 08:36:18.618245'),(5,'auth','0001_initial','2020-01-13 08:36:18.680959'),(6,'auth','0002_alter_permission_name_max_length','2020-01-13 08:36:18.690400'),(7,'auth','0003_alter_user_email_max_length','2020-01-13 08:36:18.700610'),(8,'auth','0004_alter_user_username_opts','2020-01-13 08:36:18.709066'),(9,'auth','0005_alter_user_last_login_null','2020-01-13 08:36:18.719924'),(10,'auth','0006_require_contenttypes_0002','2020-01-13 08:36:18.721647'),(11,'auth','0007_alter_validators_add_error_messages','2020-01-13 08:36:18.729737'),(12,'auth','0008_alter_user_username_max_length','2020-01-13 08:36:18.738129'),(13,'auth','0009_alter_user_last_name_max_length','2020-01-13 08:36:18.746357'),(14,'accounts','0002_auto_20180822_0601','2020-01-13 08:36:18.967117'),(15,'accounts','0003_auto_20180822_0613','2020-01-13 08:36:19.006919'),(16,'admin','0001_initial','2020-01-13 08:36:19.105310'),(17,'admin','0002_logentry_remove_auto_add','2020-01-13 08:36:19.132923'),(18,'admin','0003_logentry_add_action_flag_choices','2020-01-13 08:36:19.174833'),(19,'boards','0002_auto_20180823_1003','2020-01-13 08:36:19.382173'),(20,'sessions','0001_initial','2020-01-13 08:36:19.413161');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
