-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: doctorapp
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `doc_appointment`
--

DROP TABLE IF EXISTS `doc_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_appointment` (
  `iddoc_appointment` int(11) NOT NULL,
  `PatientName` varchar(100) DEFAULT NULL,
  `PatientId` varchar(10) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `EmailID` varchar(200) DEFAULT NULL,
  `DoctorId` int(11) DEFAULT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `ScheduleOn` datetime DEFAULT NULL,
  `AtTime` varchar(15) DEFAULT NULL,
  `NumberofMinitues` varchar(15) DEFAULT NULL,
  `PlannedProcedure` varchar(5000) DEFAULT NULL,
  `Notes` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`iddoc_appointment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_appointment`
--

LOCK TABLES `doc_appointment` WRITE;
/*!40000 ALTER TABLE `doc_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_doctordetails`
--

DROP TABLE IF EXISTS `doc_doctordetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_doctordetails` (
  `Doctor_Id` int(11) NOT NULL,
  `DoctorImagePath` varchar(45) DEFAULT NULL,
  `Doctorspecialization` int(11) DEFAULT NULL,
  `HighestDegree` int(11) DEFAULT NULL,
  `Experience` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Doctor_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_doctordetails`
--

LOCK TABLES `doc_doctordetails` WRITE;
/*!40000 ALTER TABLE `doc_doctordetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_doctordetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_events`
--

DROP TABLE IF EXISTS `doc_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_events` (
  `EventId` int(11) NOT NULL AUTO_INCREMENT,
  `EvenName` varchar(45) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EventDescription` varchar(300) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`EventId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_events`
--

LOCK TABLES `doc_events` WRITE;
/*!40000 ALTER TABLE `doc_events` DISABLE KEYS */;
INSERT INTO `doc_events` VALUES (1,'Eye Testing','2017-06-25 12:04:58','2017-06-28 11:04:58','eye infection','1','2017-02-04 12:04:58','1','2017-02-10 12:04:58'),(2,'Sample','2017-02-06 13:11:18','2017-02-10 13:11:18','Description','1','2017-02-04 13:11:18','1','2017-02-05 13:11:18'),(3,'dsfsfsdf','2017-06-26 00:00:00','2017-06-26 00:00:00','dfsdf','1','2017-06-25 18:46:37','1','2017-06-25 18:46:37'),(4,'dsfsfsdf2','2017-06-26 00:00:00','2017-06-26 00:00:00','dfsdf','1','2017-06-25 18:48:46','1','2017-06-25 18:48:46'),(5,'dsfsfsdf2','2017-06-26 00:00:00','2017-06-26 00:00:00','dfsdf','1','2017-06-25 18:49:24','1','2017-06-25 18:49:24'),(6,'SampleEvent','2017-06-28 00:00:00','2017-06-28 00:00:00','Fever','1','2017-06-25 18:50:46','1','2017-06-25 18:50:46'),(7,'Sample Event','2017-06-30 07:58:00','2017-07-01 07:58:00','test','1','2017-06-29 17:29:20','1','2017-06-29 17:29:20'),(8,'event2','2017-07-08 14:05:00','2017-07-08 14:05:00','dnfijvd','1','2017-06-29 17:36:09','1','2017-06-29 17:36:09'),(9,'legpain','2017-08-09 07:54:00','2017-08-09 07:54:00','bhbjbjbjbjh','1','2017-07-03 17:25:22','1','2017-07-03 17:25:22');
/*!40000 ALTER TABLE `doc_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_patients`
--

DROP TABLE IF EXISTS `doc_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_patients` (
  `iddoc_Patients` int(11) NOT NULL,
  `PatientName` varchar(100) DEFAULT NULL,
  `PatientAdhaarCard` varchar(45) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `DateofBirth` datetime DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `RefferedBy` varchar(45) DEFAULT NULL,
  `BloodGroup` varchar(45) DEFAULT NULL,
  `PrimaryMobile` varchar(14) DEFAULT NULL,
  `SecondaryMobile` varchar(14) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`iddoc_Patients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_patients`
--

LOCK TABLES `doc_patients` WRITE;
/*!40000 ALTER TABLE `doc_patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_qualification`
--

DROP TABLE IF EXISTS `doc_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_qualification` (
  `Qualif_ID` int(11) NOT NULL,
  `Qualification` varchar(45) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Qualif_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_qualification`
--

LOCK TABLES `doc_qualification` WRITE;
/*!40000 ALTER TABLE `doc_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_roles`
--

DROP TABLE IF EXISTS `doc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_roles` (
  `RoleId` int(11) NOT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_roles`
--

LOCK TABLES `doc_roles` WRITE;
/*!40000 ALTER TABLE `doc_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_specialization`
--

DROP TABLE IF EXISTS `doc_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_specialization` (
  `Spec_Id` int(11) NOT NULL,
  `Specialization` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Spec_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_specialization`
--

LOCK TABLES `doc_specialization` WRITE;
/*!40000 ALTER TABLE `doc_specialization` DISABLE KEYS */;
INSERT INTO `doc_specialization` VALUES (1,'General Physician','2017-01-26 16:33:31',NULL,'2017-01-26 16:33:31',NULL),(2,'Gynecologist','2017-01-26 16:33:31',NULL,'2017-01-26 16:33:31',NULL),(3,'Pediatrician','2017-01-26 16:33:31',NULL,'2017-01-26 16:33:31',NULL),(4,'Ophthalmologist','2017-01-26 16:33:31',NULL,'2017-01-26 16:33:31',NULL),(5,'Dermatologist','2017-01-26 16:33:31',NULL,'2017-01-26 16:33:31',NULL);
/*!40000 ALTER TABLE `doc_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_userdetails`
--

DROP TABLE IF EXISTS `doc_userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_userdetails` (
  `UserID` varchar(40) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Email` varchar(15) DEFAULT NULL,
  `Telp` varchar(45) DEFAULT NULL,
  `PresentAddress` varchar(45) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Role_Id` int(11) DEFAULT NULL,
  `OrganizationId` int(11) DEFAULT NULL,
  `Gender` bit(1) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_userdetails`
--

LOCK TABLES `doc_userdetails` WRITE;
/*!40000 ALTER TABLE `doc_userdetails` DISABLE KEYS */;
INSERT INTO `doc_userdetails` VALUES ('08c8dbd1-e3a7-11e6-af81-507b9d55f8fb','Raja','','9177550122','rajasekhar.in12',NULL,'Kakinada','2016-12-13 23:29:19',NULL,NULL,NULL,NULL,'domada','doq104',1,1,''),('16e18673-e3b0-11e6-af81-507b9d55f8fb','aaaa','','222','ema',NULL,'addr','2014-05-12 00:00:00','2017-01-26 15:43:20',NULL,'2017-01-26 15:43:20',NULL,'a','b',1,1,''),('1e6f84e8-e3a9-11e6-af81-507b9d55f8fb','Raja2','','9177550122','rajasekhaar.in1',NULL,'Kakinad2a','2016-12-13 23:29:19','2017-01-26 14:53:26',NULL,'2017-01-26 14:53:26',NULL,'domada','doq104',1,1,''),('2af69d22-e31e-11e6-af81-507b9d55f8fb','Raja','','9177550122','rajasekhar.in12',NULL,'Kakinada','2016-12-13 23:29:19',NULL,NULL,NULL,NULL,'domada','doq104',1,1,''),('7e51d50a-e3a8-11e6-af81-507b9d55f8fb','Raja1','','9177550122','rajasekhaar.in1',NULL,'Kakinad1a','2016-12-13 23:29:19','2017-01-26 14:48:57',NULL,'2017-01-26 14:48:57',NULL,'domada','doq104',1,1,''),('81e704f8-c15a-11e6-8ec7-507b9d55f8fb','Vinay','Kumar','8143789543','vinaynalamati@g',NULL,'S R Nagar','2016-12-13 23:06:19','2016-12-13 23:06:19',NULL,'2016-12-13 23:06:19',NULL,NULL,NULL,NULL,NULL,NULL),('8593a66f-c15f-11e6-8ec7-507b9d55f8fb','Raja','','9177550122','rajasekhar.in12',NULL,'Kakinada','2016-12-13 23:29:19',NULL,NULL,NULL,NULL,'domada','doq104',1,1,''),('af488c84-c215-11e6-aa6e-507b9d55f8fb','Raja','','9177550122','rajasekhar.in12',NULL,'Kakinada','2016-12-13 23:29:19',NULL,NULL,NULL,NULL,'domada','doq104',1,1,''),('b5e7ebad-e3a8-11e6-af81-507b9d55f8fb','Raja1','','9177550122','rajasekhaar.in1',NULL,'Kakinad1a','2016-12-13 23:29:19','2017-01-26 14:50:30',NULL,'2017-01-26 14:50:30',NULL,'domada','doq104',1,1,'');
/*!40000 ALTER TABLE `doc_userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_userslogin`
--

DROP TABLE IF EXISTS `doc_userslogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_userslogin` (
  `UserLoginId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `LoginDate` datetime DEFAULT NULL,
  `LogoutDate` datetime DEFAULT NULL,
  `Session` varchar(45) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserLoginId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_userslogin`
--

LOCK TABLES `doc_userslogin` WRITE;
/*!40000 ALTER TABLE `doc_userslogin` DISABLE KEYS */;
INSERT INTO `doc_userslogin` VALUES (1,'vinaynalamati@gmail.com','8143789543',NULL,NULL,'443dc2f2-c092-11e6-acd7-507b9d55f8fb',NULL),(2,'rajasekhar.in123@gmail.com','9177550122',NULL,NULL,'443dc2f2-c092-11e6-acd7-507b9d55f8fa',NULL);
/*!40000 ALTER TABLE `doc_userslogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_amount`
--

DROP TABLE IF EXISTS `finance_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_amount` (
  `idfinance_Amount` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerId` varchar(45) DEFAULT NULL,
  `PaidDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfinance_Amount`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_amount`
--

LOCK TABLES `finance_amount` WRITE;
/*!40000 ALTER TABLE `finance_amount` DISABLE KEYS */;
INSERT INTO `finance_amount` VALUES (1,'','0000-00-00 00:00:00','100'),(2,'','0000-00-00 00:00:00','200'),(3,'1','0000-00-00 00:00:00','200'),(4,'1','2017-08-29 00:00:00','100'),(5,'1','2017-09-30 00:00:00','50'),(6,'1','2017-09-27 00:00:00','50');
/*!40000 ALTER TABLE `finance_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_customer`
--

DROP TABLE IF EXISTS `finance_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_customer` (
  `idfinance_Customer` int(11) NOT NULL AUTO_INCREMENT,
  `finance_CustomerName` varchar(500) DEFAULT NULL,
  `AadharCard` varchar(45) DEFAULT NULL,
  `RationCard` varchar(45) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Mobile` varchar(13) DEFAULT NULL,
  `TotalAmount` float DEFAULT NULL,
  `PaymentType` char(1) DEFAULT NULL,
  `NoOfMorW` varchar(45) DEFAULT NULL,
  `MorWAmount` float DEFAULT NULL,
  `FinanceDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfinance_Customer`),
  UNIQUE KEY `idfinance_Customer_UNIQUE` (`idfinance_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_customer`
--

LOCK TABLES `finance_customer` WRITE;
/*!40000 ALTER TABLE `finance_customer` DISABLE KEYS */;
INSERT INTO `finance_customer` VALUES (1,'TEST','0987654321','123456789','M','9177550122',1000,'1','10',10,NULL,NULL,'2017-09-13 00:16:18'),(2,'Test1','0987654321','9087654312','F','08971234567',2000,'1','10',250,NULL,NULL,'2017-09-13 00:16:18'),(3,'Rajasekhar','12345678','0987654123','u','908900781',1000,'1','100',123,NULL,NULL,'2017-09-13 00:16:18'),(4,'Vinay','23423432','234234','M','8143789543',500,'1','1',12,NULL,NULL,'2017-09-13 00:16:18'),(5,'sagar','34345345345','345345','M','94896555652',2000,'2','12',1234,NULL,NULL,'2017-09-13 00:16:18'),(6,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(7,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(8,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(9,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(10,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(11,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(12,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(13,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(14,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18'),(15,'sagar','M','94896555652','3','345345',2000,'2','12',0,NULL,NULL,'2017-09-13 00:16:18');
/*!40000 ALTER TABLE `finance_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `Key` int(11) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `help_keyword_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (1,'vinay',123),(2,'doma',345);
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_table` (
  `CalenderId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `DoctorId` int(11) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  `CreatedBy` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`CalenderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'doctorapp'
--

--
-- Dumping routines for database 'doctorapp'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetTodayDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTodayDate`(IN firstname varchar(100)
,IN lastname varchar(00)
,IN DoctorImagePath varchar(700)
,IN Specialization varchar(200)
,IN HighestDegree varchar(200)
,IN exp varchar(200)
,IN address varchar(700)
,IN phnumber varchar(15)
,IN tel varchar(15)
,IN email varchar(200)
,IN createdby INT
,IN DOB datetime
,IN Modifiedby INT
,IN OrganizationId INT
,IN gender bit
,IN username varchar(100)
,IN password varchar(100)
,IN role INT)
BEGIN
DECLARE id VARCHAR(50);
DECLARE total_products INT DEFAULT 0; 
SELECT COUNT(*) INTO total_products
FROM doctorapp.doc_userslogin WHERE UserName=username ;

SET id=UUID();
IF(total_products>0)
 THEN
 
 
 INSERT INTO `doctorapp`.`doc_userdetails` (`UserID`, `FirstName`, `LastName`, `Mobile`, `Email`, `PresentAddress`, `DOB`, `CreatedDate`, `ModifiedDate`,`Username`,`Password`,`Role_Id`,`OrganizationId`,`Gender`) VALUES (id, firstname, lastname, phnumber, email, address, DOB,now() , now(),username,password,role,OrganizationId,gender);
 
 
 
 ELSE
 
 
 Update doc_userdetails SET 
FirstName=firstname,LastName=lastname,Mobile=phnumber,Email=email,PresentAddress=address,DOB=DOB,ModifiedDate=datetimenow,Gender=gender Where Username=username;
 
 
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `samptest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `samptest`()
BEGIN

DECLARE total_products INT;
SELECT COUNT(*) INTO total_products
FROM doctorapp.doc_userslogin ;
select total_products;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CreateEvent`(
IN eventid int
,IN eventname varchar(45)
,IN startdate datetime
,IN enddate datetime
,IN eventdesc varchar(300)
,IN createdby varchar(45)
,IN createddate datetime
,IN modifiedby varchar(45)
,IN modifieddate datetime)
BEGIN
DECLARE id VARCHAR(50);
DECLARE total_events INT DEFAULT 0; 
SELECT COUNT(*) INTO total_events
FROM doctorapp.doc_events WHERE EventId=eventid ;

SET id=UUID();
IF(total_events>0)
 THEN
 INSERT INTO `doctorapp`.`doc_events`
(`EventId`,
`EvenName`,
`StartDate`,
`EndDate`,
`EventDescription`,
`CreatedBy`,
`CreatedDate`,
`ModifiedBy`,
`ModifiedDate`)
VALUES
(id,
eventname,
startdate,
enddate,
eventdesc,
createdby,
createddate,
modifiedby,
modifieddate);

 ELSE
 UPDATE `doctorapp`.`doc_events`
SET
`EventId` =eventid,
`EvenName` = eventname,
`StartDate` = startdate,
`EndDate` = enddate,
`EventDescription` = eventdesc,
`CreatedBy` = createdby,
`CreatedDate` = createddate,
`ModifiedBy` = modifiedby,
`ModifiedDate` = modifieddate
WHERE `EventId` = eventid;

 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_Doc_CreateDoctors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Doc_CreateDoctors`(IN firstname varchar(100)
,IN lastname varchar(00)
,IN DoctorImagePath varchar(700)
,IN Specialization varchar(200)
,IN HighestDegree varchar(200)
,IN exp varchar(200)
,IN address varchar(700)
,IN phnumber varchar(15)
,IN tel varchar(15)
,IN email varchar(200)
,IN createdby INT
,IN DOB datetime
,IN Modifiedby INT
,IN OrganizationId INT
,IN gender bit
,IN username varchar(100)
,IN password varchar(100)
,IN orgid INT
,IN role INT
)
BEGIN

  DECLARE datetimenow datetime;
  select datetimenow=now();
  SELECT @id:=UUID();
 SELECT @countTotal :=IFNULL(COUNT(*),0) FROM doc_userdetails where Username=username;
 IF(@countTotal>0)
 THEN

 INSERT INTO `doctorapp`.`doc_userdetails` (`UserID`, `FirstName`, `LastName`, `Mobile`, `Email`, `PresentAddress`, `DOB`, `CreatedDate`, `ModifiedDate`,`Username`,`Password`,`Role_Id`,`OrganizationId`,`Gender`) VALUES 
 (@id, firstname, lastname, phnumber, email, address, DOB,datetimenow , datetimenow,username,password,role,orgid,gender);
 
 ELSE
 
 Update doc_userdetails SET 
FirstName=firstname,LastName=lastname,Mobile=phnumber,Email=email,PresentAddress=address,DOB=DOB,ModifiedDate=datetimenow,Gender=gender Where Username=username;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_UserLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_UserLogin`(IN username varchar(45),IN password varchar(45))
BEGIN
DECLARE cou INT DEFAULT 0;
 DECLARE uid Varchar(36) DEFAULT UUID();
SELECT cou=count(username)
 FROM doc_userslogin
 WHERE username = username and Password=password;
 SELECT cou;
 IF(cou>0)
 THEN
 Insert INTO doc_userslogin(UserName,Password,LoginDate,Session) values(username,password,NOW(),uid);
 SELECT * from doc_userslogin WHERE Session=uid; 
 ELSE
 Select '1' As UserName;
 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-18 12:38:57
