-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cs_480_national_obesity_rate
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Temporary view structure for view `agg1`
--

DROP TABLE IF EXISTS `agg1`;
/*!50001 DROP VIEW IF EXISTS `agg1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agg1` AS SELECT 
 1 AS `AVG(income)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `agg2`
--

DROP TABLE IF EXISTS `agg2`;
/*!50001 DROP VIEW IF EXISTS `agg2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agg2` AS SELECT 
 1 AS `COUNT(education_id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `agg3`
--

DROP TABLE IF EXISTS `agg3`;
/*!50001 DROP VIEW IF EXISTS `agg3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agg3` AS SELECT 
 1 AS `parent`,
 1 AS `sibling`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` smallint unsigned NOT NULL,
  `availability_healthy_food` varchar(40) NOT NULL,
  `num_gym` smallint unsigned NOT NULL,
  `number_grocery_store` smallint unsigned DEFAULT NULL,
  `health_data_city` smallint unsigned DEFAULT NULL,
  `demographic_data_city` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `healthDataIndex` (`health_data_city`),
  KEY `healthDataIndexCity` (`health_data_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'87',3,17,44,'97'),(13,'7',455,1200,87,'64'),(88,'65',14,10,99,'13'),(90,'12',15,11,85,'88');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `comp1`
--

DROP TABLE IF EXISTS `comp1`;
/*!50001 DROP VIEW IF EXISTS `comp1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comp1` AS SELECT 
 1 AS `health_data_city`,
 1 AS `health_data_state`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comp2`
--

DROP TABLE IF EXISTS `comp2`;
/*!50001 DROP VIEW IF EXISTS `comp2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comp2` AS SELECT 
 1 AS `ID`,
 1 AS `num_gym`,
 1 AS `number_grocery_store`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comp3`
--

DROP TABLE IF EXISTS `comp3`;
/*!50001 DROP VIEW IF EXISTS `comp3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comp3` AS SELECT 
 1 AS `ID`,
 1 AS `num_gym`,
 1 AS `number_grocery_store`,
 1 AS `availability_healthy_food`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `demographics`
--

DROP TABLE IF EXISTS `demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographics` (
  `demographics_id` smallint unsigned NOT NULL,
  `population` smallint unsigned NOT NULL,
  `income` smallint unsigned NOT NULL,
  `pct_pop_increase` smallint unsigned NOT NULL,
  `sex` varchar(1) NOT NULL,
  `race` varchar(30) NOT NULL,
  `age` smallint unsigned NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `employment` varchar(20) NOT NULL,
  `education_level` varchar(50) DEFAULT NULL,
  `family_past` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`demographics_id`),
  UNIQUE KEY `demographics_id` (`demographics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographics`
--

LOCK TABLES `demographics` WRITE;
/*!40000 ALTER TABLE `demographics` DISABLE KEYS */;
INSERT INTO `demographics` VALUES (1,1000,30000,2,'M','W',30,'M','Y','C','1');
/*!40000 ALTER TABLE `demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `education_id` smallint unsigned NOT NULL,
  `education_history` varchar(50) NOT NULL,
  `progress` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `graduation_date` date DEFAULT NULL,
  PRIMARY KEY (`education_id`),
  UNIQUE KEY `education_id` (`education_id`),
  UNIQUE KEY `education_history` (`education_history`),
  UNIQUE KEY `progress` (`progress`),
  UNIQUE KEY `availability` (`availability`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (44,'College','Done','None',NULL),(55,'None','In progress','All',NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family` (
  `family_id` smallint unsigned NOT NULL,
  `family_history` varchar(50) NOT NULL,
  `family_genetic` varchar(50) NOT NULL,
  `sibling` smallint unsigned DEFAULT NULL,
  `parent` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`family_id`),
  UNIQUE KEY `family_id` (`family_id`),
  UNIQUE KEY `family_history` (`family_history`),
  UNIQUE KEY `family_genetic` (`family_genetic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,'Old','None2',2,2),(91,'Cancer','None',4,2),(765,'family has no notable history','family has heart disease',0,2),(908,'None','Alzheimers',5,1);
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_data`
--

DROP TABLE IF EXISTS `health_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_data` (
  `ID` smallint unsigned NOT NULL,
  `activity_level` smallint unsigned DEFAULT NULL,
  `weight` smallint unsigned DEFAULT NULL,
  `bmi` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_data`
--

LOCK TABLES `health_data` WRITE;
/*!40000 ALTER TABLE `health_data` DISABLE KEYS */;
INSERT INTO `health_data` VALUES (1,0,400,35),(44,90,167,24),(67,99,185,22),(78,78,100,20),(1001,50,200,28);
/*!40000 ALTER TABLE `health_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nation` (
  `ID` smallint unsigned NOT NULL,
  `state` varchar(40) NOT NULL,
  `health_data_nation` smallint unsigned NOT NULL,
  `demographic_data_nation` smallint unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES (1,'IL',1,1),(2,'WI',2,3),(3,'CA',22,17),(17,'FL',14,20),(47,'IN',40,50);
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `simple1`
--

DROP TABLE IF EXISTS `simple1`;
/*!50001 DROP VIEW IF EXISTS `simple1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `simple1` AS SELECT 
 1 AS `ID`,
 1 AS `availability_healthy_food`,
 1 AS `num_gym`,
 1 AS `number_grocery_store`,
 1 AS `health_data_city`,
 1 AS `demographic_data_city`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `simple2`
--

DROP TABLE IF EXISTS `simple2`;
/*!50001 DROP VIEW IF EXISTS `simple2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `simple2` AS SELECT 
 1 AS `family_id`,
 1 AS `family_history`,
 1 AS `family_genetic`,
 1 AS `sibling`,
 1 AS `parent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `simple3`
--

DROP TABLE IF EXISTS `simple3`;
/*!50001 DROP VIEW IF EXISTS `simple3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `simple3` AS SELECT 
 1 AS `demographics_id`,
 1 AS `population`,
 1 AS `income`,
 1 AS `pct_pop_increase`,
 1 AS `sex`,
 1 AS `race`,
 1 AS `age`,
 1 AS `marital_status`,
 1 AS `employment`,
 1 AS `education_level`,
 1 AS `family_past`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `ID` smallint unsigned NOT NULL,
  `currentstate` varchar(40) NOT NULL,
  `health_data_state` smallint unsigned NOT NULL,
  `demographic_data_state` smallint unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `healthDataIndexState` (`health_data_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Chicago',13,16),(2,'Tampa',10,10),(19,'Washington DC',22,33),(41,'Denver',7,9),(50,'Dallas',44,67);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `agg1`
--

/*!50001 DROP VIEW IF EXISTS `agg1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agg1` AS select avg(`demographics`.`income`) AS `AVG(income)` from `demographics` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `agg2`
--

/*!50001 DROP VIEW IF EXISTS `agg2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agg2` AS select count(`education`.`education_id`) AS `COUNT(education_id)` from `education` where ((`education`.`progress` = 'Done') and (`education`.`graduation_date` > '2015-1-1')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `agg3`
--

/*!50001 DROP VIEW IF EXISTS `agg3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agg3` AS select `family`.`parent` AS `parent`,`family`.`sibling` AS `sibling` from `family` group by `family`.`parent` having ((`family`.`parent` = 2) and (`family`.`sibling` = 2)) order by `family`.`parent` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comp1`
--

/*!50001 DROP VIEW IF EXISTS `comp1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comp1` AS select `city`.`health_data_city` AS `health_data_city`,`state`.`health_data_state` AS `health_data_state` from (`city` join `state` on((`city`.`ID` = `state`.`ID`))) order by `city`.`health_data_city` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comp2`
--

/*!50001 DROP VIEW IF EXISTS `comp2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comp2` AS select `c`.`ID` AS `ID`,`c`.`num_gym` AS `num_gym`,`c`.`number_grocery_store` AS `number_grocery_store` from `city` `c` where (`c`.`num_gym` > (select avg(`city`.`num_gym`) from `city`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comp3`
--

/*!50001 DROP VIEW IF EXISTS `comp3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comp3` AS select `c`.`ID` AS `ID`,`c`.`num_gym` AS `num_gym`,`c`.`number_grocery_store` AS `number_grocery_store`,`c`.`availability_healthy_food` AS `availability_healthy_food` from `city` `c` where exists(select 1 from `city` where (`city`.`number_grocery_store` > 10)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `simple1`
--

/*!50001 DROP VIEW IF EXISTS `simple1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `simple1` AS select `city`.`ID` AS `ID`,`city`.`availability_healthy_food` AS `availability_healthy_food`,`city`.`num_gym` AS `num_gym`,`city`.`number_grocery_store` AS `number_grocery_store`,`city`.`health_data_city` AS `health_data_city`,`city`.`demographic_data_city` AS `demographic_data_city` from `city` where (`city`.`num_gym` between 3 and 15) order by `city`.`num_gym` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `simple2`
--

/*!50001 DROP VIEW IF EXISTS `simple2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `simple2` AS select `family`.`family_id` AS `family_id`,`family`.`family_history` AS `family_history`,`family`.`family_genetic` AS `family_genetic`,`family`.`sibling` AS `sibling`,`family`.`parent` AS `parent` from `family` where (`family`.`sibling` between 1 and 3) order by `family`.`sibling` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `simple3`
--

/*!50001 DROP VIEW IF EXISTS `simple3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `simple3` AS select `demographics`.`demographics_id` AS `demographics_id`,`demographics`.`population` AS `population`,`demographics`.`income` AS `income`,`demographics`.`pct_pop_increase` AS `pct_pop_increase`,`demographics`.`sex` AS `sex`,`demographics`.`race` AS `race`,`demographics`.`age` AS `age`,`demographics`.`marital_status` AS `marital_status`,`demographics`.`employment` AS `employment`,`demographics`.`education_level` AS `education_level`,`demographics`.`family_past` AS `family_past` from `demographics` where ((`demographics`.`marital_status` = 'unmarried') or (`demographics`.`income` >= 5000)) order by `demographics`.`income` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-14 21:55:01
