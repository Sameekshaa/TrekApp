-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dbase_trekapp
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Itineraries`
--

DROP TABLE IF EXISTS `Itineraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Itineraries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `day` int NOT NULL,
  `startplace` varchar(255) NOT NULL,
  `endplace` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(255) NOT NULL,
  `cost` int NOT NULL,
  `trek_destination_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Itineraries`
--

LOCK TABLES `Itineraries` WRITE;
/*!40000 ALTER TABLE `Itineraries` DISABLE KEYS */;
INSERT INTO `Itineraries` VALUES (2,'Ktm to Pokhara',1,'Ktm','Pokhara','Let\'s travel       \r\n          ','5km',45678,1),(3,'Visit Shivapuri',1,'Chabahil','Bhagdwar Shivapuri','Hahaha       \r\n          ','6hrs',5000,3);
/*!40000 ALTER TABLE `Itineraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trek_Destinations`
--

DROP TABLE IF EXISTS `Trek_Destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trek_Destinations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `days` int NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `total_cost` int NOT NULL,
  `upvotes` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trek_Destinations`
--

LOCK TABLES `Trek_Destinations` WRITE;
/*!40000 ALTER TABLE `Trek_Destinations` DISABLE KEYS */;
INSERT INTO `Trek_Destinations` VALUES (1,'Goshaikunda Trek',7,'Level 2',30000,0,1),(2,'Khaptad Trek',15,'Level 3',45000,0,1),(3,'Shivapuri Trek',3,'Level 1',10000,0,3),(4,'Tilicho Trek',5,'level 1',15000,0,1),(5,'SheyPhoksundo trek',5,'level 1',20000,0,1),(7,'Kalinchowk Trek',5,'level 3',15000,0,1),(8,'Ghandruk Trek',5,'level 1',20000,0,1);
/*!40000 ALTER TABLE `Trek_Destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `token` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Sameeksha','samee@gmail.com','9999999999','Ktm','pbkdf2:sha256:260000$7ym6V41lgB2yk371$0a445ba89e16abd7874483b425279ff505682b6d9263cd5d21cde0e1c5f05de5','322e1f15-4897-46d5-87bd-afecd7fc011c'),(2,'Mukesh ','mukesh@gmail.com','9800000010','Bkt','pbkdf2:sha256:260000$SH7jg2A47pLEjsW1$16960cccbe3799052edbb73bd6085b728c0394e126c55f8aad449dfa314e76ef',''),(3,'Diksha','diksha@gmail.com','9812121210','Ltp','pbkdf2:sha256:260000$xHRYrHVn2yIMENIk$a1a9eb4381655ba2557d0f291cffa45ceaf2728c716171e543a792d44242d0fc',''),(4,'Shikha','shikha@gmail.com ','9999999999','Ktm','123456','6f5d8a8b-561d-4d29-9628-9bea05fe1da1'),(6,'Bibek','bibek@gmail.com ','9800000012','Ktm','123456','d3b5bd5d-c132-4cb0-bdda-f6bf79f09619'),(10,'Sameep','sameep@gmail.com','9999999815','Ktm','pbkdf2:sha256:260000$91HshfKtIw55OBWV$6c9a7d65471e84bf78077863b509502d559fddaf1e396b1555900e6544636c43','efdc4649-cbf1-40ed-a1ad-1f900fb12655'),(12,'Yangi','yangi@gmail.com ','9956999999','Pokhara','pbkdf2:sha256:260000$LXjRfs464IIO1Qrr$30c328e4053b534c1b6928c061ed3d58273d7d9299f693f5690476462b9df5e1','3544677a-e52e-4ae2-8a22-8e855bee618a'),(13,'Manjul','manjul@gmail.com ','9999529999','KTM','pbkdf2:sha256:260000$i5HpGgqjyrROpNrR$542cb219e23d13cd257c21edca8f643af388f29136173ad896bc533d1affd295','f3f7a510-e9ba-4a63-a196-f3f62a701c8d'),(14,'Samee','samee@gmail.com ','9999529999','KTM','pbkdf2:sha256:260000$vhjc2WhPHLRnnczx$87128ebcbae2aabd54fbbf479699224f2c4f983233b6534683bfcbd8eead4fc1','a7f88414-c6c8-4f96-adce-69b71c538c51');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12 16:34:57
