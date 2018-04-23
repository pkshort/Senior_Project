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
-- Table structure for table `tDept`
--

DROP TABLE IF EXISTS `tDept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tDept` (
  `School` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `depID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tDept`
--

LOCK TABLES `tDept` WRITE;
/*!40000 ALTER TABLE `tDept` DISABLE KEYS */;
INSERT INTO `tDept` VALUES ('School of Music','Performance Studies',1),('School of Humanities and Sciences','Mathematics',2),('School of Humanities and Sciences','Graduate Study in Education',3),('School of Humanities and Sciences','Writing',4),('No Affiliation','Graduate Study in Business',5),('School of Humanities and Sciences','Art',6),('School of Humanities and Sciences','No Affiliation',7),('School of Humanities and Sciences','Physics and Astronomy',8),('School of Humanities and Sciences','Anthropology',9),('School of Humanities and Sciences','Chemistry',10),('School of Humanities and Sciences','Biochemistry',11),('School of Humanities and Sciences','Economics',12),('No Affiliation','Television-Radio',13),('School of Humanities and Sciences','Modern Languages and Literatures',14),('School of Music','Music Theory, History, and Composition',15),('School of Music','Integrative Studies',16),('School of Humanities and Sciences','Politics',17),('School of Humanities and Sciences','Honors Program',18),('School of Humanities and Sciences','Computer Science',19),('School of Music','Music Education',20),('School of Humanities and Sciences','Sociology',21),('School of Humanities and Sciences','Women\'s and Gender Studies',22),('School of Humanities and Sciences','Latin American Studies',23),('School of Health Sciences and Human Performance','Physical Therapy',24),('No Affiliation','New York City Program/Center',25),('Roy H. Park School of Communications','Journalism',26),('School of Health Sciences and Human Performance','Occupational Therapy',27),('School of Health Sciences and Human Performance','Graduate Study in Occupational Therapy',28),('School of Health Sciences and Human Performance','Health Promotion and Physical Education',29),('School of Health Sciences and Human Performance','Graduate Study in Health Promotion and Physical Education',30),('School of Health Sciences and Human Performance','Women\'s and Gender Studies',22),('No Affiliation','JB Pendleton Center Los Angeles',31),('School of Health Sciences and Human Performance','Speech-Language Pathology and Audiology',32),('School of Health Sciences and Human Performance','Graduate Study in Speech-Language Pathology and Audiology',33),('School of Music','No Affiliation',7),('School of Humanities and Sciences','History',34),('School of Health Sciences and Human Performance','Physical Therapy Graduate Portion',35),('School of Humanities and Sciences','Biology',36),('School of Humanities and Sciences','Premed Option',37),('No Affiliation','Cinema and Photography',38),('No Affiliation','No Affiliation',7),('School of Humanities and Sciences','Philosophy and Religion',39),('School of Humanities and Sciences','Communication Studies',40),('No Affiliation','Accounting',41),('School of Humanities and Sciences','Psychology',42),('No Affiliation','Strategic Communication',43),('No Affiliation','Environmental Studies and Sciences',44),('No Affiliation','Sport Management',45),('No Affiliation','Text Image',46),('School of Humanities and Sciences','Jewish Studies',47),('No Affiliation','Integrated Marketing Communications',48),('No Affiliation','Communication Management and Design',49),('School of Humanities and Sciences','Theatre Arts',50),('School of Health Sciences and Human Performance','Recreation and Leisure Studies',51),('No Affiliation','Center for the Study of Culture, Race, and Ethnicity',52),('No Affiliation','Documentary Studies and Production',53),('No Affiliation','Physics and Astronomy',8),('School of Humanities and Sciences','Native American Studies',54),('School of Health Sciences and Human Performance','Exercise and Sport Sciences',55),('No Affiliation','Library',56),('No Affiliation','Finance and International Business',57),('No Affiliation','Media Arts, Sciences and Studies',58),('No Affiliation','Marketing and Law',59),('School of Humanities and Sciences','Women\'s, and Gender Studies Coordinator, Psychology',60),('School of Humanities and Sciences','Education',61),('School of Health Sciences and Human Performance','Movement Analysis Lab',62),('School of Health Sciences and Human Performance','Latin American Studies',23),('School of Humanities and Sciences','Art History',63),('School of Health Sciences and Human Performance','No Affiliation',7),('School of Humanities and Sciences','Graduate Study in Image Text',64),('School of Humanities and Sciences','English',65),('School of Health Sciences and Human Performance','Premed Option',37),('No Affiliation','Integrative Studies',16),('No Affiliation','Gerontology',66),('No Affiliation','Education',61),('School of Humanities and Sciences','Culture and Communication',67),('School of Humanities and Sciences','Classical Studies',68),('School of Humanities and Sciences','Medieval and Renaissance Studies',69),('No Affiliation','Women\'s and Gender Studies',22),('No Affiliation','School of Music',70),('No Affiliation','Mathematics and Computer Science',71),('School of Music','New York City Program/Center',25),('No Affiliation','Physical Therapy Rochester',72),('School of Music','Women\'s and Gender Studies',22),('No Affiliation','Mathematics',2),('No Affiliation','Executive Masters in Communications Innovation',73),('No Affiliation','Writing for Film, Television, and Emerging Media',74),('No Affiliation','Graduate Study in Education',3),('No Affiliation','Marketing',75),('No Affiliation','Legal Studies',76),('School of Humanities and Sciences','Integrative Studies',16),('No Affiliation','Television and Radio',77),('No Affiliation','Management',78),('No Affiliation','Latin American Studies',23),('Roy H. Park School of Communications','Documentary Studies and Production',53),('School of Business','No Affiliation',7),('No Affiliation','Environmental Studies and Science',79),('Roy H. Park School of Communications','No Affiliation',7),('School of Health Sciences and Human Performance','Health Science and Human Perf/Smiddy',80),('No Affiliation','Sports Media',81),('No Affiliation','Business Administration',82),('School of Health Sciences and Human Performance','Integrative Studies',16),('No Affiliation','Health Science&Human; Perf/Hill Ctr',83),('Roy H. Park School of Communications','Sports Media',81),('No Affiliation','Honors Program',18),('School of Humanities and Sciences','Prelaw Option',84),('School of Humanities and Sciences','Environmental Studies and Sciences',44),('No Affiliation','Health Science and Human Perf/Hill Center',85),('School of Humanities and Sciences','Emerging Media Degree',86),('School of Music','Latin American Studies',23),('School of Music','Jewish Studies',47),('No Affiliation','Writing',4),('No Affiliation','Recreation and Leisure Studies',51),('School of Humanities and Sciences','Movement Analysis Lab',62),('No Affiliation','Psychology',42),('No Affiliation','Health Promotion and Human Movement',87);
/*!40000 ALTER TABLE `tDept` ENABLE KEYS */;
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
