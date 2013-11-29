-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sample_app2
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `microposts`
--

DROP TABLE IF EXISTS `microposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_microposts_on_user_id_and_created_at` (`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microposts`
--

LOCK TABLES `microposts` WRITE;
/*!40000 ALTER TABLE `microposts` DISABLE KEYS */;
INSERT INTO `microposts` VALUES (2,'Hello Hello!!',1,'2013-11-29 17:51:13','2013-11-29 17:51:13'),(3,'Ami 1ta suorer baccha..',2,'2013-11-29 18:07:06','2013-11-29 18:07:06'),(4,'Ready to accept hard challenge from behind :)\r\n',4,'2013-11-29 18:08:34','2013-11-29 18:08:34'),(5,'I am going crazy tonight!!!',1,'2013-11-29 18:34:34','2013-11-29 18:34:34'),(6,'Feeling like heaven..',1,'2013-11-29 18:41:54','2013-11-29 18:41:54'),(7,'Ufff it\'s awesome!!\r\n',1,'2013-11-29 18:42:26','2013-11-29 18:42:26'),(8,'This night never ends..',1,'2013-11-29 18:44:03','2013-11-29 18:44:03'),(9,'I need a drink now...',1,'2013-11-29 18:49:52','2013-11-29 18:49:52'),(10,'Hello... My First Post....',5,'2013-11-29 18:56:36','2013-11-29 18:56:36'),(11,'Hii......',8,'2013-11-29 19:04:15','2013-11-29 19:04:15'),(12,'whats up??',10,'2013-11-29 19:16:43','2013-11-29 19:16:43'),(13,'well done...sudip...',10,'2013-11-29 19:17:43','2013-11-29 19:17:43');
/*!40000 ALTER TABLE `microposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131105151628'),('20131119140237'),('20131121132402'),('20131128122138');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_remember_token` (`remember_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sudip Sahoo','sudipsahoo@gmail.com',NULL,'2013-11-24 12:53:13','2013-11-29 18:29:46','$2a$10$kDOMH7DCmNxBjLcwweUenOVerLjn.6sVz1ONw7oD2o/smfkpOGSx2','381ad5c5d3a6e488f2238b379950592313fa8ce7'),(2,'Kunal Roy','kunal.roy@gmail.com',NULL,'2013-11-24 12:54:57','2013-11-29 18:06:21','$2a$10$8epzLYOTWkfaexhbgng3zuGxHg6v07Y9XAEUCE7K3XZOc0sbOrVWi','26968f6c8ff131bb147e8d87a40b3e0afd7f5fd4'),(3,'Rahul Biswas','biswas.rahul2010@gmail.com',NULL,'2013-11-24 12:55:23','2013-11-24 12:55:23','$2a$10$ZdiGVfr8SM53UJ2vwx.6QeyKPxXIZsz6XYKkUIu5QiI9ET6UVD9we','6be69feba3e61abab6693184323817cf552c5fbc'),(4,'Subrata Laskar','laskar.subrata@gmail.com',NULL,'2013-11-24 12:56:41','2013-11-29 18:26:22','$2a$10$fAno10pS7xUrnc2VUylBhePAWAvCKUHLx5QSnK8loATUnrUL7IPkG','cb802de5aeca7c9b869f7029e3c7b98ac7abc201'),(5,'Pinaki Dasgupta','pinaki.dasgupta@gmail.com',NULL,'2013-11-24 12:57:24','2013-11-29 18:56:04','$2a$10$i4/2rHH16GOHaSHTp3xFHe6/I0/ws4p3cKTMI4VzqTu15YvGy9L6O','9a9c091f5b52d4a2381073b1e3259f98efbdc147'),(6,'Abhishek Patra','abhishek.patra@gmail.com',NULL,'2013-11-24 12:58:05','2013-11-24 12:58:05','$2a$10$G.ygA7dvQsFpsQ4h5MeM0.ZbHb7uJH.YED3RN5lIsl1Y6DOsUhQfe','49de22f746e8d779175350bb09fbb7951ef3e3ac'),(7,'Moloy Mukherjee','mukherjee.moloy@gmail.com',NULL,'2013-11-24 13:01:17','2013-11-24 13:01:17','$2a$10$y2/4KyoCxaUgCIeIJ76eGOhMYySbwFmupHYPWdw2VjXAy245HvPM.','b0b49b86c670c0f76d3eae24dd6e5e9ba7934527'),(8,'Chandramadhab Sadhukhan','chandra@gmail.com',NULL,'2013-11-24 13:40:23','2013-11-29 19:03:11','$2a$10$1Uc1BjydKnCkOgIuq0fRGOu6LrvQJpWYhaf5BiNvMuaIEUyFMOary','2be44a0069de6e97f7a6f210f31ebc950fc3ae9f'),(9,'Shreya Saha','saha.shreya@gmail.com',NULL,'2013-11-25 06:37:41','2013-11-25 06:37:41','$2a$10$4unjI4z7O3jSesy4/BWoku2BYEu.MqcRWTuoL9iBRLiQR/Vi6VRtu','2fd6eb85e316863c1d1e7bdb53c67b9dc563ddfa'),(10,'Indranil srakar','indra.tukai@gmail.com',NULL,'2013-11-29 19:10:50','2013-11-29 19:10:51','$2a$10$yC9r3uNBX3WzyoAxgrAa5uyZjU0dAGSID52oLe4z3bn1oOIQ3pPWa','7eac3a081616e8713db5767f7336fb41292dba74');
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

-- Dump completed on 2013-11-30  1:09:11
