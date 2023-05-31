CREATE DATABASE  IF NOT EXISTS `tourism_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tourism_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: tourism_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `customer_id` int NOT NULL,
  `tour_id` int NOT NULL,
  PRIMARY KEY (`customer_id`,`tour_id`),
  KEY `FK_TOURS_idx` (`tour_id`),
  CONSTRAINT `FK_CUSTOMERS` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `FK_TOURS` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `bookings`
--
LOCK TABLES `bookings` WRITE;
INSERT INTO `bookings` VALUES (7,1),(1,2),(6,3);
UNLOCK TABLES;


--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `customers`
--
LOCK TABLES `customers` WRITE;
INSERT INTO `customers` VALUES (1,'jane doe','Adenta 8th avenue','jane@gmail.com','123456789'),(5,'james appiah','Kaneshi 121','j@gmail.com','wqfdstrgfj'),(6,'abraham lincoln','usa','ab@gmail.com','iamabraham'),(7,'mike','mccarthy hill','h@gmail.com','72r65214712');
UNLOCK TABLES;


--
-- Table structure for table `tour_guides`
--

DROP TABLE IF EXISTS `tour_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tour_guides` (
  `tour_guide_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tour_guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `tour_guides`
--
LOCK TABLES `tour_guides` WRITE;
INSERT INTO `tour_guides` VALUES (1,'philip gyan','phil@gmail.com','3235498707967');
UNLOCK TABLES;



--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `tour_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tour_guide_id` int DEFAULT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `FK_TOUR_GUIDES_idx` (`tour_guide_id`),
  CONSTRAINT `FK_TOUR_GUIDES` FOREIGN KEY (`tour_guide_id`) REFERENCES `tour_guides` (`tour_guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `tours`
--
LOCK TABLES `tours` WRITE;
INSERT INTO `tours` VALUES (1,'nzulazu','eastern','80',NULL,1),(2,'golden stool','asanti','464',NULL,1),(3,'elmina castle','central','64',NULL,1),(4,'something','north','678',NULL,1);
UNLOCK TABLES;



/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;




--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `tour_guide_id` int(11) DEFAULT NULL,
  `img_url` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `FK_TOUR_GUIDES_idx` (`tour_guide_id`),
  CONSTRAINT `FK_TOUR_GUIDES` FOREIGN KEY (`tour_guide_id`) REFERENCES `tour_guides` (`tour_guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Nzulezu','western region','80',1,'https://dailyguidenetwork.com/wp-content/uploads/2018/09/kids-1.jpg'),(2,'larabanga mosque','nothern region','464',1,'https://upload.wikimedia.org/wikipedia/commons/3/31/Larabanga_Mosque_Ghana.jpg'),(3,'elmina castle','central region','64',1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpPVi1CL28UVNIX_pOBd1ZbFo-dLjopyQq1A&usqp=CAU'),(4,'kakum national park','central region','678',1,'https://upload.wikimedia.org/wikipedia/commons/1/16/Kakum.jpg'),(5,'kwame nkrumah Museum','greater accra region','345',1,'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-places-to-visit-in-ghana.jpg'),(6,'mole national park','savannaland region','543',1,'https://upload.wikimedia.org/wikipedia/commons/6/69/Elefant_Ghana.jpg'),(7,'boti falls','eastern region','889',1,'https://visitghana.com/wp-content/uploads/2019/08/4722_Boti-Yaw-Pare.jpg'),(8,'paga crocodile pond','savannaland region','7654',1,'https://i.ytimg.com/vi/sw8KbKHfLrQ/maxresdefault.jpg'),(9,'Labadi Beach','greater accra','223',1,'https://ak-d.tripcdn.com/images/0224y120009zu9ge08EBB_R_960_660_R5_D.jpg'),(10,'lake bosumtwe and bobiri butterfly sanctuary','ashanti region','1235',1,'https://www.easytrackghana.com/images/photos2/og/lonely-tree-in-volta-lake.jpg'),(11,'independence square','greater accra','987',1,'https://sites.google.com/a/mtholyoke.edu/tourist-attractions-in-ghana/_/rsrc/1468859420170/home/Independence_Square%2C_Accra%2C_Ghana.JPG'),(12,'umbrella rock','eastern region','567',1,'https://visitandtourghana.com/wp-content/uploads/2022/12/8a2b3a18031d056160938f8152ea00b8.jpg'),(13,'mashroom rock','upper west region','443',1,'https://www.graphic.com.gh/images/2016/jun28/hipo1.png'),(14,'lake volta','volta region','9876',1,'https://touringghana.com/wp-content/uploads/2016/03/volta-lake.jpg'),(15,'manhyia palace','ashanti region','56676',1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs03aPU7lZj5k1lyciJpA1NxeR9sOr5b2lsA&usqp=CAU'),(16,'capecoast castle','central region','244',1,'https://ghana-beach-cottage.com/wp-content/uploads/2019/01/cape-coast-castle.jpg');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2023-05-25 10:07:05
