-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: it_pdf
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `itpdf_attachment`
--

DROP TABLE IF EXISTS `itpdf_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itpdf_attachment` (
  `id` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录生成时间',
  `owner_id` varchar(40) NOT NULL COMMENT '拥有者ID',
  `file_name` varchar(256) NOT NULL COMMENT '附件文件的名称',
  `file_type` varchar(8) NOT NULL COMMENT '附件类型（cover-封面 dir-目录）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itpdf_attachment`
--

LOCK TABLES `itpdf_attachment` WRITE;
/*!40000 ALTER TABLE `itpdf_attachment` DISABLE KEYS */;
INSERT INTO `itpdf_attachment` VALUES ('4df11584-9bab-4c44-8c0b-7a1192644654','2015-11-24 14:13:37','e4cdbcba-eaa4-4520-ba40-354a0e54ad84','9736556b0e71228a0822d59e105ba80884b113cf','dir'),('5247f1e8-5905-460d-a5b6-dc59ea1e8e67','2015-11-24 14:29:31','a25c6ce6-e1ea-48a2-944e-ca7661d8c045','cd3e018e7791439abb4a602ceaae263851974612','cover'),('53595129-b093-43e8-a83f-2eeba2662682','2015-11-25 14:44:45','4a1bb882-ccf7-4f81-9908-9f1d97a06672','eb924fb712b922103b9173bb440336eafeeee8a3','dir'),('5dfa0f56-1649-4f2d-b73e-4fc247ee5d5f','2015-11-24 14:18:19','ad4b3d9e-a226-4591-9c5f-05e3d4a34a05','f491f2f20706eb2990395f4fd37c17d66f990186','cover'),('62d16fb0-4236-450f-b0b1-fdf1328c7092','2015-11-24 14:13:37','e4cdbcba-eaa4-4520-ba40-354a0e54ad84','9736556b0e71228a0822d59e105ba80884b113cf','cover'),('6bce5583-1740-4633-9ab5-ade0f8eaa807','2015-11-25 14:44:45','4a1bb882-ccf7-4f81-9908-9f1d97a06672','eb924fb712b922103b9173bb440336eafeeee8a3','cover'),('70cd5da0-20cb-48cb-bc4f-a1f49202ad66','2015-11-25 14:47:17','aeae11a8-0dc0-4758-bc6a-c63bf2854812','bccdc7cdc71aea23606cf3c06777c757dc36099e','cover'),('7b4cf83a-598e-4d15-80c2-6177d2dfd68e','2015-11-24 14:01:26','21a38c86-188c-4a6b-a1e9-417c17dd320e','eab674ceb5b2e757c68947dd5367615bd79383ed','cover'),('8061178c-9932-4943-a878-0f402a17135c','2015-11-24 14:24:27','a2ebed46-811f-4699-a36c-9b00a535f984','d4e1a95f5bba35d32006481491382d18b8f1b687','dir'),('9a2ec310-d81a-4477-885c-e422481702e6','2015-11-24 14:40:36','750aa908-558f-463c-b6ba-dada79dc3f1b','2426890bde136e122e7047da04a55e4f95ef09ed','cover'),('9d38a3d9-1d6d-47b4-bd0a-c617e1c098ea','2015-11-24 14:24:27','a2ebed46-811f-4699-a36c-9b00a535f984','d4e1a95f5bba35d32006481491382d18b8f1b687','cover'),('a4ba0bc7-21a2-4927-9eab-2eeb46676319','2015-11-24 14:01:26','21a38c86-188c-4a6b-a1e9-417c17dd320e','eab674ceb5b2e757c68947dd5367615bd79383ed','dir'),('cd856d41-bdec-424c-abd7-4f8b8c064278','2015-11-24 14:29:31','a25c6ce6-e1ea-48a2-944e-ca7661d8c045','cd3e018e7791439abb4a602ceaae263851974612','dir'),('d7825ce9-9610-4e79-9b75-d2e619a91125','2015-11-24 14:18:19','ad4b3d9e-a226-4591-9c5f-05e3d4a34a05','f491f2f20706eb2990395f4fd37c17d66f990186','dir'),('f2e1fee4-21ba-4f8e-99a6-981b947a2cf9','2015-11-24 14:40:36','750aa908-558f-463c-b6ba-dada79dc3f1b','2426890bde136e122e7047da04a55e4f95ef09ed','dir'),('f70a22b2-3746-4a24-9777-eb586e9aa85f','2015-11-25 14:47:17','aeae11a8-0dc0-4758-bc6a-c63bf2854812','bccdc7cdc71aea23606cf3c06777c757dc36099e','dir');
/*!40000 ALTER TABLE `itpdf_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itpdf_books`
--

DROP TABLE IF EXISTS `itpdf_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itpdf_books` (
  `id` varchar(40) NOT NULL,
  `user_id` varchar(40) NOT NULL COMMENT 'PDF文件所属者',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL COMMENT '书籍名称',
  `save_name` varchar(256) DEFAULT NULL COMMENT '文件被存盘名称',
  `md` varchar(64) NOT NULL COMMENT '消息摘要',
  `author` varchar(56) NOT NULL COMMENT '作者',
  `pages` int(5) NOT NULL COMMENT '页数量',
  `file_len` int(11) NOT NULL COMMENT '文件大小',
  `publisher` varchar(128) NOT NULL COMMENT '出版社',
  `category` varchar(16) NOT NULL COMMENT '书籍分类',
  `shared_addr` varchar(128) NOT NULL COMMENT '分享地址',
  `share_code` varchar(8) NOT NULL COMMENT '分享提取码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itpdf_books`
--

LOCK TABLES `itpdf_books` WRITE;
/*!40000 ALTER TABLE `itpdf_books` DISABLE KEYS */;
INSERT INTO `itpdf_books` VALUES ('08bcd3d5-4601-4d54-91a8-6772b6329690','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:26:13','C++-CLI Standard.pdf','a9785df1-a2f6-4d35-b4e2-2a6150a99a69_C++-CLI Standard.pdf','d4e1a95f5bba35d32006481491382d18b8f1b687','unkown',301,1752604,'unkown','C++','http://yunpan.cn/cLIt2IPIxsJ9x','f140'),('0b7941e9-daee-4bb2-ac9b-dea817fe4777','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:21:20','Boost程序库完全开发指南.pdf','770371d6-c976-40c3-a979-a2229e8af0b9_Boost程序库完全开发指南.pdf','f491f2f20706eb2990395f4fd37c17d66f990186','罗剑锋',588,22799273,'电子工业出版社','C++','http://yunpan.cn/cLIeTS3TkSIeZ','024b'),('3b9f9ea0-3a1a-441e-8f94-671c3c37f00e','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:15:51','BEYOND THE C++ STANDARD LIBRARY - Boost(1).pdf','805af11a-eb7d-4ae6-b5fb-fdc9f9dad969_BEYOND THE C++ STANDARD LIBRARY - Boost(1).pdf','9736556b0e71228a0822d59e105ba80884b113cf','By Björn Karlsson',225,1843375,'Addison Wesley Professional','C++','http://yunpan.cn/cLIeREJQESz9Y','c3f0'),('5c354597-1dcc-4cca-804e-7f07c44c0d4f','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-25 14:44:45','thinking_in_cpp_1.pdf','4818836f-3f1d-45da-b861-9924284ffaec_thinking_in_cpp_1.pdf','eb924fb712b922103b9173bb440336eafeeee8a3','Bruce Eckel',878,3025949,'MindView, Inc.','C++','http://yunpan.cn/cLTKMXRUI4BIc','f2a3'),('5f84d27b-e7c7-4db1-8624-b2f6abbec194','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:40:36','C++ Language ISO Standard Document.pdf','0c700713-58f6-4718-98f9-e3aa6348902b_C++ Language ISO Standard Document.pdf','2426890bde136e122e7047da04a55e4f95ef09ed','unkown',786,2475185,'unkown','C++','http://yunpan.cn/cLIXJgS8m9YZY','16cc'),('5fa21ff0-0141-4558-8f35-1ea8675f19c4','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:37:20','C++ GUI Programming with Qt 4 英文版.pdf','799e6135-de59-4521-ae40-0db3ebdeef46_C++ GUI Programming with Qt 4 英文版.pdf','cd3e018e7791439abb4a602ceaae263851974612','Jasmin Blanchette, Mark Summerfield',431,5277831,'Prentice Hall','C++','http://yunpan.cn/cLInfV6UCiTRB','1124'),('6622e4df-ee9d-45b0-8b99-3290963a0f5e','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-24 14:07:34','Algorithms In C.pdf','6a6c6a5d-55f2-4a4d-b7f9-21c59f9dc502_Algorithms In C.pdf','eab674ceb5b2e757c68947dd5367615bd79383ed','Robert Sedgewick',130,5691671,'Addison-Wesley Publishing Company,Inc','C++','http://yunpan.cn/cLIW8kBbusmE8','3e01'),('ef5b4e3a-6eeb-4223-b55b-4042b0f8da15','fec8a497-48ac-11e5-8b13-f56105f7c907','2015-11-25 14:47:17','thinking_in_cpp_2.pdf','12ba1f17-cf76-4f05-a246-7f8b53fe079d_thinking_in_cpp_2.pdf','bccdc7cdc71aea23606cf3c06777c757dc36099e','Bruce Eckel',592,2089683,'MindView, Inc.','C++','http://yunpan.cn/cLTK9XRvYMHxL','c2e4');
/*!40000 ALTER TABLE `itpdf_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itpdf_user`
--

DROP TABLE IF EXISTS `itpdf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itpdf_user` (
  `id` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `email` varchar(64) NOT NULL COMMENT '电子邮件',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itpdf_user`
--

LOCK TABLES `itpdf_user` WRITE;
/*!40000 ALTER TABLE `itpdf_user` DISABLE KEYS */;
INSERT INTO `itpdf_user` VALUES ('fec8a497-48ac-11e5-8b13-f56105f7c907','2015-08-22 09:05:55','fyzh84','fyzh84@126.com','13260123906');
/*!40000 ALTER TABLE `itpdf_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-25 22:59:02
