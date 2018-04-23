-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: kevin
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `ProfType`
--

DROP TABLE IF EXISTS `ProfType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProfType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProfType`
--

LOCK TABLES `ProfType` WRITE;
/*!40000 ALTER TABLE `ProfType` DISABLE KEYS */;
INSERT INTO `ProfType` VALUES (1,'Lecturer'),(2,'Associate Professor'),(3,'Dana Professor'),(4,'No Affiliation'),(5,'Emeritus Professor'),(6,'Assistant Professor'),(7,'Professor'),(8,'Associate Professor and Honors Program Director'),(9,'Professor and Chair'),(10,'Clinical Assistant Professor'),(11,'Retired Professor'),(12,'Retired Professor, Chair, and Graduate Chair'),(13,'Associate Professor and Assistant Chair'),(14,'Retired Associate Professor'),(15,'Emerita Professor'),(16,'Associate Professor and Chair'),(17,'Associate Professor and Latin American Studies Coordinator'),(18,'Professor Emeritus'),(19,'Clinical Professor and Associate Chair'),(20,'Retired Clinical Assistant Professor and Fieldwork Coordinator'),(21,'Associate Professor and Director'),(22,'Assistant Professor, Visiting'),(23,'Retired Assistant Professor'),(24,'Adjunct Clinical Assistant Professor and Program Director'),(25,'Clinical Professor'),(26,'Clinical Associate Professor and Clinic Director'),(27,'Retired Clinical Associate Professor and Clinical Program Director'),(28,'Assistant Professor, Adjunct'),(29,'Clinical Associate Professor'),(30,'Professor and Associate Chair'),(31,'Associate Professor and Communication'),(32,'Associate Professor and Emerging Media Program Director'),(33,'Associate Professor and Culture & Communication Major Coordinator'),(34,'Associate Professor and Exploratory Program Director'),(35,'Retired Associate Professor and Director'),(36,'Professor and Legal Studies Program Coordinator'),(37,'Associate Professor and Director HSHP China Exchange Program'),(38,'Retired Assistant Professor, Adjunct'),(39,'Clinical Assistant Professor, Graduate Chair, Fieldwork Coordinator'),(40,'Professor and Chair Graduate Program'),(41,'Assistant Professor and Honors Program Coordinator'),(42,'Professor and Director'),(43,'Retired Associate Professor and Coordinator'),(44,'Retired Clinical Assistant Professor'),(45,''),(46,'Assistant Professor and Associate Director Clinical Education'),(47,'Associate Professor and Chair Graduate Program'),(48,'Retired Adjunct Clinical Assistant Professor and Fieldwork Coordinator'),(49,'Pendleton Endowed Chair and Assistant Professor'),(50,'Clinical Associate Professor,Clinical Director,Graduate Chair'),(51,'Associate Professor and Documentary Studies Program Coordinator'),(52,'Assistant Professor and Director Clinical Education'),(53,'Retired Dana Professor'),(54,'Retired Clinical Associate Professor'),(55,'Associate Professor and Program Director'),(56,'Associate Professor and Television-Radio Program Director'),(57,'Associate Professor and Jewish Studies Coordinator'),(58,'Clinical Assistant Professor and Fieldwork Coordinator'),(59,'Director and Associate Professor'),(60,'Pendleton Endowed Chair and Associate Professor Professor'),(61,'Professor Emeritus and Lecturer'),(62,'Associate Professor and Director of the Integrative Core Curriculum');
/*!40000 ALTER TABLE `ProfType` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-05  0:45:57
