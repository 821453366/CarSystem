-- MySQL dump 10.13  Distrib 5.5.40, for Win64 (x86)
--
-- Host: 127.0.0.1    Database: car
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carname` varchar(20) NOT NULL,
  `carEntity` varchar(20) NOT NULL,
  `carPrice` varchar(20) NOT NULL,
  `carSize` varchar(20) NOT NULL,
  `carFuelConsumption` varchar(20) NOT NULL,
  `carDisplacement` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'比亚迪','2017款EV300豪华型','26.59万','5座','7.76L/100KM','225'),(2,'宝马','2017款xDrive40e插电式混合动','92.80万','4座','12.7L/100KM','365'),(4,'福特','2017款 EcoBoost180两驱精','18.48万','4座','12.16L/100KM','155'),(5,'保时捷','2016款718Cayman2.0T','18.48万','2座','18.13L/100KM','56'),(9,'东风本田','2016款suv','12.9万','4座','7.3L/100KM','155'),(21,'宝马','2017','22.5万','12','12','12'),(22,'奔驰','2017','22.5万','11','11','11'),(23,'宝马','2017','22.5万','12','12','12'),(24,'奔驰','2017','22.5万','11','11','11'),(25,'宝马','2017','22.5万','12','12','12'),(26,'奔驰','2017','22.5万','11','11','11'),(27,'宝马','2017','22.5万','12','12','12'),(28,'奔驰','2017','22.5万','11','11','11'),(29,'宝马','2017','22.5万','12','12','12'),(30,'奔驰','2017','22.5万','11','11','11'),(31,'宝马','2017','22.5万','12','12','12'),(32,'奔驰','2017','22.5万','11','11','11'),(33,'宝马','2017','22.5万','12','12','12'),(34,'奔驰','2017','22.5万','11','11','11'),(35,'宝马','2017','22.5万','12','12','12'),(36,'奔驰','2017','22.5万','11','11','11'),(37,'宝马','2017','22.5万','12','12','12'),(38,'奔驰','2017','22.5万','11','11','11'),(39,'宝马','2017','22.5万','12','12','12'),(40,'奔驰','2017','22.5万','11','11','11'),(41,'宝马','2017','22.5万','12','12','12'),(42,'奔驰','2017','22.5万','11','11','11'),(43,'宝马','2017','22.5万','12','12','12'),(44,'奔驰','2017','22.5万','11','11','11'),(45,'宝马','2017','22.5万','12','12','12'),(46,'奔驰','2017','22.5万','11','11','11'),(47,'宝马','2017','22.5万','12','12','12'),(48,'奔驰','2017','22.5万','11','11','11'),(49,'宝马','2017','22.5万','12','12','12'),(50,'奔驰','2017','22.5万','11','11','11'),(51,'宝马','2017','22.5万','12','12','12'),(52,'奔驰','2017','22.5万','11','11','11'),(53,'宝马','2017','22.5万','12','12','12'),(54,'奔驰','2017','22.5万','11','11','11'),(55,'宝马','2017','22.5万','12','12','12'),(56,'奔驰','2017','22.5万','11','11','11'),(57,'宝马','2017','22.5万','12','12','12'),(58,'奔驰','2017','22.5万','11','11','11'),(59,'宝马','2017','22.5万','12','12','12'),(60,'奔驰','2017','22.5万','11','11','11'),(61,'宝马','2017','22.5万','12','12','12'),(62,'奔驰','2017','22.5万','11','11','11'),(63,'宝马','2017','22.5万','12','12','12'),(64,'奔驰','2017','22.5万','11','11','11'),(65,'宝马','2017','22.5万','12','12','12');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','123','男','754545',12,'总经理');
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

-- Dump completed on 2017-12-09 19:49:44
