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
-- Table structure for table `Dept`
--

DROP TABLE IF EXISTS `Dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dept`
--

LOCK TABLES `Dept` WRITE;
/*!40000 ALTER TABLE `Dept` DISABLE KEYS */;
INSERT INTO `Dept` VALUES (1,'Performance Studies'),(2,'Mathematics'),(3,'Graduate Study in Education'),(4,'Writing'),(5,'Graduate Study in Business'),(6,'Art'),(7,'No Affiliation'),(8,'Physics and Astronomy'),(9,'Anthropology'),(10,'Chemistry'),(11,'Biochemistry'),(12,'Economics'),(13,'Television-Radio'),(14,'Modern Languages and Literatures'),(15,'Music Theory, History, and Composition'),(16,'Integrative Studies'),(17,'Politics'),(18,'Honors Program'),(19,'Computer Science'),(20,'Music Education'),(21,'Sociology'),(22,'Women\'s and Gender Studies'),(23,'Latin American Studies'),(24,'Physical Therapy'),(25,'New York City Program/Center'),(26,'Journalism'),(27,'Occupational Therapy'),(28,'Graduate Study in Occupational Therapy'),(29,'Health Promotion and Physical Education'),(30,'Graduate Study in Health Promotion and Physical Education'),(31,'JB Pendleton Center Los Angeles'),(32,'Speech-Language Pathology and Audiology'),(33,'Graduate Study in Speech-Language Pathology and Audiology'),(34,'History'),(35,'Physical Therapy Graduate Portion'),(36,'Biology'),(37,'Premed Option'),(38,'Cinema and Photography'),(39,'Philosophy and Religion'),(40,'Communication Studies'),(41,'Accounting'),(42,'Psychology'),(43,'Strategic Communication'),(44,'Environmental Studies and Sciences'),(45,'Sport Management'),(46,'Text Image'),(47,'Jewish Studies'),(48,'Integrated Marketing Communications'),(49,'Communication Management and Design'),(50,'Theatre Arts'),(51,'Recreation and Leisure Studies'),(52,'Center for the Study of Culture, Race, and Ethnicity'),(53,'Documentary Studies and Production'),(54,'Native American Studies'),(55,'Exercise and Sport Sciences'),(56,'Library'),(57,'Finance and International Business'),(58,'Media Arts, Sciences and Studies'),(59,'Marketing and Law'),(60,'Women\'s, and Gender Studies Coordinator, Psychology'),(61,'Education'),(62,'Movement Analysis Lab'),(63,'Art History'),(64,'Graduate Study in Image Text'),(65,'English'),(66,'Gerontology'),(67,'Culture and Communication'),(68,'Classical Studies'),(69,'Medieval and Renaissance Studies'),(70,'School of Music'),(71,'Mathematics and Computer Science'),(72,'Physical Therapy Rochester'),(73,'Executive Masters in Communications Innovation'),(74,'Writing for Film, Television, and Emerging Media'),(75,'Marketing'),(76,'Legal Studies'),(77,'Television and Radio'),(78,'Management'),(79,'Environmental Studies and Science'),(80,'Health Science and Human Perf/Smiddy'),(81,'Sports Media'),(82,'Business Administration'),(83,'Health Science&Human; Perf/Hill Ctr'),(84,'Prelaw Option'),(85,'Health Science and Human Perf/Hill Center'),(86,'Emerging Media Degree'),(87,'Health Promotion and Human Movement');
/*!40000 ALTER TABLE `Dept` ENABLE KEYS */;
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
