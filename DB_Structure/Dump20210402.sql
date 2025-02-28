-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: capstone.louissoft.kr    Database: capstone_27
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `deposit_withdraw`
--

DROP TABLE IF EXISTS `deposit_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_withdraw` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL COMMENT '입출금 신청 여부\n0 = 입금신청\n1 = 출금신청',
  `price` int NOT NULL,
  `status` int NOT NULL COMMENT '0 = 입금 확인 중\n1 = 입금 완료\n2 = 출금 확인 중\n3 = 출금 완료',
  `user_idx` bigint NOT NULL,
  `req_date` datetime NOT NULL,
  `res_date` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_withdraw`
--

LOCK TABLES `deposit_withdraw` WRITE;
/*!40000 ALTER TABLE `deposit_withdraw` DISABLE KEYS */;
INSERT INTO `deposit_withdraw` VALUES (1,0,10000,1,1,'2021-03-23 11:48:59','2021-03-23 11:49:36'),(2,0,1000,1,2,'2021-03-23 16:51:12','2021-03-24 16:06:48'),(3,0,1000,1,2,'2021-03-24 12:09:56','2021-03-24 16:07:34'),(4,0,20000,1,2,'2021-03-24 12:10:04','2021-03-24 16:08:01'),(5,0,100,1,2,'2021-03-24 12:10:08','2021-03-24 16:08:58'),(6,0,10000,1,2,'2021-03-24 16:09:42','2021-03-24 16:09:57'),(7,0,100,1,2,'2021-03-24 16:09:47','2021-03-24 16:09:59'),(8,0,100,1,2,'2021-03-24 16:09:47','2021-03-24 16:10:01'),(9,0,6000,1,2,'2021-03-24 16:13:54','2021-03-24 16:13:59'),(10,1,6000,3,2,'2021-03-24 16:15:06','2021-03-24 16:18:08'),(11,1,5000,3,2,'2021-03-24 16:18:03','2021-03-24 16:18:09'),(12,1,9999,3,2,'2021-03-24 16:18:14','2021-03-24 16:18:19'),(13,1,6000,3,2,'2021-03-24 16:19:08','2021-03-24 16:21:37'),(14,1,6666,3,2,'2021-03-24 16:20:37','2021-03-24 16:21:38'),(15,0,-9999,1,2,'2021-03-24 16:21:32','2021-03-24 16:21:40'),(16,0,-9999,1,2,'2021-03-24 16:21:59','2021-03-24 16:24:57'),(17,0,2000,1,2,'2021-03-24 16:24:47','2021-03-24 16:24:58'),(18,1,5000,2,2,'2021-03-24 16:58:27',NULL),(19,0,5000,0,2,'2021-03-30 09:55:17',NULL),(20,0,5000,0,2,'2021-03-30 09:55:21',NULL),(21,0,5000,0,2,'2021-03-30 09:55:22',NULL),(22,0,5000,0,2,'2021-03-30 09:55:22',NULL),(23,1,5000,2,2,'2021-03-30 09:55:25',NULL),(24,0,1111,0,2,'2021-03-30 09:56:09',NULL),(25,0,1111,0,2,'2021-03-30 09:56:17',NULL),(26,0,1111,0,2,'2021-03-30 09:56:41',NULL),(27,0,1111,0,2,'2021-03-30 09:57:17',NULL),(28,0,1111,0,2,'2021-03-30 09:57:33',NULL),(29,1,5000,2,2,'2021-03-30 09:59:37',NULL),(30,0,1111,0,2,'2021-03-30 10:00:00',NULL),(31,1,5000,2,2,'2021-03-30 10:00:09',NULL),(32,1,5000,2,2,'2021-03-30 10:00:51',NULL),(33,1,5000,2,2,'2021-03-30 10:02:08',NULL);
/*!40000 ALTER TABLE `deposit_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_board`
--

DROP TABLE IF EXISTS `employee_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_board` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `worker_idx` bigint NOT NULL,
  `file_idx` bigint NOT NULL,
  `work_board_idx` bigint NOT NULL,
  `similarity` double DEFAULT NULL,
  `date` datetime NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_board`
