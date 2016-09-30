-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: loginsystem
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'patricia.gambula@gmail.com','$2y$10$vNEX90OTpAyVzBiyyIhEY.1608vzZ2IhM4qwrlrqzs5dxFmE3gv7C'),(2,'patricia.gambula@gmail.com','$2y$10$49Wjo8y0lX707yCEuTgbJ.NLW0nHPs.iSNTBMTJzP2pqv1MY1Yy3K'),(3,'heje@kom.com','$2y$10$hzRYHMWXvC7VnJ2d/t5MIu3K2vhu70McPCR2n7GDU55faPF9gU/NS'),(4,'patricia.gambula@gmail.com','$2y$10$Bu1M5qPo/Lpc77ddrlFiaucTZo5j35H7bLr6WOoMr8Hz0P6KfR1KG'),(5,'patricia.gambula@gmail.com','$2y$10$RPU8M1JpJ8aLbHB8Xxa6H.zhmzR0CJzR8zLuVY.mf6l1koUrnckrW'),(6,'hej@admin.com','$2y$10$dd3SsTmVitpJXl8i53NNr.r4ZEKtSzLXz.ROBXcWgy9uwF7yQRhG.'),(7,'aklykkebie@gmail.com','$2y$10$68kUehYBAg2eCeNAQZipN.KSRCYj1q5sWiq77IREFlX9k75/NtWPG'),(8,'haloo@haloo.dk','$2y$10$Z9kO..KdzV6I9RtZWtuDOeXnnZnuzqRfuDCX22VQyhUrNxYdCo/4y'),(9,'pgl_00@hotmail.com','$2y$10$4vQFtu7lpldm.hKQsQ8qo./wOAJCQBjkHv25sOtnfQNsiaXad8R0K'),(10,'hej@dom.com','$2y$10$TUk0EpOP7UxNoX4iWQZzyOmRjcc5nlH9.y/tRDl/Dm1GoSpCf78LK'),(11,'123@123.com','$2y$10$MOvmu/pAtvjqw7U5BiNyI.oU9TvdMI7PE2o6dcKaF4EoGd13MknEK');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-30 10:24:11
