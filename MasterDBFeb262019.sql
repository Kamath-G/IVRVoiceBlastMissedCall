-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `audio`
--

DROP TABLE IF EXISTS `audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audio` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audio`
--

LOCK TABLES `audio` WRITE;
/*!40000 ALTER TABLE `audio` DISABLE KEYS */;
INSERT INTO `audio` VALUES (1,'NONE',NULL),(2,'MainRJ',NULL),(3,'thankyou',NULL),(4,'Main',NULL),(6,'FRIST',NULL),(7,'SECOND',NULL),(9,'press2',NULL),(10,'press1I',NULL),(11,'press2i',NULL),(12,'thankyou',NULL),(13,'thankyou1','59.042'),(14,'Wecome','271.782');
/*!40000 ALTER TABLE `audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `callHistory`
--

DROP TABLE IF EXISTS `callHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callHistory` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `call_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `startEpoch` varchar(20) DEFAULT NULL,
  `callee` varchar(20) DEFAULT NULL,
  `called` varchar(20) DEFAULT NULL,
  `DID` varchar(10) DEFAULT NULL,
  `pri` varchar(2) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(4) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `recording` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callHistory`
--

LOCK TABLES `callHistory` WRITE;
/*!40000 ALTER TABLE `callHistory` DISABLE KEYS */;
INSERT INTO `callHistory` VALUES (1,'2019-02-20 03:22:31','1550632951','9535415801','8618057188','46285005','4','2019-02-20 08:52:50',0,'CHANUNAVAIL','20190220-085250__8618057188_all.mp3'),(2,'2019-02-20 03:23:37','1550633017','9535415801','8618057188','46285005','4','2019-02-20 08:53:52',0,'CHANUNAVAIL','20190220-085352__8618057188_all.mp3'),(3,'2019-02-20 03:24:07','1550633047','9535415801','8618057188','46285005','4','2019-02-20 08:54:52',26,'ANSWER','20190220-085417__8618057188_all.mp3'),(4,'2019-02-23 15:45:39','1550936739','9535415801','8618057188','46285005','4',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `callHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `did_api`
--

DROP TABLE IF EXISTS `did_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `did_api` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `vendor` varchar(30) DEFAULT NULL,
  `did` varchar(30) DEFAULT NULL,
  `api` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `did_api`
--

LOCK TABLES `did_api` WRITE;
/*!40000 ALTER TABLE `did_api` DISABLE KEYS */;
INSERT INTO `did_api` VALUES (1,'Vidhu','46285110','http://app.rajhans.digital/api/WebService/InsertMisscallLog'),(2,'Vidhu','46285001','http://app.rajhans.digital/api/WebService/InsertMisscallLog');
/*!40000 ALTER TABLE `did_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `did_range`
--

DROP TABLE IF EXISTS `did_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `did_range` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(50) DEFAULT NULL,
  `serviceType` varchar(30) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `didStart` varchar(30) DEFAULT NULL,
  `didEnd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `did_range`
--

LOCK TABLES `did_range` WRITE;
/*!40000 ALTER TABLE `did_range` DISABLE KEYS */;
INSERT INTO `did_range` VALUES (1,'Vidhu','ivrRecord','Y','46285100','46285110'),(2,'Vidhu','missedCall','Y','46285110','46285120'),(3,'Aditya','ivrRecord','Y','46285130','46285140'),(4,'rajesh','ivrRecord','Y','46288000','46288050'),(5,'demo','ivrRecord','Y','46285047','46285047'),(7,'Cafeday','voiceBlast','Y','46285155','46285156'),(8,'smile','missedCall','Y','46285200','46285205'),(9,'Rajhans','ivrRecord','Y','46285010','46285010'),(10,'Notice','ivrRecord','Y','46288080','46288080'),(11,'Notice','missedCall','Y','46285080','46285080'),(12,'Rajhans Notice','missedCall','Y','46285080','46285080'),(13,'Rajhans','ivrRecord','Y','46285080','46285080'),(14,'Rajhans','missedCall','Y','46285080','46285080'),(15,'Rajhans','missedCall','Y','46285080','46285080'),(16,'Press','missedCall','Y','46285090','46285090'),(17,'INBOUND BLAST','missedCall','Y','46285901','46285901'),(18,'IN_BLA_TEST','missedCall','Y','46285091','46285092'),(19,'iNDIA','missedCall','Y','46285092','46285092'),(20,'Rajpur','ivrRecord','Y','46285047','46285047'),(21,'Indane','voiceBlast','Y','46285095','46285095'),(24,'Trial_01','voiceBlast','Y','46285095','46285095'),(25,'Trial_IVR_01','ivrRecord','Y','46285096','46285096');
/*!40000 ALTER TABLE `did_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ivr_record`
--

DROP TABLE IF EXISTS `ivr_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ivr_record` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `did` varchar(20) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `method` varchar(20) DEFAULT NULL,
  `audio1` varchar(30) DEFAULT NULL,
  `audio2` varchar(30) DEFAULT NULL,
  `audio3` varchar(30) DEFAULT NULL,
  `api` text,
  `asteriskload` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ivr_record`
--

LOCK TABLES `ivr_record` WRITE;
/*!40000 ALTER TABLE `ivr_record` DISABLE KEYS */;
INSERT INTO `ivr_record` VALUES (3,'08046288020','NP_TEST','46288020','Y','dtmf','NONE','press1I','thankyou1','TEST','N'),(6,'Vidhu','desc','46285110','Y','record','FIRST','NONE','SECOND','test','N'),(13,'Trial_IVR_01','First Trial IVR','46285096','Y','record','Wecome','NONE','SECOND','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(12,'Rajpur','Nagar Parishad','46285047','Y','record','Main','NONE','SECOND','http://app.rajhans.digital/api/WebService/InsertMisscallLog??sourceNumber=$caller','N'),(14,'Trial_IVR_01','temp','46285096','Y','record','Wecome','NONE','SECOND','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N');
/*!40000 ALTER TABLE `ivr_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missedcall`
--

DROP TABLE IF EXISTS `missedcall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missedcall` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `context` varchar(20) DEFAULT NULL,
  `description` text,
  `did` varchar(15) DEFAULT NULL,
  `wait` int(3) DEFAULT '5',
  `audio` varchar(50) DEFAULT NULL,
  `api` text,
  `asteriskload` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missedcall`
--

LOCK TABLES `missedcall` WRITE;
/*!40000 ALTER TABLE `missedcall` DISABLE KEYS */;
INSERT INTO `missedcall` VALUES (1,'MissedCall','MissedCallService','46285001',5,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(2,'missedCall','missedcallwithaudio','46285002',0,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog?','N'),(3,'MissedCall','SwatchBharat','46285003',0,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(7,'Aditya','Aditya','_4628[5-9]XXX',5,'NONE','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(18,'IN_BLA_TEST','TEST','46285091',0,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(20,'RajIndane','Temp','46285093',5,'NONE','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(21,'RajIndane','Temp','46285093',0,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N');
/*!40000 ALTER TABLE `missedcall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiceBlast`
--

DROP TABLE IF EXISTS `voiceBlast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voiceBlast` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `active` varchar(8) DEFAULT 'INACTIVE',
  `did` varchar(30) DEFAULT NULL,
  `campaign` varchar(8) DEFAULT NULL,
  `user` int(4) DEFAULT NULL,
  `numOfChannels` int(4) DEFAULT NULL,
  `audio` varchar(30) DEFAULT NULL,
  `api` text,
  `asteriskload` varchar(3) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiceBlast`
--

LOCK TABLES `voiceBlast` WRITE;
/*!40000 ALTER TABLE `voiceBlast` DISABLE KEYS */;
INSERT INTO `voiceBlast` VALUES (1,'omsai','Omsai saranam','N','46285140','aastell',7000,1,'MainRJ','test','N'),(2,'Cafeday','cafeday','INACTIVE','46285155','NewVB',7100,1,'press1I','test','N'),(3,'omsai','test','INACTIVE','46285140','dhamnod',4511,30,'MainRJ','test','N'),(4,'Cafeday','smilepelase','INACTIVE','46285155','NewVB',7200,1,'press1I','test','N'),(5,'Cafeday','test','INACTIVE','46285155','election',1234,1,'thankyou1','test','N'),(6,'Indane','Voice','INACTIVE','46285095','15374',1990,1,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N'),(7,'Trial_01','Trial_First','INACTIVE','46285095','Trial_01',5095,1,'MainRJ','http://app.rajhans.digital/api/WebService/InsertMisscallLog','N');
/*!40000 ALTER TABLE `voiceBlast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26 14:30:17