--

LOCK TABLES `employee_board` WRITE;
/*!40000 ALTER TABLE `employee_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `label_width` int DEFAULT NULL,
  `label_height` int DEFAULT NULL,
  `label_x` int DEFAULT NULL,
  `label_y` int DEFAULT NULL,
  `show_all` tinyint NOT NULL COMMENT '이 파일을 누구에게 다 보여줄 수 있는지',
  `show_idx` varchar(45) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (1,'img','a8e5671a-4687-4989-b56e-bc13a2a89c44.png',90,138,11,17,1,'1;'),(2,'img','dae78278-ab71-46a4-be33-d7f4161a1c2b.png',115,104,14,13,1,'1;'),(3,'img','04c1fc83-b079-4beb-9a83-fb64398f11bb.png',136,154,17,19,1,'1;'),(4,'img','3a6c1f65-ffe5-42c1-b75b-9ebf548ffe9d.png',211,179,26,22,1,'1;'),(5,'img','8e219cb1-9cef-4ca7-a542-399666403452.png',245,234,31,29,1,'1;'),(6,'img','19aece3f-874b-4b71-adbf-ba7b8a710663.png',830,479,254,278,1,'1;'),(7,'img','c33eb40a-fb29-447c-8e18-c250fe99c2c1.png',90,138,11,17,1,'1;'),(8,'img','cf4d40b2-2dd4-4a12-8c0c-b46e1548f499.png',115,104,14,13,1,'1;'),(9,'img','8062bfab-6186-4de1-b393-39cc8166db2e.png',136,154,17,19,1,'1;'),(10,'img','ba659861-1448-4ec2-b500-97ce2d001c48.png',245,234,31,29,1,'1;');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_board`
--

DROP TABLE IF EXISTS `qa_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qa_board` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `work_board_idx` bigint NOT NULL,
  `question` text NOT NULL,
  `questioner` bigint NOT NULL,
  `answer` text,
  `question_date` datetime NOT NULL,
  `answer_date` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_board`
--

LOCK TABLES `qa_board` WRITE;
/*!40000 ALTER TABLE `qa_board` DISABLE KEYS */;
INSERT INTO `qa_board` VALUES (1,1,'질문하기',2,NULL,'2021-04-01 20:25:13',NULL);
/*!40000 ALTER TABLE `qa_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('3TN8KUarVuYWOAOcFYzBGBUM6FQsAqnU',1617281385,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('KyaGOfBbFGGM1YOlKdg4PSYl0I9WfSpV',1617264454,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"nickname\":\"admin\",\"idx\":1}'),('NoTnMrHrRHJn_BQWSIfdM2jkV4Hq7x7R',1617289396,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('O_ghsgo3OyYchp7wQWyzSX0CV-q708g5',1617340857,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('f0lt8FXhQQLQrhRnHXgDszgWgrQ1EmVc',1617290402,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"nickname\":\"admin\",\"idx\":1}'),('ftWggRxrmldbHodQv7tMAQKE-k4gtPWn',1617395117,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"nickname\":\"지현\",\"idx\":2}'),('mQ2RiFKo2S47L-fLNi1Hyx-zLko6Jyd2',1617281332,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"nickname\":\"admin\",\"idx\":1}'),('wsvjiIW7WtKsSGypx4BtctC1fZ205F71',1617291234,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `password` char(128) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `bank_num` varchar(30) NOT NULL,
  `krw` int NOT NULL,
  `warning` int NOT NULL,
  `permission` int NOT NULL,
  `join_date` date NOT NULL,
  `password_change_date` date NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','23de8962a9e42a0f8de3bc5dfec106774685fdc6b5b1bf5d5f3da33130932e576394aec2c029421f9eb8e522204ed34a828baec333adf6617b1dc475587b5af0','admin','admin','admin','admin@admin.com','admin','admin',20000,0,0,'2021-03-15','2021-03-15','2021-03-31 15:18:39'),(2,'지현','fdbaad459bc4557a2a0cbce20de087c9c293d69db904e2a3e7e9da50a22b1324baea6cf3b19df916d8e48888b4e9178fc6dd995c4dae57080e0cb3c425affbe8','지현','지현','지현','jung@naver.com','지현','11',60000,0,0,'2021-03-23','2021-03-23','2021-04-01 18:28:41'),(3,'wlgus','15a246948f2fc412f5423754c4fb12164d3e2383dabd42c4b31205d4ae7ac295586a30a7931a07b969a0a68fc42faeb2f9bb548a909b84f592fd64c54c1fa9d6','wlgus','wlgus','wlgus','wlgus@naver.com','wlgus','wlgus',0,0,0,'2021-03-24','2021-03-24',NULL),(4,'admin2','c20af7870cd4ad7b6fd9c95b0f5943ceb518e93e282e8a34e19386cbaaecb9f56234308c118e9900d735313be140a76dc80e8397a6f8bcf7d070e9832b01d405','admin2','admin2','admin2','admin2@admin.com','admin2','admin2',0,0,0,'2021-03-29','2021-03-29','2021-03-29 14:27:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_board`
--

DROP TABLE IF EXISTS `work_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_board` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `writer_idx` bigint NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `example_file_idx` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(30) NOT NULL,
  `total_price` int NOT NULL,
  `status` int NOT NULL COMMENT '0 = 진행중 / 1 = 마감 / 2 = 완료',
  PRIMARY KEY (`idx`),
  FULLTEXT KEY `title` (`title`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_board`
--

LOCK TABLES `work_board` WRITE;
/*!40000 ALTER TABLE `work_board` DISABLE KEYS */;
INSERT INTO `work_board` VALUES (1,'신호등 빨간불 사진 찾아요','신호등 초록불 주황불은 제외해 주세요.',1,30,30,'1;2;3;4;5;','2021-03-31 10:04:38','img',900,0),(2,'신호등 초록불 사진 찾아요','1ㅁㅇㄹㅁㅇㄹ',1,10,20,'6;7;8;9;10;','2021-03-31 15:19:07','img',200,0);
/*!40000 ALTER TABLE `work_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'capstone_27'
--

--
-- Dumping routines for database 'capstone_27'
--
/*!50003 DROP PROCEDURE IF EXISTS `cashReqList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `cashReqList`()
BEGIN
# 입금/출금 대기 신청 LIST를 불러오는 함수
# made by jihyeon jung
SELECT `deposit_withdraw`.`idx`,`type`, `price`, `req_date`, `users`.`name`, `status`
FROM `deposit_withdraw` LEFT JOIN `users` ON `deposit_withdraw`.`user_idx`= `users`.`idx`
WHERE `status`=0 OR `status`=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fileUpload` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `fileUpload`(IN param_type VARCHAR(30), IN param_url VARCHAR(100), IN param_label_width INT, IN param_label_height INT, IN param_label_x INT, IN param_label_y INT, IN param_show_all tinyint, IN param_show_idx VARCHAR(45))
BEGIN
# made by jiho park
INSERT INTO `file` (`type`,`url`, `label_width`, `label_height`, `label_x`, `label_y`, `show_all`, `show_idx`) VALUES
   (param_type, param_url, param_label_width, param_label_height, param_label_x, param_label_y, param_show_all, param_show_idx);
SELECT LAST_INSERT_ID() as 'file_idx';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAvailable_krw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getAvailable_krw`(IN  param_idx bigint, OUT available_krw int)
BEGIN
DECLARE total_krw INT default 0;
DECLARE withdraw_krw INT default 0;
DECLARE worked_krw INT default 0;

CALL getUsedKrwWork(param_idx, worked_krw);
CALL getUsedKrwWithdraw(param_idx, withdraw_krw);
SET total_krw = (SELECT `krw` FROM `users` WHERE `param_idx`=`idx`);
SET available_krw = IFNULL(total_krw, 0) - IFNULL(worked_krw, 0) - IFNULL(withdraw_krw, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getBoardInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getBoardInfo`(IN param_board_idx BIGINT)
BEGIN
# 보드 정보 가져오는 함수
# made by jihyeon jung
SELECT * FROM `work_board` WHERE idx = param_board_idx;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getFileInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getFileInfo`(IN param_file_idx BIGINT)
BEGIN
# 파일 정보 가져오는 함수
# made by jiho park
SELECT * FROM `file` WHERE idx = param_file_idx;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getKrwInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getKrwInfo`(IN  param_idx bigint)
BEGIN
DECLARE total_krw INT default 0;
DECLARE withdraw_krw INT default 0;
DECLARE worked_krw INT default 0;
DECLARE available_krw INT default 0;

CALL getUsedKrwWork(param_idx, worked_krw);
CALL getUsedKrwWithdraw(param_idx, withdraw_krw);
SET total_krw = (SELECT `krw` FROM `users` WHERE `param_idx`=`idx`);
SET available_krw = IFNULL(total_krw, 0) - IFNULL(worked_krw, 0) - IFNULL(withdraw_krw, 0);

SELECT total_krw as 'TotalKRW', IFNULL(withdraw_krw, 0) as 'Withdraw_KRW', IFNULL(worked_krw, 0) as 'Worked_KRW', available_krw as 'Available_KRW';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getQABoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getQABoard`(IN param_work_board_idx BIGINT)
BEGIN
# 게시글에 대한 질문 답변을 가져오는 함수
# made by jiho park
SELECT `qa_board`.`idx`, `work_board_idx`, `question`, `questioner`,  `nickname` as 'questioner_nickname' , `answer`, `question_date`, `answer_date` FROM `qa_board` LEFT JOIN `users` on `users`.`idx` = `qa_board`.`questioner` WHERE `work_board_idx`= param_work_board_idx ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUsedKrwWithdraw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getUsedKrwWithdraw`(IN  param_user_idx bigint, OUT UsedKrwWithdraw int)
BEGIN
# deposit_withdraw에서 사용중인 금액의 합을 리턴해주는 함수
# 출금대기
# made by jiho park

# deposit_withdraw에서 type이 1이고(출금) status=2인(출금 확인중) 가격들의 합을 구한다.
SET UsedKrwWithdraw = (SELECT SUM(price) as 'UsedKrwWithdraw' FROM `deposit_withdraw` WHERE `user_idx` = param_user_idx AND `type`=1 AND `status`=2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getUsedKrwWork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getUsedKrwWork`(IN  param_user_idx bigint, OUT UsedKrwWork int)
BEGIN
# work_board에서 사용중인 금액의 합을 리턴해주는 함수
# made by jiho park

# work_board에서 status가 2(완료)가 아닌 것의 total_price 가격의 합을 구한다. (param_user_idx == writer_id)
SET UsedKrwWork = (SELECT SUM(total_price) as 'UsedKrwWork' FROM `work_board` WHERE `writer_idx`=param_user_idx AND `status` != 2);
SELECT UsedKrwWork 'UsedKrwWork';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isDuplicateEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_27`@`%` PROCEDURE `isDuplicateEmail`(IN param_email varchar(30))
BEGIN
# 이메일 중복 확인을 해주는 함수
# made by jihyeon jung
DECLARE duplicate INT default 0;
Set duplicate = (SELECT COUNT(*) FROM `users` WHERE `email` = param_email);
If duplicate = 0 THEN
	SELECT 'success' as 'result';
ELSE
	SELECT 'duplicate' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isDuplicateID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_27`@`%` PROCEDURE `isDuplicateID`(IN param_id varchar(20))
BEGIN
# 아이디 중복 확인을 해주는 함수
# made by jiho park
DECLARE duplicate INT default 0;
Set duplicate = (SELECT COUNT(*) FROM `users` WHERE `id` = param_id);
If duplicate = 0 THEN
	SELECT 'success' as 'result';
ELSE
	SELECT 'duplicate' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isDuplicateNickname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_27`@`%` PROCEDURE `isDuplicateNickname`(IN param_nick varchar(20))
BEGIN
# 닉네임 중복 확인을 해 주는 함수
# made by jiho park
DECLARE duplicate INT default 0;
Set duplicate = (SELECT COUNT(*) FROM `users` WHERE `nickname` = param_nick);
If duplicate = 0 THEN
	SELECT 'success' as 'result';
ELSE
	SELECT 'duplicate' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `join` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `join`(IN param_id varchar(20), IN param_password char(128), IN param_name varchar(20), IN param_nickname varchar(20), IN param_phone varchar(15),
IN param_email varchar(30), IN param_bank varchar(30), IN param_bank_num varchar(30))
BEGIN
# 회원가입을 해 주는 함수
# made by jiho park
# 아이디 중복 체크 or 닉네임 중복 체크 or 이메일 중복 체크
DECLARE duplicate INT default 0;
SET duplicate = (SELECT COUNT(*) FROM `users` WHERE `id`=param_id OR `nickname`=param_nickname OR `email`=param_email);
IF duplicate = 0 THEN
	INSERT INTO `users`(`id`, `password`, `name`, `nickname`, `phone`, `email`, `bank`, `bank_num`, `krw`, `warning`, `permission`, `join_date`, `password_change_date`) VALUES (param_id, SHA2(CONCAT(param_password, 'capstone_27'), 512), param_name, param_nickname, param_phone, param_email, param_bank, param_bank_num, 0, 0, 0, NOW(), NOW());
	SELECT 'success' as 'result';
ELSE
	SELECT 'duplicate' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `login`(IN param_id varchar(20), IN param_pw char(128))
BEGIN
# 로그인을 해 주는 함수
# made by jiho park
set sql_safe_updates=0;
SELECT * FROM `users` WHERE `id`=param_id AND `password`=SHA2(CONCAT(param_pw, 'capstone_27'), 512);
UPDATE `users` SET `last_login` = NOW() WHERE `id` = param_id AND `password` = SHA2(CONCAT(param_pw, 'capstone_27'), 512);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reqDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `reqDeposit`(IN param_uidx bigint, IN param_price int)
BEGIN
# 입금 요청을 해 주는 함수
# made by jiho park
IF param_price < 1000 THEN
	SELECT 'You must deposit at least 1000 won' as 'result';
ELSE
	INSERT INTO `deposit_withdraw` (`type`, `price`, `status`, `user_idx`, `req_date`) VALUES ('0', param_price, '0', param_uidx, NOW());
	SELECT 'success' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reqWithdraw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`capstone_27`@`%` PROCEDURE `reqWithdraw`(IN param_user_idx bigint, IN param_price int)
BEGIN
# 출금신청을 해 주는 함수
# made by jiho park
# param_user_idx유저의 param_price만큼 출금 신청
# UsedKrwWork, UsedKrwWithdraw의 값과 users테이블의 krw 값을 가져오고 계산한다.
DECLARE UsedKrwWork INT default 0;
DECLARE UsedKrwWithdraw INT default 0;
DECLARE TotalKRW INT default 0;
DECLARE AvailableKRW INT default 0;

CALL getUsedKrwWork(param_user_idx, UsedKrwWork);
CALL getUsedKrwWithdraw(param_user_idx, UsedKrwWithdraw);
SET TotalKRW = (SELECT krw FROM `users` WHERE `idx` = param_user_idx);

SET AvailableKRW = IFNULL(TotalKRW, 0) - IFNULL(UsedKrwWork, 0) - IFNULL(UsedKrwWithdraw, 0);

# 최소 신청 금액(5000원)보다 작으면
IF param_price < 5000 THEN
	SELECT '출금 가능 최소금액은 5,000원 입니다.' as 'result';
ELSE
	# 이용가능한 금액보다 많이 신청했을 경우
	IF AvailableKRW < param_price THEN
		SELECT '사용 가능 금액을 확인해 주십시오.' as 'result';
	# 출금이 가능할 경우
    ELSE
		INSERT INTO `deposit_withdraw` (`type`, `price`, `status`, `user_idx`, `req_date`) VALUES ('1', param_price, '2', param_user_idx, NOW());
        SELECT 'success' as 'result';
    END IF;    
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `resDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `resDeposit`(IN  param_idx bigint)
BEGIN
# 입금 승인을 해 주는 함수
# made by jiho park
DECLARE param_user_idx INT default 0;
DECLARE param_krw INT default 0;
DECLARE param_status INT default 0;
DECLARE param_type INT default 0;
SELECT `user_idx`, `price`, `status`, `type` INTO param_user_idx, param_krw, param_status, param_type FROM `deposit_withdraw` WHERE idx = param_idx;
IF param_type=1 THEN
	SELECT 'funtion call error' as 'result';
ELSE
	IF param_status=0 THEN
		UPDATE `deposit_withdraw` SET `status` = '1', `res_date` = NOW() WHERE (`idx` = param_idx);
		UPDATE `users` SET `krw` = `krw` + param_krw WHERE(`idx` = param_user_idx);
		SELECT 'success' as 'result';
	ELSE
		SELECT 'already deposited' as 'result';
	END IF;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `resWithdraw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `resWithdraw`(IN  param_idx bigint)
BEGIN
# 출금 승인을 해 주는 함수
# made by jiho park
DECLARE param_user_idx INT default 0;
DECLARE param_krw INT default 0;
DECLARE param_status INT default 0;
DECLARE param_type INT default 0;
SELECT `user_idx`, `price`, `status`, `type` INTO param_user_idx, param_krw, param_status, param_type FROM `deposit_withdraw` WHERE idx = param_idx;
# 입금인데 출금 승인을 할 경우
IF param_type=0 THEN
	SELECT 'funtion call error' as 'result';
ELSE
	# 출금 진행중일 경우
	IF param_status=2 THEN
		UPDATE `deposit_withdraw` SET `status` = '3', `res_date` = NOW() WHERE (`idx` = param_idx);
		UPDATE `users` SET `krw` = `krw` - param_krw WHERE(`idx` = param_user_idx);
		SELECT 'success' as 'result';
	# 이미 출금된 경우
	ELSE
		SELECT 'already withdraw' as 'result';
	END IF;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `search`(IN keyword varchar(100))
BEGIN
# 보드 검색 하는 함수
# made by jiho park
SELECT * FROM `work_board` WHERE match(`title`, `content`) against(keyword);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `writeAnswer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `writeAnswer`(IN param_question_idx bigint, IN param_answer text)
BEGIN
# 답글 작성을 해 주는 함수
# made by jiho park
UPDATE `capstone_27`.`qa_board` SET `answer` = param_answer, `answer_date` = NOW() WHERE (`idx` = param_question_idx);
SELECT 'success' as 'result';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `writeBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `writeBoard`(IN param_title varchar(30), IN param_user_idx bigint, IN param_price int, IN param_content text, IN param_quantity int, IN param_type varchar(30), IN param_example_file_idx varchar(50))
BEGIN
# 게시물 업로드 하는 함수
# made_by_jihyeon
DECLARE avail_krw INT default 0;
DECLARE param_total_price INT default 0;
CALL getAvailable_krw(param_user_idx, avail_krw);
SET param_total_price = IFNULL(param_price, 0)*IFNULL(param_quantity, 0);
IF avail_krw < param_total_price THEN 
	SELECT 'error' as 'result';
ELSE
   INSERT INTO `work_board` (`title`,`content`, `writer_idx`, `price`, `quantity`, `example_file_idx`, `date`, `type`, `total_price`, `status`) VALUES
   (param_title, param_content, param_user_idx, param_price, param_quantity, param_example_file_idx, NOW(), param_type, param_total_price, 0);
   SELECT 'success' as 'result';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `writeQuestion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `writeQuestion`(IN param_work_board_idx bigint, IN param_question text, IN param_questioner bigint)
BEGIN
# 질문 작성을 해 주는 함수
# made by jiho park
INSERT INTO `qa_board` (`work_board_idx`, `question`, `questioner`, `question_date`) VALUES (param_work_board_idx, param_question, param_questioner, NOW());
SELECT 'success' as 'result';
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

-- Dump completed on 2021-04-02  5:26:55
