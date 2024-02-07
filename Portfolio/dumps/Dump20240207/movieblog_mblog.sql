-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: movieblog
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `mblog`
--

DROP TABLE IF EXISTS `mblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mblog` (
  `num` int DEFAULT NULL,
  `filmTitleKor` text,
  `filmTitleEng` text,
  `runningTime` int DEFAULT NULL,
  `realeseDate` bigint DEFAULT NULL,
  `genre` text,
  `actor` text,
  `director` text,
  `award` text,
  `filmInfor` text,
  `synopsis` text,
  `summary` text,
  `trailer01` binary(1) DEFAULT NULL,
  `trailer02` binary(1) DEFAULT NULL,
  `trailer03` text,
  `trailer04` text,
  `ost` text,
  `imageClip01` text,
  `imageClip02` text,
  `imageClip03` text,
  `imageClip04` text,
  `imageClip05` text,
  `imageClip06` text,
  `imageClip07` text,
  `imageClip08` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mblog`
--

LOCK TABLES `mblog` WRITE;
/*!40000 ALTER TABLE `mblog` DISABLE KEYS */;
INSERT INTO `mblog` VALUES (1,'영웅본색','A Better Tomorrow',123,1993,'Action, Drama, Gangster','주윤발, 적룡, 장국영','오우삼','Honkong Movie Award','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!',_binary '\0',_binary '\0','','','','','','','','','','',''),(2,'영웅본색','A Better Tomorrow',123,1993,'Action, Drama, Gangster','주윤발, 적룡, 장국영','오우삼','Honkong Movie Award','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 3월, 레전드의 귀환!','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!','한때 암흑가를 주름잡는 보스였으나 손 씻고 새 삶을 시작한 자호(적룡), 경찰의 길을 걷는 자호의 동생 아걸(장국영), 자호와 함께 암흑가의 화려한 나날을 보냈으나 몰락한 채, 때를 기다리며 과거의 영광을 되찾고자 하는 소마(주윤발). 세 남자의 뜨거운 이야기가 디지털 리마스터링으로 다시 찾아온다! 2016년 2월, 레전드의 귀환!',_binary '\0',_binary '\0','','','','','','','','','','','');
/*!40000 ALTER TABLE `mblog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 17:37:05
