-- MySQL dump 10.13  Distrib 5.5.29, for Win32 (x86)
--
-- Host: localhost    Database: sms
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `activationstatus`
--

DROP TABLE IF EXISTS `activationstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activationstatus` (
  `stat` varchar(2) DEFAULT NULL,
  `schooladdress` varchar(200) DEFAULT NULL,
  `board` varchar(10) DEFAULT NULL,
  `affno` varchar(20) DEFAULT NULL,
  `logoloc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activationstatus`
--

LOCK TABLES `activationstatus` WRITE;
/*!40000 ALTER TABLE `activationstatus` DISABLE KEYS */;
INSERT INTO `activationstatus` VALUES ('0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activationstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addedclasses`
--

DROP TABLE IF EXISTS `addedclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addedclasses` (
  `classname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addedclasses`
--

LOCK TABLES `addedclasses` WRITE;
/*!40000 ALTER TABLE `addedclasses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addedclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classlist`
--

DROP TABLE IF EXISTS `classlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classlist` (
  `Classes` varchar(30) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classlist`
--

LOCK TABLES `classlist` WRITE;
/*!40000 ALTER TABLE `classlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `classlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epreviousexperience`
--

DROP TABLE IF EXISTS `epreviousexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epreviousexperience` (
  `empno` varchar(10) DEFAULT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `previous_school_address` varchar(100) DEFAULT NULL,
  `duration` varchar(3) DEFAULT NULL,
  `reference_person` varchar(100) DEFAULT NULL,
  `reference_person_address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epreviousexperience`
--

LOCK TABLES `epreviousexperience` WRITE;
/*!40000 ALTER TABLE `epreviousexperience` DISABLE KEYS */;
/*!40000 ALTER TABLE `epreviousexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equalification`
--

DROP TABLE IF EXISTS `equalification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equalification` (
  `empno` varchar(10) DEFAULT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `institute_address` varchar(100) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `percentage` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equalification`
--

LOCK TABLES `equalification` WRITE;
/*!40000 ALTER TABLE `equalification` DISABLE KEYS */;
/*!40000 ALTER TABLE `equalification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fpass`
--

DROP TABLE IF EXISTS `fpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fpass` (
  `username` varchar(30) DEFAULT NULL,
  `sq` varchar(100) DEFAULT NULL,
  `sans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fpass`
--

LOCK TABLES `fpass` WRITE;
/*!40000 ALTER TABLE `fpass` DISABLE KEYS */;
INSERT INTO `fpass` VALUES ('admin','What was your first pet name?','tom');
/*!40000 ALTER TABLE `fpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `name` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('principal','admin','password','a');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `empno` int(5) NOT NULL,
  `empname` varchar(30) DEFAULT NULL,
  `fathername` varchar(30) DEFAULT NULL,
  `mothername` varchar(30) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `bloodgroup` varchar(3) DEFAULT NULL,
  `yob` varchar(4) DEFAULT NULL,
  `mob` varchar(4) DEFAULT NULL,
  `dob` varchar(4) DEFAULT NULL,
  `martialstatus` varchar(20) DEFAULT NULL,
  `laddress` varchar(300) DEFAULT NULL,
  `ldistrict` varchar(15) DEFAULT NULL,
  `lpin` varchar(6) DEFAULT NULL,
  `lstate` varchar(15) DEFAULT NULL,
  `llandline` varchar(15) DEFAULT NULL,
  `lcell` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `paddress` varchar(300) DEFAULT NULL,
  `pdistrict` varchar(15) DEFAULT NULL,
  `ppin` varchar(6) DEFAULT NULL,
  `pstate` varchar(15) DEFAULT NULL,
  `plandline` varchar(15) DEFAULT NULL,
  `pcell` varchar(13) DEFAULT NULL,
  `yoj` varchar(4) DEFAULT NULL,
  `moj` varchar(4) DEFAULT NULL,
  `doj` varchar(4) DEFAULT NULL,
  `basic_pay` varchar(9) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `nature_of_job` varchar(10) DEFAULT NULL,
  `photopath` varchar(500) DEFAULT NULL,
  `curstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `schno` int(5) NOT NULL,
  `class` varchar(4) DEFAULT NULL,
  `section` varchar(2) DEFAULT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fathername` varchar(25) DEFAULT NULL,
  `mothername` varchar(25) DEFAULT NULL,
  `yob` varchar(20) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `bloodgroup` varchar(3) DEFAULT NULL,
  `parentwpadd` varchar(300) DEFAULT NULL,
  `parentcellno` varchar(12) DEFAULT NULL,
  `parentofficeno` varchar(12) DEFAULT NULL,
  `laddress` varchar(200) DEFAULT NULL,
  `ldistrict` varchar(30) DEFAULT NULL,
  `lpostalcode` int(8) DEFAULT NULL,
  `lcell` bigint(30) DEFAULT NULL,
  `llandline` varchar(30) DEFAULT NULL,
  `lstate` varchar(15) DEFAULT NULL,
  `paddress` varchar(200) DEFAULT NULL,
  `pdistrict` varchar(30) DEFAULT NULL,
  `ppostalcode` int(8) DEFAULT NULL,
  `pcell` bigint(30) DEFAULT NULL,
  `plandline` varchar(30) DEFAULT NULL,
  `pstate` varchar(15) DEFAULT NULL,
  `previousschool` varchar(200) DEFAULT NULL,
  `previouseducationstate` varchar(30) DEFAULT NULL,
  `previousclass` varchar(4) DEFAULT NULL,
  `lastpercent` decimal(5,2) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `curstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`schno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-11 19:26:38
