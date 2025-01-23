-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmtdl2g
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `jspmtdl2g`
--

/*!40000 DROP DATABASE IF EXISTS `jspmtdl2g`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspmtdl2g` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspmtdl2g`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-03-20 05:14:55','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289830121 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-03-20 05:14:55',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-03-20 05:14:55',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-03-20 05:14:55',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-03-20 05:14:55',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-03-20 05:14:55',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-03-20 05:14:55',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-03-20 05:14:55',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-03-20 05:14:55',18,'宇宙银河系地球1号','地某','13823888888','是'),(1679289830120,'2023-03-20 05:23:50',1679289796433,'xxxx地址','A用户','13585858585','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bisaijingcai`
--

DROP TABLE IF EXISTS `bisaijingcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bisaijingcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaimingcheng` varchar(200) NOT NULL COMMENT '比赛名称',
  `bisaitupian` longtext COMMENT '比赛图片',
  `kaishiriqi` date DEFAULT NULL COMMENT '开始日期',
  `qiuduiyaoqiu` varchar(200) NOT NULL COMMENT '球队要求',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `bisaineirong` longtext COMMENT '比赛内容',
  `huodejiangpin` varchar(200) DEFAULT NULL COMMENT '获得奖品',
  `zhudui` varchar(200) DEFAULT NULL COMMENT '主队',
  `kedui` varchar(200) DEFAULT NULL COMMENT '客队',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='比赛竞猜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bisaijingcai`
--

LOCK TABLES `bisaijingcai` WRITE;
/*!40000 ALTER TABLE `bisaijingcai` DISABLE KEYS */;
INSERT INTO `bisaijingcai` VALUES (61,'2023-03-20 05:14:55','比赛名称1','upload/bisaijingcai_bisaitupian1.jpg,upload/bisaijingcai_bisaitupian2.jpg,upload/bisaijingcai_bisaitupian3.jpg','2023-03-20','球队要求1','比赛地点1','比赛内容1','获得奖品1','主队1','客队1','2023-03-21 00:00:00'),(62,'2023-03-20 05:14:55','比赛名称2','upload/bisaijingcai_bisaitupian2.jpg,upload/bisaijingcai_bisaitupian3.jpg,upload/bisaijingcai_bisaitupian4.jpg','2023-03-20','球队要求2','比赛地点2','比赛内容2','获得奖品2','主队2','客队2','2023-03-21 00:00:00'),(63,'2023-03-20 05:14:55','比赛名称3','upload/bisaijingcai_bisaitupian3.jpg,upload/bisaijingcai_bisaitupian4.jpg,upload/bisaijingcai_bisaitupian5.jpg','2023-03-20','球队要求3','比赛地点3','比赛内容3','获得奖品3','主队3','客队3','2023-03-21 00:00:00'),(64,'2023-03-20 05:14:55','比赛名称4','upload/bisaijingcai_bisaitupian4.jpg,upload/bisaijingcai_bisaitupian5.jpg,upload/bisaijingcai_bisaitupian6.jpg','2023-03-20','球队要求4','比赛地点4','比赛内容4','获得奖品4','主队4','客队4','2023-03-21 00:00:00'),(65,'2023-03-20 05:14:55','比赛名称5','upload/bisaijingcai_bisaitupian5.jpg,upload/bisaijingcai_bisaitupian6.jpg,upload/bisaijingcai_bisaitupian7.jpg','2023-03-20','球队要求5','比赛地点5','比赛内容5','获得奖品5','主队5','客队5','2023-03-21 00:00:00'),(66,'2023-03-20 05:14:55','比赛名称6','upload/bisaijingcai_bisaitupian6.jpg,upload/bisaijingcai_bisaitupian7.jpg,upload/bisaijingcai_bisaitupian8.jpg','2023-03-20','球队要求6','比赛地点6','比赛内容6','获得奖品6','主队6','客队6','2023-03-21 00:00:00'),(67,'2023-03-20 05:14:55','比赛名称7','upload/bisaijingcai_bisaitupian7.jpg,upload/bisaijingcai_bisaitupian8.jpg,upload/bisaijingcai_bisaitupian9.jpg','2023-03-20','球队要求7','比赛地点7','比赛内容7','获得奖品7','主队7','客队7','2023-03-21 00:00:00'),(68,'2023-03-20 05:14:55','比赛名称8','upload/bisaijingcai_bisaitupian8.jpg,upload/bisaijingcai_bisaitupian9.jpg,upload/bisaijingcai_bisaitupian10.jpg','2023-03-20','球队要求8','比赛地点8','<p>比赛内容8</p>','获得奖品8','主队8','客队8','2023-03-15 09:09:00');
/*!40000 ALTER TABLE `bisaijingcai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'gouwushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289918528 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgouwushangcheng`
--

DROP TABLE IF EXISTS `discussgouwushangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgouwushangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679290088948 DEFAULT CHARSET=utf8 COMMENT='购物商城评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgouwushangcheng`
--

LOCK TABLES `discussgouwushangcheng` WRITE;
/*!40000 ALTER TABLE `discussgouwushangcheng` DISABLE KEYS */;
INSERT INTO `discussgouwushangcheng` VALUES (1679290088947,'2023-03-20 05:28:08',52,1679289796433,'upload/1679289793303.jpg','111','用户可以评价商品',NULL);
/*!40000 ALTER TABLE `discussgouwushangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussliansaixinxi`
--

DROP TABLE IF EXISTS `discussliansaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussliansaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联赛信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussliansaixinxi`
--

LOCK TABLES `discussliansaixinxi` WRITE;
/*!40000 ALTER TABLE `discussliansaixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussliansaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiudui`
--

DROP TABLE IF EXISTS `discussqiudui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiudui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289930317 DEFAULT CHARSET=utf8 COMMENT='球队评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiudui`
--

LOCK TABLES `discussqiudui` WRITE;
/*!40000 ALTER TABLE `discussqiudui` DISABLE KEYS */;
INSERT INTO `discussqiudui` VALUES (1679289930316,'2023-03-20 05:25:29',31,1679289796433,'upload/1679289793303.jpg','111','用户可以进行评论',NULL);
/*!40000 ALTER TABLE `discussqiudui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiuyuanxinxi`
--

DROP TABLE IF EXISTS `discussqiuyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='球员信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiuyuanxinxi`
--

LOCK TABLES `discussqiuyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussqiuyuanxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussqiuyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289857578 DEFAULT CHARSET=utf8 COMMENT='论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2023-03-20 05:14:55','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(92,'2023-03-20 05:14:55','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(93,'2023-03-20 05:14:55','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(94,'2023-03-20 05:14:55','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(95,'2023-03-20 05:14:55','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(96,'2023-03-20 05:14:55','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(97,'2023-03-20 05:14:55','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(98,'2023-03-20 05:14:55','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放'),(1679289847438,'2023-03-20 05:24:06','和其他用户交流互动','<p>和其他用户交流互动和其他用户交流互动和其他用户交流互动和其他用户交流互动</p>',0,1679289796433,'111',NULL,'开放'),(1679289857577,'2023-03-20 05:24:17',NULL,'其他用户可以进行评论回复',1679289847438,1679289796433,'111','upload/1679289793303.jpg',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gouwushangcheng`
--

DROP TABLE IF EXISTS `gouwushangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gouwushangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='购物商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gouwushangcheng`
--

LOCK TABLES `gouwushangcheng` WRITE;
/*!40000 ALTER TABLE `gouwushangcheng` DISABLE KEYS */;
INSERT INTO `gouwushangcheng` VALUES (51,'2023-03-20 05:14:55','1111111111','商品名称1','生产地1','商品分类1','upload/gouwushangcheng_shangpintupian1.jpg,upload/gouwushangcheng_shangpintupian2.jpg,upload/gouwushangcheng_shangpintupian3.jpg','商品简介1','品牌1',99.9),(52,'2023-03-20 05:14:55','2222222222','商品名称2','生产地2','商品分类2','upload/gouwushangcheng_shangpintupian2.jpg,upload/gouwushangcheng_shangpintupian3.jpg,upload/gouwushangcheng_shangpintupian4.jpg','商品简介2','品牌2',99.9),(53,'2023-03-20 05:14:55','3333333333','商品名称3','生产地3','商品分类3','upload/gouwushangcheng_shangpintupian3.jpg,upload/gouwushangcheng_shangpintupian4.jpg,upload/gouwushangcheng_shangpintupian5.jpg','商品简介3','品牌3',99.9),(54,'2023-03-20 05:14:55','4444444444','商品名称4','生产地4','商品分类4','upload/gouwushangcheng_shangpintupian4.jpg,upload/gouwushangcheng_shangpintupian5.jpg,upload/gouwushangcheng_shangpintupian6.jpg','商品简介4','品牌4',99.9),(55,'2023-03-20 05:14:55','5555555555','商品名称5','生产地5','商品分类5','upload/gouwushangcheng_shangpintupian5.jpg,upload/gouwushangcheng_shangpintupian6.jpg,upload/gouwushangcheng_shangpintupian7.jpg','商品简介5','品牌5',99.9),(56,'2023-03-20 05:14:55','6666666666','商品名称6','生产地6','商品分类6','upload/gouwushangcheng_shangpintupian6.jpg,upload/gouwushangcheng_shangpintupian7.jpg,upload/gouwushangcheng_shangpintupian8.jpg','商品简介6','品牌6',99.9),(57,'2023-03-20 05:14:55','7777777777','商品名称7','生产地7','商品分类7','upload/gouwushangcheng_shangpintupian7.jpg,upload/gouwushangcheng_shangpintupian8.jpg,upload/gouwushangcheng_shangpintupian9.jpg','商品简介7','品牌7',99.9),(58,'2023-03-20 05:14:55','8888888888','商品名称8','生产地8','商品分类8','upload/gouwushangcheng_shangpintupian8.jpg,upload/gouwushangcheng_shangpintupian9.jpg,upload/gouwushangcheng_shangpintupian10.jpg','商品简介8','品牌8',99.9);
/*!40000 ALTER TABLE `gouwushangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingcaixinxi`
--

DROP TABLE IF EXISTS `jingcaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingcaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bisaimingcheng` varchar(200) DEFAULT NULL COMMENT '比赛名称',
  `kaishiriqi` varchar(200) DEFAULT NULL COMMENT '开始日期',
  `bisaididian` varchar(200) DEFAULT NULL COMMENT '比赛地点',
  `huodejiangpin` varchar(200) DEFAULT NULL COMMENT '获得奖品',
  `shengfuduiwu` varchar(200) DEFAULT NULL COMMENT '胜负队伍',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `jingcaishijian` datetime DEFAULT NULL COMMENT '竞猜时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289869701 DEFAULT CHARSET=utf8 COMMENT='竞猜信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingcaixinxi`
--

LOCK TABLES `jingcaixinxi` WRITE;
/*!40000 ALTER TABLE `jingcaixinxi` DISABLE KEYS */;
INSERT INTO `jingcaixinxi` VALUES (71,'2023-03-20 05:14:55','比赛名称1','开始日期1','比赛地点1','获得奖品1','主队','用户账号1','用户姓名1','用户手机1','2023-03-20 13:14:55','是',''),(72,'2023-03-20 05:14:55','比赛名称2','开始日期2','比赛地点2','获得奖品2','主队','用户账号2','用户姓名2','用户手机2','2023-03-20 13:14:55','是',''),(73,'2023-03-20 05:14:55','比赛名称3','开始日期3','比赛地点3','获得奖品3','主队','用户账号3','用户姓名3','用户手机3','2023-03-20 13:14:55','是',''),(74,'2023-03-20 05:14:55','比赛名称4','开始日期4','比赛地点4','获得奖品4','主队','用户账号4','用户姓名4','用户手机4','2023-03-20 13:14:55','是',''),(75,'2023-03-20 05:14:55','比赛名称5','开始日期5','比赛地点5','获得奖品5','主队','用户账号5','用户姓名5','用户手机5','2023-03-20 13:14:55','是',''),(76,'2023-03-20 05:14:55','比赛名称6','开始日期6','比赛地点6','获得奖品6','主队','用户账号6','用户姓名6','用户手机6','2023-03-20 13:14:55','是',''),(77,'2023-03-20 05:14:55','比赛名称7','开始日期7','比赛地点7','获得奖品7','主队','用户账号7','用户姓名7','用户手机7','2023-03-20 13:14:55','是',''),(78,'2023-03-20 05:14:55','比赛名称8','开始日期8','比赛地点8','获得奖品8','主队','用户账号8','用户姓名8','用户手机8','2023-03-20 13:14:55','是',''),(1679289869700,'2023-03-20 05:24:28','比赛名称2','2023-03-20','比赛地点2','获得奖品2','主队','111','A用户','13899999999','2023-03-20 13:25:26','是','审核用户的竞猜, ');
/*!40000 ALTER TABLE `jingcaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liansaixinxi`
--

DROP TABLE IF EXISTS `liansaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liansaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liansaimingcheng` varchar(200) NOT NULL COMMENT '联赛名称',
  `fengmiantupian` longtext NOT NULL COMMENT '封面图片',
  `jubandidian` varchar(200) NOT NULL COMMENT '举办地点',
  `kaishishijian` datetime DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `qiuduishuliang` int(11) NOT NULL COMMENT '球队数量',
  `jubanfang` varchar(200) NOT NULL COMMENT '举办方',
  `shangchangqiuyuan` longtext COMMENT '上场球员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='联赛信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liansaixinxi`
--

LOCK TABLES `liansaixinxi` WRITE;
/*!40000 ALTER TABLE `liansaixinxi` DISABLE KEYS */;
INSERT INTO `liansaixinxi` VALUES (41,'2023-03-20 05:14:55','联赛名称1','upload/liansaixinxi_fengmiantupian1.jpg,upload/liansaixinxi_fengmiantupian2.jpg,upload/liansaixinxi_fengmiantupian3.jpg','举办地点1','2023-03-20 13:14:55','2023-03-20 13:14:55',1,'举办方1','上场球员1'),(42,'2023-03-20 05:14:55','联赛名称2','upload/liansaixinxi_fengmiantupian2.jpg,upload/liansaixinxi_fengmiantupian3.jpg,upload/liansaixinxi_fengmiantupian4.jpg','举办地点2','2023-03-20 13:14:55','2023-03-20 13:14:55',2,'举办方2','上场球员2'),(43,'2023-03-20 05:14:55','联赛名称3','upload/liansaixinxi_fengmiantupian3.jpg,upload/liansaixinxi_fengmiantupian4.jpg,upload/liansaixinxi_fengmiantupian5.jpg','举办地点3','2023-03-20 13:14:55','2023-03-20 13:14:55',3,'举办方3','上场球员3'),(44,'2023-03-20 05:14:55','联赛名称4','upload/liansaixinxi_fengmiantupian4.jpg,upload/liansaixinxi_fengmiantupian5.jpg,upload/liansaixinxi_fengmiantupian6.jpg','举办地点4','2023-03-20 13:14:55','2023-03-20 13:14:55',4,'举办方4','上场球员4'),(45,'2023-03-20 05:14:55','联赛名称5','upload/liansaixinxi_fengmiantupian5.jpg,upload/liansaixinxi_fengmiantupian6.jpg,upload/liansaixinxi_fengmiantupian7.jpg','举办地点5','2023-03-20 13:14:55','2023-03-20 13:14:55',5,'举办方5','上场球员5'),(46,'2023-03-20 05:14:55','联赛名称6','upload/liansaixinxi_fengmiantupian6.jpg,upload/liansaixinxi_fengmiantupian7.jpg,upload/liansaixinxi_fengmiantupian8.jpg','举办地点6','2023-03-20 13:14:55','2023-03-20 13:14:55',6,'举办方6','上场球员6'),(47,'2023-03-20 05:14:55','联赛名称7','upload/liansaixinxi_fengmiantupian7.jpg,upload/liansaixinxi_fengmiantupian8.jpg,upload/liansaixinxi_fengmiantupian9.jpg','举办地点7','2023-03-20 13:14:55','2023-03-20 13:14:55',7,'举办方7','上场球员7'),(48,'2023-03-20 05:14:55','联赛名称8','upload/liansaixinxi_fengmiantupian8.jpg,upload/liansaixinxi_fengmiantupian9.jpg,upload/liansaixinxi_fengmiantupian10.jpg','举办地点8','2023-03-20 13:14:55','2023-03-20 13:14:55',8,'举办方8','上场球员8');
/*!40000 ALTER TABLE `liansaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (141,'2023-03-20 05:14:55','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(142,'2023-03-20 05:14:55','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(143,'2023-03-20 05:14:55','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(144,'2023-03-20 05:14:55','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(145,'2023-03-20 05:14:55','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(146,'2023-03-20 05:14:55','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(147,'2023-03-20 05:14:55','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(148,'2023-03-20 05:14:55','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'gouwushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289953103 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1679289952939,'2023-03-20 05:25:52','2023320132653328','gouwushangcheng',1679289796433,52,'商品名称2','upload/gouwushangcheng_shangpintupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已完成','xxxx地址','13585858585','A用户','无',NULL),(1679289953102,'2023-03-20 05:25:52','2023320132653331','gouwushangcheng',1679289796433,55,'商品名称5','upload/gouwushangcheng_shangpintupian5.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','xxxx地址','13585858585','A用户','无',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiudui`
--

DROP TABLE IF EXISTS `qiudui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiudui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuduimingcheng` varchar(200) DEFAULT NULL COMMENT '球队名称',
  `chuangshiren` varchar(200) DEFAULT NULL COMMENT '创始人',
  `chuanglishijian` date DEFAULT NULL COMMENT '创立时间',
  `qiuduikouhao` varchar(200) DEFAULT NULL COMMENT '球队口号',
  `qiuduilishi` varchar(200) DEFAULT NULL COMMENT '球队历史',
  `qiuduijieshao` longtext COMMENT '球队介绍',
  `qiuduitupian` longtext COMMENT '球队图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='球队';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiudui`
--

LOCK TABLES `qiudui` WRITE;
/*!40000 ALTER TABLE `qiudui` DISABLE KEYS */;
INSERT INTO `qiudui` VALUES (31,'2023-03-20 05:14:55','球队名称1','创始人1','2023-03-20','球队口号1','球队历史1','球队介绍1','upload/qiudui_qiuduitupian1.jpg,upload/qiudui_qiuduitupian2.jpg,upload/qiudui_qiuduitupian3.jpg'),(32,'2023-03-20 05:14:55','球队名称2','创始人2','2023-03-20','球队口号2','球队历史2','球队介绍2','upload/qiudui_qiuduitupian2.jpg,upload/qiudui_qiuduitupian3.jpg,upload/qiudui_qiuduitupian4.jpg'),(33,'2023-03-20 05:14:55','球队名称3','创始人3','2023-03-20','球队口号3','球队历史3','球队介绍3','upload/qiudui_qiuduitupian3.jpg,upload/qiudui_qiuduitupian4.jpg,upload/qiudui_qiuduitupian5.jpg'),(34,'2023-03-20 05:14:55','球队名称4','创始人4','2023-03-20','球队口号4','球队历史4','球队介绍4','upload/qiudui_qiuduitupian4.jpg,upload/qiudui_qiuduitupian5.jpg,upload/qiudui_qiuduitupian6.jpg'),(35,'2023-03-20 05:14:55','球队名称5','创始人5','2023-03-20','球队口号5','球队历史5','球队介绍5','upload/qiudui_qiuduitupian5.jpg,upload/qiudui_qiuduitupian6.jpg,upload/qiudui_qiuduitupian7.jpg'),(36,'2023-03-20 05:14:55','球队名称6','创始人6','2023-03-20','球队口号6','球队历史6','球队介绍6','upload/qiudui_qiuduitupian6.jpg,upload/qiudui_qiuduitupian7.jpg,upload/qiudui_qiuduitupian8.jpg'),(37,'2023-03-20 05:14:55','球队名称7','创始人7','2023-03-20','球队口号7','球队历史7','球队介绍7','upload/qiudui_qiuduitupian7.jpg,upload/qiudui_qiuduitupian8.jpg,upload/qiudui_qiuduitupian9.jpg'),(38,'2023-03-20 05:14:55','球队名称8','创始人8','2023-03-20','球队口号8','球队历史8','球队介绍8','upload/qiudui_qiuduitupian8.jpg,upload/qiudui_qiuduitupian9.jpg,upload/qiudui_qiuduitupian10.jpg');
/*!40000 ALTER TABLE `qiudui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuyuanxinxi`
--

DROP TABLE IF EXISTS `qiuyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuyuanxingming` varchar(200) DEFAULT NULL COMMENT '球员姓名',
  `qiuyuanzhaopian` longtext COMMENT '球员照片',
  `guoji` varchar(200) DEFAULT NULL COMMENT '国籍',
  `suoshuqiudui` varchar(200) DEFAULT NULL COMMENT '所属球队',
  `changshangweizhi` varchar(200) DEFAULT NULL COMMENT '场上位置',
  `jinqiushu` int(11) DEFAULT NULL COMMENT '进球数',
  `zhugongshu` int(11) DEFAULT NULL COMMENT '助攻数',
  `huojiangshu` int(11) DEFAULT NULL COMMENT '获奖数',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `zhiyeshengya` longtext COMMENT '职业生涯',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='球员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuyuanxinxi`
--

LOCK TABLES `qiuyuanxinxi` WRITE;
/*!40000 ALTER TABLE `qiuyuanxinxi` DISABLE KEYS */;
INSERT INTO `qiuyuanxinxi` VALUES (21,'2023-03-20 05:14:55','球员姓名1','upload/qiuyuanxinxi_qiuyuanzhaopian1.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian2.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian3.jpg','国籍1','球队名称4','中场',1,1,1,'年龄1','身高1','体重1','<p>职业生涯1</p>'),(22,'2023-03-20 05:14:55','球员姓名2','upload/qiuyuanxinxi_qiuyuanzhaopian2.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian3.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian4.jpg','国籍2','所属球队2','前锋',2,2,2,'年龄2','身高2','体重2','职业生涯2'),(23,'2023-03-20 05:14:55','球员姓名3','upload/qiuyuanxinxi_qiuyuanzhaopian3.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian4.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian5.jpg','国籍3','所属球队3','前锋',3,3,3,'年龄3','身高3','体重3','职业生涯3'),(24,'2023-03-20 05:14:55','球员姓名4','upload/qiuyuanxinxi_qiuyuanzhaopian4.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian5.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian6.jpg','国籍4','所属球队4','前锋',4,4,4,'年龄4','身高4','体重4','职业生涯4'),(25,'2023-03-20 05:14:55','球员姓名5','upload/qiuyuanxinxi_qiuyuanzhaopian5.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian6.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian7.jpg','国籍5','所属球队5','前锋',5,5,5,'年龄5','身高5','体重5','职业生涯5'),(26,'2023-03-20 05:14:55','球员姓名6','upload/qiuyuanxinxi_qiuyuanzhaopian6.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian7.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian8.jpg','国籍6','所属球队6','前锋',6,6,6,'年龄6','身高6','体重6','职业生涯6'),(27,'2023-03-20 05:14:55','球员姓名7','upload/qiuyuanxinxi_qiuyuanzhaopian7.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian8.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian9.jpg','国籍7','所属球队7','前锋',7,7,7,'年龄7','身高7','体重7','职业生涯7'),(28,'2023-03-20 05:14:55','球员姓名8','upload/qiuyuanxinxi_qiuyuanzhaopian8.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian9.jpg,upload/qiuyuanxinxi_qiuyuanzhaopian10.jpg','国籍8','所属球队8','前锋',8,8,8,'年龄8','身高8','体重8','职业生涯8');
/*!40000 ALTER TABLE `qiuyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (81,'2023-03-20 05:14:55','商品分类1'),(82,'2023-03-20 05:14:55','商品分类2'),(83,'2023-03-20 05:14:55','商品分类3'),(84,'2023-03-20 05:14:55','商品分类4'),(85,'2023-03-20 05:14:55','商品分类5'),(86,'2023-03-20 05:14:55','商品分类6'),(87,'2023-03-20 05:14:55','商品分类7'),(88,'2023-03-20 05:14:55','商品分类8');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289911639 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1679289911638,'2023-03-20 05:25:11',1679289796433,52,'gouwushangcheng','商品名称2','upload/gouwushangcheng_shangpintupian2.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-03-20 05:14:55','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1679289796433,'111','yonghu','用户','nhdjd4k68cg1a1plol2d6hvqj1sfhuzm','2023-03-20 05:23:20','2023-03-20 06:27:49'),(2,1,'admin','users','管理员','8nko5e1bhgn2zt52apf0fkvi9epfg677','2023-03-20 05:24:33','2023-03-20 06:26:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-20 05:14:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1679289796434 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-03-20 05:14:55','用户账号1','123456','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881',200),(12,'2023-03-20 05:14:55','用户账号2','123456','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882',200),(13,'2023-03-20 05:14:55','用户账号3','123456','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883',200),(14,'2023-03-20 05:14:55','用户账号4','123456','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884',200),(15,'2023-03-20 05:14:55','用户账号5','123456','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885',200),(16,'2023-03-20 05:14:55','用户账号6','123456','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886',200),(17,'2023-03-20 05:14:55','用户账号7','123456','用户姓名7','男','年龄7','upload/yonghu_touxiang7.jpg','13823888887',200),(18,'2023-03-20 05:14:55','用户账号8','123456','用户姓名8','男','年龄8','upload/yonghu_touxiang8.jpg','13823888888',200),(1679289796433,'2023-03-20 05:23:16','111','111','A用户','男','22','upload/1679289793303.jpg','13899999999',212823);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 19:19:16
