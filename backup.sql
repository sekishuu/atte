-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: laravel_db
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `work_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendances_user_id_foreign` (`user_id`),
  CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (2,1,'2024-03-18','12:19:25','12:44:37','2024-03-18 12:19:25','2024-03-18 12:44:37'),(3,1,'2024-03-18','12:54:27','12:54:30','2024-03-18 12:54:27','2024-03-18 12:54:30'),(4,1,'2024-03-18','13:17:31','13:17:33','2024-03-18 13:17:31','2024-03-18 13:17:33'),(5,1,'2024-03-18','13:18:07','13:18:08','2024-03-18 13:18:07','2024-03-18 13:18:08'),(6,1,'2024-03-18','13:24:46','13:24:48','2024-03-18 13:24:46','2024-03-18 13:24:48'),(7,1,'2024-03-18','13:24:59','13:25:00','2024-03-18 13:24:59','2024-03-18 13:25:00'),(8,1,'2024-03-18','13:26:44','13:26:45','2024-03-18 13:26:44','2024-03-18 13:26:45'),(9,1,'2024-03-18','13:29:06','13:29:08','2024-03-18 13:29:06','2024-03-18 13:29:08'),(10,1,'2024-03-18','13:29:45',NULL,'2024-03-18 13:29:45','2024-03-18 13:29:45'),(11,1,'2024-03-18','13:30:49',NULL,'2024-03-18 13:30:49','2024-03-18 13:30:49'),(12,1,'2024-03-18','13:32:46',NULL,'2024-03-18 13:32:46','2024-03-18 13:32:46'),(13,1,'2024-03-18','13:33:03',NULL,'2024-03-18 13:33:03','2024-03-18 13:33:03'),(14,1,'2024-03-18','16:22:06',NULL,'2024-03-18 16:22:06','2024-03-18 16:22:06'),(15,1,'2024-03-18','16:23:29',NULL,'2024-03-18 16:23:29','2024-03-18 16:23:29'),(16,1,'2024-03-18','16:51:29','16:51:30','2024-03-18 16:51:29','2024-03-18 16:51:30'),(17,1,'2024-03-18','16:55:33','16:55:34','2024-03-18 16:55:33','2024-03-18 16:55:34'),(18,1,'2024-03-18','17:18:47','17:18:49','2024-03-18 17:18:47','2024-03-18 17:18:49'),(19,1,'2024-03-18','17:23:56','17:23:59','2024-03-18 17:23:56','2024-03-18 17:23:59'),(20,1,'2024-03-18','17:25:57','17:25:58','2024-03-18 17:25:57','2024-03-18 17:25:58'),(21,1,'2024-03-18','17:35:29','17:35:30','2024-03-18 17:35:29','2024-03-18 17:35:30'),(22,1,'2024-03-19','09:53:54','09:53:56','2024-03-19 09:53:54','2024-03-19 09:53:56'),(23,2,'2024-03-19','13:47:10','13:47:12','2024-03-19 13:47:10','2024-03-19 13:47:12'),(24,2,'2024-03-19','13:54:26',NULL,'2024-03-19 13:54:26','2024-03-19 13:54:26'),(25,2,'2024-03-19','14:11:39','14:12:00','2024-03-19 14:11:39','2024-03-19 14:12:00'),(26,2,'2024-03-19','15:16:19','15:16:29','2024-03-19 15:16:19','2024-03-19 15:16:29'),(27,2,'2024-03-19','15:24:07',NULL,'2024-03-19 15:24:07','2024-03-19 15:24:07'),(28,3,'2024-03-19','15:54:21','15:54:23','2024-03-19 15:54:21','2024-03-19 15:54:23'),(29,2,'2024-03-19','15:56:20','15:56:22','2024-03-19 15:56:20','2024-03-19 15:56:22'),(30,2,'2024-03-19','15:58:07','15:58:08','2024-03-19 15:58:07','2024-03-19 15:58:08'),(31,4,'2024-03-19','15:58:40','15:58:42','2024-03-19 15:58:40','2024-03-19 15:58:42'),(32,2,'2024-03-19','15:59:05','15:59:06','2024-03-19 15:59:05','2024-03-19 15:59:06'),(33,2,'2024-03-19','17:02:27','17:02:49','2024-03-19 17:02:27','2024-03-19 17:02:49'),(34,2,'2024-03-21','12:17:44','12:17:45','2024-03-21 12:17:44','2024-03-21 12:17:45'),(35,2,'2024-03-21','13:37:21','13:37:30','2024-03-21 13:37:21','2024-03-21 13:37:30'),(36,2,'2024-03-21','13:38:34','13:38:39','2024-03-21 13:38:34','2024-03-21 13:38:39'),(37,2,'2024-03-21','14:03:08','14:03:17','2024-03-21 14:03:08','2024-03-21 14:03:17'),(38,2,'2024-03-21','14:03:44','14:03:53','2024-03-21 14:03:44','2024-03-21 14:03:53'),(39,2,'2024-03-21','14:10:59','14:11:04','2024-03-21 14:10:59','2024-03-21 14:11:04'),(40,2,'2024-03-22','09:23:53','09:23:55','2024-03-22 09:23:53','2024-03-22 09:23:55'),(41,2,'2024-03-22','13:57:53','13:57:56','2024-03-22 13:57:53','2024-03-22 13:57:56'),(42,2,'2024-03-22','13:58:08','13:58:15','2024-03-22 13:58:08','2024-03-22 13:58:15'),(43,2,'2024-03-22','18:07:09','18:07:11','2024-03-22 18:07:09','2024-03-22 18:07:11'),(44,2,'2024-03-22','18:26:50','18:26:53','2024-03-22 18:26:50','2024-03-22 18:26:53'),(45,2,'2024-03-22','18:27:03','18:27:15','2024-03-22 18:27:03','2024-03-22 18:27:15'),(46,2,'2024-03-24','12:50:25','12:50:27','2024-03-24 12:50:25','2024-03-24 12:50:27'),(47,2,'2024-03-24','13:09:13','13:09:15','2024-03-24 13:09:13','2024-03-24 13:09:15'),(48,2,'2024-03-24','13:23:02','13:23:03','2024-03-24 13:23:02','2024-03-24 13:23:03'),(49,2,'2024-03-24','13:25:26','13:25:27','2024-03-24 13:25:26','2024-03-24 13:25:27'),(50,2,'2024-03-24','13:36:16','13:36:17','2024-03-24 13:36:16','2024-03-24 13:36:17'),(51,2,'2024-03-24','13:48:14','13:48:15','2024-03-24 13:48:14','2024-03-24 13:48:15'),(52,2,'2024-03-25','10:03:42','10:03:43','2024-03-25 10:03:42','2024-03-25 10:03:43'),(53,2,'2024-03-25','10:24:58','10:24:59','2024-03-25 10:24:58','2024-03-25 10:24:59'),(54,2,'2024-03-25','10:38:50','10:38:51','2024-03-25 10:38:50','2024-03-25 10:38:51'),(55,2,'2024-03-25','10:38:58','10:38:59','2024-03-25 10:38:58','2024-03-25 10:38:59'),(56,2,'2024-03-25','10:44:10','10:44:11','2024-03-25 10:44:10','2024-03-25 10:44:11'),(57,2,'2024-03-25','10:44:15','11:02:49','2024-03-25 10:44:15','2024-03-25 11:02:49'),(58,2,'2024-03-25','11:02:53','11:02:54','2024-03-25 11:02:53','2024-03-25 11:02:54'),(59,2,'2024-03-25','11:03:58','11:03:59','2024-03-25 11:03:58','2024-03-25 11:03:59'),(60,2,'2024-03-25','11:09:11','11:09:13','2024-03-25 11:09:11','2024-03-25 11:09:13'),(61,2,'2024-03-25','11:09:21','18:03:36','2024-03-25 11:09:21','2024-03-25 18:03:36'),(65,2,'2024-03-25','18:04:58','18:19:43','2024-03-25 18:04:58','2024-03-25 18:19:43'),(66,2,'2024-03-25','18:20:20',NULL,'2024-03-25 18:20:20','2024-03-25 18:20:20'),(67,2,'2024-03-25','18:20:22','18:36:23','2024-03-25 18:20:22','2024-03-25 18:36:23'),(68,2,'2024-03-26','09:48:57','09:48:59','2024-03-26 09:48:57','2024-03-26 09:48:59'),(70,2,'2024-03-26','09:55:36',NULL,'2024-03-26 09:55:36','2024-03-26 09:55:36'),(71,2,'2024-03-26','09:55:48','09:57:12','2024-03-26 09:55:48','2024-03-26 09:57:12'),(72,2,'2024-03-26','10:15:08',NULL,'2024-03-26 10:15:08','2024-03-26 10:15:08'),(73,2,'2024-03-26','10:18:26',NULL,'2024-03-26 10:18:26','2024-03-26 10:18:26'),(74,2,'2024-03-26','16:45:26','16:45:27','2024-03-26 16:45:26','2024-03-26 16:45:27'),(75,2,'2024-03-26','16:45:41','16:45:51','2024-03-26 16:45:41','2024-03-26 16:45:51'),(76,2,'2024-03-26','16:45:58',NULL,'2024-03-26 16:45:58','2024-03-26 16:45:58'),(77,2,'2024-03-26','16:46:01','16:46:07','2024-03-26 16:46:01','2024-03-26 16:46:07'),(78,2,'2024-03-26','16:46:16','16:46:18','2024-03-26 16:46:16','2024-03-26 16:46:18'),(79,2,'2024-03-26','17:05:37','17:05:50','2024-03-26 17:05:37','2024-03-26 17:05:50'),(80,2,'2024-03-26','17:07:38','17:07:53','2024-03-26 17:07:38','2024-03-26 17:07:53'),(81,2,'2024-03-26','19:23:43','19:23:44','2024-03-26 19:23:43','2024-03-26 19:23:44'),(82,2,'2024-03-26','19:23:49','19:23:51','2024-03-26 19:23:49','2024-03-26 19:23:51'),(83,2,'2024-03-26','19:23:54',NULL,'2024-03-26 19:23:54','2024-03-26 19:23:54'),(84,2,'2024-03-26','19:23:55','19:23:57','2024-03-26 19:23:55','2024-03-26 19:23:57'),(85,2,'2024-03-27','08:53:09','08:53:20','2024-03-27 08:53:09','2024-03-27 08:53:20'),(86,2,'2024-03-27','08:53:42','08:57:03','2024-03-27 08:53:42','2024-03-27 08:57:03'),(87,2,'2024-03-27','09:00:19','09:01:06','2024-03-27 09:00:19','2024-03-27 09:01:06'),(88,2,'2024-03-27','09:01:14','09:03:15','2024-03-27 09:01:14','2024-03-27 09:03:15'),(89,2,'2024-03-27','09:03:20','09:03:23','2024-03-27 09:03:20','2024-03-27 09:03:23'),(91,2,'2024-03-27','09:17:32','09:17:33','2024-03-27 09:17:32','2024-03-27 09:17:33'),(92,2,'2024-03-27','09:17:44','09:17:47','2024-03-27 09:17:44','2024-03-27 09:17:47'),(93,2,'2024-03-27','09:17:58','09:19:41','2024-03-27 09:17:58','2024-03-27 09:19:41'),(94,2,'2024-03-27','09:19:44','09:19:46','2024-03-27 09:19:44','2024-03-27 09:19:46'),(95,2,'2024-03-27','09:34:22','09:34:37','2024-03-27 09:34:22','2024-03-27 09:34:37'),(97,2,'2024-03-27','09:52:54','09:52:58','2024-03-27 09:52:54','2024-03-27 09:52:58'),(98,2,'2024-03-27','09:55:04','09:55:12','2024-03-27 09:55:04','2024-03-27 09:55:12'),(99,2,'2024-03-27','09:57:00','09:57:04','2024-03-27 09:57:00','2024-03-27 09:57:04'),(100,2,'2024-03-27','09:57:08','09:57:18','2024-03-27 09:57:08','2024-03-27 09:57:18'),(101,2,'2024-03-27','12:28:39','12:28:44','2024-03-27 12:28:39','2024-03-27 12:28:44'),(102,2,'2024-03-28','22:04:47','22:04:54','2024-03-28 22:04:47','2024-03-28 22:04:54'),(103,2,'2024-03-28','22:05:22','22:05:23','2024-03-28 22:05:22','2024-03-28 22:05:23'),(104,2,'2024-03-28','22:07:39','22:11:40','2024-03-28 22:07:39','2024-03-28 22:11:40'),(105,2,'2024-03-28','22:11:43','22:11:51','2024-03-28 22:11:43','2024-03-28 22:11:51'),(106,2,'2024-03-29','09:12:39','09:12:45','2024-03-29 09:12:39','2024-03-29 09:12:45'),(107,2,'2024-03-29','09:16:23','09:16:25','2024-03-29 09:16:23','2024-03-29 09:16:25'),(108,2,'2024-03-29','09:19:46','09:19:47','2024-03-29 09:19:46','2024-03-29 09:19:47'),(109,2,'2024-03-29','09:20:32','09:20:33','2024-03-29 09:20:32','2024-03-29 09:20:33'),(110,2,'2024-03-29','09:28:34','09:28:36','2024-03-29 09:28:34','2024-03-29 09:28:36'),(111,2,'2024-03-29','09:29:16','09:29:17','2024-03-29 09:29:16','2024-03-29 09:29:17'),(112,2,'2024-03-29','09:29:29','09:29:41','2024-03-29 09:29:29','2024-03-29 09:29:41'),(113,2,'2024-03-29','09:40:56','09:40:59','2024-03-29 09:40:56','2024-03-29 09:40:59'),(114,2,'2024-03-29','16:40:35','16:40:46','2024-03-29 16:40:35','2024-03-29 16:40:46'),(115,2,'2024-03-29','16:41:32','16:41:35','2024-03-29 16:41:32','2024-03-29 16:41:35'),(116,2,'2024-03-29','16:43:07','16:43:09','2024-03-29 16:43:07','2024-03-29 16:43:09'),(117,2,'2024-03-29','16:43:56','16:44:02','2024-03-29 16:43:56','2024-03-29 16:44:02'),(118,2,'2024-03-29','16:49:25','16:49:32','2024-03-29 16:49:25','2024-03-29 16:49:32'),(119,2,'2024-03-29','16:50:08','16:50:12','2024-03-29 16:50:08','2024-03-29 16:50:12'),(120,2,'2024-03-29','17:31:37','17:31:40','2024-03-29 17:31:37','2024-03-29 17:31:40'),(121,2,'2024-03-29','17:31:47','17:31:53','2024-03-29 17:31:47','2024-03-29 17:31:53'),(122,2,'2024-03-29','17:57:15','17:57:24','2024-03-29 17:57:15','2024-03-29 17:57:24'),(123,2,'2024-04-01','09:00:59','09:01:03','2024-04-01 09:00:59','2024-04-01 09:01:03'),(124,2,'2024-04-01','10:26:49','10:26:59','2024-04-01 10:26:49','2024-04-01 10:26:59'),(125,2,'2024-04-01','10:28:09','10:28:10','2024-04-01 10:28:09','2024-04-01 10:28:10'),(126,2,'2024-04-01','10:28:12','10:28:13','2024-04-01 10:28:12','2024-04-01 10:28:13'),(127,2,'2024-04-01','10:28:15','10:28:15','2024-04-01 10:28:15','2024-04-01 10:28:15'),(128,2,'2024-04-01','10:28:17','10:28:17','2024-04-01 10:28:17','2024-04-01 10:28:17'),(129,2,'2024-04-01','10:49:25','10:49:26','2024-04-01 10:49:25','2024-04-01 10:49:26'),(130,2,'2024-04-01','11:58:08','11:58:08','2024-04-01 11:58:08','2024-04-01 11:58:08'),(131,2,'2024-04-01','12:13:07','12:13:08','2024-04-01 12:13:07','2024-04-01 12:13:08'),(132,2,'2024-04-01','12:19:40','12:19:41','2024-04-01 12:19:40','2024-04-01 12:19:41'),(133,2,'2024-04-01','13:05:44','13:05:48','2024-04-01 13:05:44','2024-04-01 13:05:48'),(134,2,'2024-04-01','16:15:36','16:15:38','2024-04-01 16:15:36','2024-04-01 16:15:38'),(135,4,'2024-04-01','16:35:39','16:35:39','2024-04-01 16:35:39','2024-04-01 16:35:39'),(136,4,'2024-04-01','16:35:44','16:35:44','2024-04-01 16:35:44','2024-04-01 16:35:44'),(137,4,'2024-04-01','16:35:46','16:35:47','2024-04-01 16:35:46','2024-04-01 16:35:47'),(138,4,'2024-04-01','16:35:48','16:35:49','2024-04-01 16:35:48','2024-04-01 16:35:49'),(139,4,'2024-04-01','16:35:51','16:35:57','2024-04-01 16:35:51','2024-04-01 16:35:57'),(140,4,'2024-04-01','16:36:21','16:36:22','2024-04-01 16:36:21','2024-04-01 16:36:22'),(141,4,'2024-04-03','08:05:31','08:05:32','2024-04-03 08:05:31','2024-04-03 08:05:32'),(142,4,'2024-04-03','08:05:37','08:05:40','2024-04-03 08:05:37','2024-04-03 08:05:40'),(143,2,'2024-04-03','08:05:50','08:05:51','2024-04-03 08:05:50','2024-04-03 08:05:51'),(144,2,'2024-04-03','08:05:53','08:05:54','2024-04-03 08:05:53','2024-04-03 08:05:54'),(145,2,'2024-04-03','08:05:56','08:05:56','2024-04-03 08:05:56','2024-04-03 08:05:56'),(146,2,'2024-04-03','08:05:58','08:05:58','2024-04-03 08:05:58','2024-04-03 08:05:58'),(147,2,'2024-04-03','08:06:00','08:06:01','2024-04-03 08:06:00','2024-04-03 08:06:01'),(148,2,'2024-04-03','08:06:02','08:06:03','2024-04-03 08:06:02','2024-04-03 08:06:03'),(149,2,'2024-04-03','08:06:04','08:06:09','2024-04-03 08:06:04','2024-04-03 08:06:09'),(150,4,'2024-04-03','08:06:19','08:06:22','2024-04-03 08:06:19','2024-04-03 08:06:22'),(151,4,'2024-04-03','08:06:24','08:06:25','2024-04-03 08:06:24','2024-04-03 08:06:25'),(152,4,'2024-04-03','08:06:28','08:06:29','2024-04-03 08:06:28','2024-04-03 08:06:29'),(153,4,'2024-04-03','08:06:30','08:06:31','2024-04-03 08:06:30','2024-04-03 08:06:31'),(154,4,'2024-04-03','08:06:33','08:06:33','2024-04-03 08:06:33','2024-04-03 08:06:33'),(155,4,'2024-04-03','08:06:40','08:06:40','2024-04-03 08:06:40','2024-04-03 08:06:40'),(156,4,'2024-04-03','10:59:25','10:59:26','2024-04-03 10:59:25','2024-04-03 10:59:26'),(157,4,'2024-04-03','11:50:08','11:50:09','2024-04-03 11:50:08','2024-04-03 11:50:09'),(158,4,'2024-04-03','12:01:37','12:01:37','2024-04-03 12:01:37','2024-04-03 12:01:37'),(159,4,'2024-04-03','12:20:21','12:20:22','2024-04-03 12:20:21','2024-04-03 12:20:22'),(160,4,'2024-04-03','12:21:11','12:21:12','2024-04-03 12:21:11','2024-04-03 12:21:12'),(161,4,'2024-04-03','12:24:47','12:24:48','2024-04-03 12:24:47','2024-04-03 12:24:48'),(162,4,'2024-04-03','12:33:12','12:33:13','2024-04-03 12:33:12','2024-04-03 12:33:13'),(163,4,'2024-04-03','12:40:00','12:40:01','2024-04-03 12:40:00','2024-04-03 12:40:01'),(164,2,'2024-04-03','12:40:13','12:40:13','2024-04-03 12:40:13','2024-04-03 12:40:13'),(165,4,'2024-04-03','12:40:22','12:40:23','2024-04-03 12:40:22','2024-04-03 12:40:23'),(166,4,'2024-04-03','12:58:07','12:58:08','2024-04-03 12:58:07','2024-04-03 12:58:08'),(167,4,'2024-04-03','13:09:09','13:09:10','2024-04-03 13:09:09','2024-04-03 13:09:10'),(168,4,'2024-04-03','13:56:05','13:56:06','2024-04-03 13:56:05','2024-04-03 13:56:06'),(169,4,'2024-04-03','14:18:33','14:18:34','2024-04-03 14:18:33','2024-04-03 14:18:34'),(170,4,'2024-04-03','14:21:22','14:21:23','2024-04-03 14:21:22','2024-04-03 14:21:23'),(171,5,'2024-04-03','14:22:26','14:22:27','2024-04-03 14:22:26','2024-04-03 14:22:27'),(172,5,'2024-04-03','14:22:31','14:22:39','2024-04-03 14:22:31','2024-04-03 14:22:39'),(173,5,'2024-04-03','14:22:43','14:22:44','2024-04-03 14:22:43','2024-04-03 14:22:44'),(174,5,'2024-04-03','14:22:47','14:22:47','2024-04-03 14:22:47','2024-04-03 14:22:47'),(175,5,'2024-04-03','14:22:49','14:22:50','2024-04-03 14:22:49','2024-04-03 14:22:50'),(176,5,'2024-04-03','14:22:52','14:22:53','2024-04-03 14:22:52','2024-04-03 14:22:53'),(177,6,'2024-04-03','14:23:40','14:23:41','2024-04-03 14:23:40','2024-04-03 14:23:41'),(178,6,'2024-04-03','14:23:44','14:23:45','2024-04-03 14:23:44','2024-04-03 14:23:45'),(179,6,'2024-04-03','14:23:48','14:23:52','2024-04-03 14:23:48','2024-04-03 14:23:52'),(180,6,'2024-04-03','14:23:57','14:23:58','2024-04-03 14:23:57','2024-04-03 14:23:58'),(181,6,'2024-04-03','14:24:02','14:24:03','2024-04-03 14:24:02','2024-04-03 14:24:03'),(182,6,'2024-04-03','14:24:07','14:24:08','2024-04-03 14:24:07','2024-04-03 14:24:08'),(183,4,'2024-04-03','14:33:54','14:33:55','2024-04-03 14:33:54','2024-04-03 14:33:55'),(184,5,'2024-04-03','17:08:25','17:08:26','2024-04-03 17:08:25','2024-04-03 17:08:26'),(185,4,'2024-04-04','13:04:49','13:04:56','2024-04-04 13:04:49','2024-04-04 13:04:56'),(186,4,'2024-04-05','08:17:38','08:17:38','2024-04-05 08:17:38','2024-04-05 08:17:38'),(187,4,'2024-04-05','08:20:09','08:20:11','2024-04-05 08:20:09','2024-04-05 08:20:11'),(188,4,'2024-04-05','08:20:13','08:20:13','2024-04-05 08:20:13','2024-04-05 08:20:13'),(189,4,'2024-04-05','08:20:16','08:20:16','2024-04-05 08:20:16','2024-04-05 08:20:16'),(190,4,'2024-04-05','08:20:18','08:20:19','2024-04-05 08:20:18','2024-04-05 08:20:19'),(191,4,'2024-04-05','08:20:21','08:20:22','2024-04-05 08:20:21','2024-04-05 08:20:22'),(192,5,'2024-04-05','10:44:29','10:44:31','2024-04-05 10:44:29','2024-04-05 10:44:31'),(193,5,'2024-04-05','10:44:34','10:44:36','2024-04-05 10:44:34','2024-04-05 10:44:36'),(194,5,'2024-04-05','10:44:38','10:44:38','2024-04-05 10:44:38','2024-04-05 10:44:38'),(195,6,'2024-04-05','10:44:47','10:44:49','2024-04-05 10:44:47','2024-04-05 10:44:49'),(196,6,'2024-04-05','10:44:53','10:44:55','2024-04-05 10:44:53','2024-04-05 10:44:55'),(197,4,'2024-04-05','10:45:02','10:45:03','2024-04-05 10:45:02','2024-04-05 10:45:03'),(198,4,'2024-04-08','07:33:36','07:33:58','2024-04-08 07:33:36','2024-04-08 07:33:58'),(199,4,'2024-04-08','07:34:21','07:34:21','2024-04-08 07:34:21','2024-04-08 07:34:21'),(200,4,'2024-04-08','08:07:36','08:07:37','2024-04-08 08:07:36','2024-04-08 08:07:37'),(201,4,'2024-04-08','08:08:06','08:08:07','2024-04-08 08:08:06','2024-04-08 08:08:07'),(202,4,'2024-04-08','08:08:11','08:08:12','2024-04-08 08:08:11','2024-04-08 08:08:12'),(203,4,'2024-04-08','08:54:58','08:54:59','2024-04-08 08:54:58','2024-04-08 08:54:59'),(204,4,'2024-04-08','08:55:16','08:55:17','2024-04-08 08:55:16','2024-04-08 08:55:17'),(205,4,'2024-04-08','09:31:36','09:31:37','2024-04-08 09:31:36','2024-04-08 09:31:37'),(206,5,'2024-04-08','12:13:49','12:13:51','2024-04-08 12:13:49','2024-04-08 12:13:51'),(207,5,'2024-04-08','12:16:59','12:16:59','2024-04-08 12:16:59','2024-04-08 12:16:59'),(208,4,'2024-04-08','18:01:50','18:01:56','2024-04-08 18:01:50','2024-04-08 18:01:56'),(209,4,'2024-04-09','09:02:22','09:02:23','2024-04-09 09:02:22','2024-04-09 09:02:23'),(210,4,'2024-04-09','09:03:01','09:03:09','2024-04-09 09:03:01','2024-04-09 09:03:09'),(212,6,'2024-04-10','17:54:42','17:54:43','2024-04-10 17:54:42','2024-04-10 17:54:43'),(219,4,'2024-04-11','10:54:43','10:54:44','2024-04-11 10:54:43','2024-04-11 10:54:44'),(220,4,'2024-04-11','13:43:53','13:43:54','2024-04-11 13:43:53','2024-04-11 13:43:54'),(221,10,'2024-04-11','17:13:59','17:14:00','2024-04-11 17:13:59','2024-04-11 17:14:00'),(222,4,'2024-04-11','17:14:12','17:14:13','2024-04-11 17:14:12','2024-04-11 17:14:13'),(223,4,'2024-04-12','09:03:25','09:03:26','2024-04-12 09:03:25','2024-04-12 09:03:26');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breaktimes`
--

DROP TABLE IF EXISTS `breaktimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breaktimes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attendance_id` bigint unsigned NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `breaktimes_attendance_id_foreign` (`attendance_id`),
  CONSTRAINT `breaktimes_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breaktimes`
--

LOCK TABLES `breaktimes` WRITE;
/*!40000 ALTER TABLE `breaktimes` DISABLE KEYS */;
INSERT INTO `breaktimes` VALUES (1,12,'13:32:48','13:32:51','2024-03-18 13:32:48','2024-03-18 13:32:51'),(2,13,'13:33:08',NULL,'2024-03-18 13:33:08','2024-03-18 13:33:08'),(3,14,'16:22:09','16:22:59','2024-03-18 16:22:09','2024-03-18 16:22:59'),(4,15,'16:23:32','16:25:02','2024-03-18 16:23:32','2024-03-18 16:25:02'),(5,24,'13:54:28','13:54:31','2024-03-19 13:54:28','2024-03-19 13:54:31'),(6,25,'14:11:42','14:11:44','2024-03-19 14:11:42','2024-03-19 14:11:44'),(7,25,'14:11:49','14:11:58','2024-03-19 14:11:49','2024-03-19 14:11:58'),(8,26,'15:16:23','15:16:27','2024-03-19 15:16:23','2024-03-19 15:16:27'),(9,33,'17:02:36','17:02:41','2024-03-19 17:02:36','2024-03-19 17:02:41'),(10,33,'17:02:44','17:02:45','2024-03-19 17:02:44','2024-03-19 17:02:45'),(11,35,'13:37:24','13:37:28','2024-03-21 13:37:24','2024-03-21 13:37:28'),(12,36,'13:38:35','13:38:37','2024-03-21 13:38:35','2024-03-21 13:38:37'),(13,37,'14:03:10','14:03:16','2024-03-21 14:03:10','2024-03-21 14:03:16'),(14,38,'14:03:47','14:03:52','2024-03-21 14:03:47','2024-03-21 14:03:52'),(15,39,'14:11:01','14:11:03','2024-03-21 14:11:01','2024-03-21 14:11:03'),(20,75,'16:45:42','16:45:44','2024-03-26 16:45:42','2024-03-26 16:45:44'),(21,75,'16:45:47','16:45:49','2024-03-26 16:45:47','2024-03-26 16:45:49'),(22,77,'16:46:04','16:46:06','2024-03-26 16:46:04','2024-03-26 16:46:06'),(23,80,'17:07:41','17:07:44','2024-03-26 17:07:41','2024-03-26 17:07:44'),(24,80,'17:07:47','17:07:51','2024-03-26 17:07:47','2024-03-26 17:07:51'),(25,85,'08:53:11','08:53:13','2024-03-27 08:53:11','2024-03-27 08:53:13'),(26,85,'08:53:15','08:53:17','2024-03-27 08:53:15','2024-03-27 08:53:17'),(27,86,'08:53:45','08:57:01','2024-03-27 08:53:45','2024-03-27 08:57:01'),(28,88,'09:03:10','09:03:14','2024-03-27 09:03:10','2024-03-27 09:03:14'),(29,89,'09:03:21','09:03:22','2024-03-27 09:03:21','2024-03-27 09:03:22'),(31,92,'09:17:45','09:17:46','2024-03-27 09:17:45','2024-03-27 09:17:46'),(32,93,'09:18:02','09:18:03','2024-03-27 09:18:02','2024-03-27 09:18:03'),(33,95,'09:34:23','09:34:34','2024-03-27 09:34:23','2024-03-27 09:34:34'),(35,97,'09:52:55','09:52:57','2024-03-27 09:52:55','2024-03-27 09:52:57'),(36,98,'09:55:06','09:55:09','2024-03-27 09:55:06','2024-03-27 09:55:09'),(37,98,'09:55:11','09:55:11','2024-03-27 09:55:11','2024-03-27 09:55:11'),(38,99,'09:57:01','09:57:02','2024-03-27 09:57:01','2024-03-27 09:57:02'),(39,100,'09:57:10','09:57:11','2024-03-27 09:57:10','2024-03-27 09:57:11'),(40,100,'09:57:13','09:57:14','2024-03-27 09:57:13','2024-03-27 09:57:14'),(41,100,'09:57:16','09:57:17','2024-03-27 09:57:16','2024-03-27 09:57:17'),(42,101,'12:28:40','12:28:41','2024-03-27 12:28:40','2024-03-27 12:28:41'),(43,101,'12:28:42','12:28:43','2024-03-27 12:28:42','2024-03-27 12:28:43'),(44,102,'22:04:49','22:04:51','2024-03-28 22:04:49','2024-03-28 22:04:51'),(45,105,'22:11:44','22:11:45','2024-03-28 22:11:44','2024-03-28 22:11:45'),(46,105,'22:11:46','22:11:47','2024-03-28 22:11:46','2024-03-28 22:11:47'),(47,105,'22:11:49','22:11:50','2024-03-28 22:11:49','2024-03-28 22:11:50'),(48,106,'09:12:43','09:12:44','2024-03-29 09:12:43','2024-03-29 09:12:44'),(49,112,'09:29:30','09:29:41','2024-03-29 09:29:30','2024-03-29 09:29:41'),(50,113,'09:40:57','09:40:58','2024-03-29 09:40:57','2024-03-29 09:40:58'),(51,114,'16:40:38','16:40:43','2024-03-29 16:40:38','2024-03-29 16:40:43'),(52,117,'16:43:58','16:43:59','2024-03-29 16:43:58','2024-03-29 16:43:59'),(53,117,'16:44:00','16:44:01','2024-03-29 16:44:00','2024-03-29 16:44:01'),(54,118,'16:49:27','16:49:29','2024-03-29 16:49:27','2024-03-29 16:49:29'),(55,119,'16:50:10','16:50:11','2024-03-29 16:50:10','2024-03-29 16:50:11'),(56,121,'17:31:50','17:31:52','2024-03-29 17:31:50','2024-03-29 17:31:52'),(57,122,'17:57:18','17:57:20','2024-03-29 17:57:18','2024-03-29 17:57:20'),(58,123,'09:01:01','09:01:02','2024-04-01 09:01:01','2024-04-01 09:01:02'),(59,124,'10:26:50','10:26:55','2024-04-01 10:26:50','2024-04-01 10:26:55'),(60,133,'13:05:46','13:05:47','2024-04-01 13:05:46','2024-04-01 13:05:47'),(61,139,'16:35:52','16:35:52','2024-04-01 16:35:52','2024-04-01 16:35:52'),(62,139,'16:35:54','16:35:55','2024-04-01 16:35:54','2024-04-01 16:35:55'),(63,142,'08:05:38','08:05:39','2024-04-03 08:05:38','2024-04-03 08:05:39'),(64,149,'08:06:05','08:06:09','2024-04-03 08:06:05','2024-04-03 08:06:09'),(65,150,'08:06:20','08:06:21','2024-04-03 08:06:20','2024-04-03 08:06:21'),(66,172,'14:22:32','14:22:32','2024-04-03 14:22:32','2024-04-03 14:22:32'),(67,172,'14:22:33','14:22:34','2024-04-03 14:22:33','2024-04-03 14:22:34'),(68,172,'14:22:35','14:22:38','2024-04-03 14:22:35','2024-04-03 14:22:38'),(69,179,'14:23:49','14:23:50','2024-04-03 14:23:49','2024-04-03 14:23:50'),(70,179,'14:23:50','14:23:52','2024-04-03 14:23:50','2024-04-03 14:23:52'),(71,185,'13:04:52','13:04:53','2024-04-04 13:04:52','2024-04-04 13:04:53'),(72,192,'10:44:30','10:44:30','2024-04-05 10:44:30','2024-04-05 10:44:30'),(73,193,'10:44:35','10:44:35','2024-04-05 10:44:35','2024-04-05 10:44:35'),(74,195,'10:44:48','10:44:48','2024-04-05 10:44:48','2024-04-05 10:44:48'),(75,196,'10:44:54','10:44:54','2024-04-05 10:44:54','2024-04-05 10:44:54'),(76,198,'07:33:37','07:33:38','2024-04-08 07:33:37','2024-04-08 07:33:38'),(77,206,'12:13:50','12:13:50','2024-04-08 12:13:50','2024-04-08 12:13:50'),(78,210,'09:03:02','09:03:03','2024-04-09 09:03:02','2024-04-09 09:03:03'),(79,210,'09:03:04','09:03:08','2024-04-09 09:03:04','2024-04-09 09:03:08');
/*!40000 ALTER TABLE `breaktimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (12,'2014_10_12_000000_create_users_table',2),(13,'2014_10_12_100000_create_password_resets_table',2),(14,'2014_10_12_200000_add_two_factor_columns_to_users_table',2),(15,'2019_08_19_000000_create_failed_jobs_table',2),(16,'2019_12_14_000001_create_personal_access_tokens_table',2),(17,'2024_03_17_154058_create_attendances_table',2),(18,'2024_03_17_154126_create_breaktimes_table',3),(19,'2024_04_01_164158_add_admin_to_users_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Example User','user@example.com','2024-04-10 10:12:16','$2y$10$LyvIAXB6yK68d9G72ZioCOI..5FDMstEADeU.WEGbcwQV01f5F7gy',NULL,NULL,NULL,NULL,'2024-03-18 12:19:13','2024-04-10 10:12:16',0),(2,'サントリー','tobenaibutawa_tadanobuta21@yahoo.co.jp','2024-04-10 10:12:16','$2y$10$V/zYvI4TO0qcxf97rzwbkeS7pL1IAvk/CoFhHCCcsZAwxPVbJvSeS',NULL,NULL,NULL,NULL,'2024-03-19 13:47:03','2024-04-10 10:12:16',0),(3,'shuichi sekino','tobenaibutawa.tadanobuta21@yahoo.co.jp','2024-04-10 10:12:16','$2y$10$zSoYnBckkIKVDEWk36knS.PlUzKbflxro7yWHXWmJ5cWQdRB9vpmm',NULL,NULL,NULL,NULL,'2024-03-19 15:54:09','2024-04-10 10:12:16',0),(4,'太郎','tobenaibutawa_tadanobuta99@yahoo.co.jp','2024-04-10 10:12:16','$2y$10$G2BTi1VgoQfYnVSWpF63Ye80IBy84PKDTli2iaSJ8otiJT3sQXzVW',NULL,NULL,NULL,NULL,'2024-03-19 15:58:36','2024-04-10 10:12:16',1),(5,'沢田研二','tobenaibutawa_tadanobuta000@yahoo.co.jp','2024-04-10 10:12:16','$2y$10$VHFyaQUzL/CutGUE3W733ebRao9JaFNUKjsp7yA.6Ns2IeQE.qQe2',NULL,NULL,NULL,NULL,'2024-04-03 14:22:19','2024-04-10 10:12:16',0),(6,'世田谷太郎','tobenaibutawa_tadanobuta777@yahoo.co.jp','2024-04-10 10:12:16','$2y$10$vxuasxJQc8KRj232XNyjfOMvSBlKCgJwfxNmOHVQ4HPnuCWRpKlE2',NULL,NULL,NULL,NULL,'2024-04-03 14:23:34','2024-04-10 10:12:16',0),(10,'大江　裕','tobenaibutawa.tadanobuta21@gmail.com','2024-04-11 17:13:50','$2y$10$mt4xo84mVm./UHySahOEcerKAyu0SzBAuqOR.J3auqHVEO4b3/DyK',NULL,NULL,NULL,NULL,'2024-04-11 17:13:20','2024-04-11 17:13:50',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22  4:19:46