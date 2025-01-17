-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootl7own
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
) ENGINE=InnoDB AUTO_INCREMENT=1610685947451 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-15 04:20:02',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-15 04:20:02',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-15 04:20:02',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-15 04:20:02',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-15 04:20:02',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-15 04:20:02',6,'宇宙银河系月球1号','月某','13823888886','是'),(1610685775844,'2021-01-15 04:42:55',41,'江西省九江市永修县吴城镇鄱阳湖国家旅游风景区','小吴','16459878988','是'),(1610685947450,'2021-01-15 04:45:46',1610685888971,'江西省上饶市信州区茅家岭街道江南路','小李','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
  `tablename` varchar(200) DEFAULT 'zhekoujiaju' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686127127 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686434291 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-01-15 04:20:02',1,1,'提问1','回复1',1),(62,'2021-01-15 04:20:02',2,2,'提问2','回复2',2),(63,'2021-01-15 04:20:02',3,3,'提问3','回复3',3),(64,'2021-01-15 04:20:02',4,4,'提问4','回复4',4),(65,'2021-01-15 04:20:02',5,5,'提问5','回复5',5),(66,'2021-01-15 04:20:02',6,6,'提问6','回复6',6),(1610686166851,'2021-01-15 04:49:26',1610685888971,NULL,'这里可以向管理员咨询商品信息',NULL,0),(1610686434290,'2021-01-15 04:53:53',1610685888971,1,NULL,'这里回复用户对商品的咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootl7own/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootl7own/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootl7own/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610687360180 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (1610685837338,'2021-01-15 04:43:56','20211151243114464187','1212','5','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610685835677.jpg\"></p>','2021-01-18','001','13823888881','是','这里查看用户评价  并回复'),(1610687360179,'2021-01-15 05:09:19','202111512464869572220','这里进行商品评价','5','<p>666</p>',NULL,'666','16459878986','是','收到评价  谢谢');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussrexiaojiaju`
--

DROP TABLE IF EXISTS `discussrexiaojiaju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussrexiaojiaju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610685997784 DEFAULT CHARSET=utf8 COMMENT='热销家具评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussrexiaojiaju`
--

LOCK TABLES `discussrexiaojiaju` WRITE;
/*!40000 ALTER TABLE `discussrexiaojiaju` DISABLE KEYS */;
INSERT INTO `discussrexiaojiaju` VALUES (121,'2021-01-15 04:20:03',1,1,'评论内容1','回复内容1'),(122,'2021-01-15 04:20:03',2,2,'评论内容2','回复内容2'),(123,'2021-01-15 04:20:03',3,3,'评论内容3','回复内容3'),(124,'2021-01-15 04:20:03',4,4,'评论内容4','回复内容4'),(125,'2021-01-15 04:20:03',5,5,'评论内容5','回复内容5'),(126,'2021-01-15 04:20:03',6,6,'评论内容6','回复内容6'),(1610685997783,'2021-01-15 04:46:37',21,1610685888971,'登录后用户可以评论  收藏  购买  向管理员咨询等操作','管理员在这里回复用户在前台的评论');
/*!40000 ALTER TABLE `discussrexiaojiaju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhekoujiaju`
--

DROP TABLE IF EXISTS `discusszhekoujiaju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhekoujiaju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686113538 DEFAULT CHARSET=utf8 COMMENT='折扣家具评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhekoujiaju`
--

LOCK TABLES `discusszhekoujiaju` WRITE;
/*!40000 ALTER TABLE `discusszhekoujiaju` DISABLE KEYS */;
INSERT INTO `discusszhekoujiaju` VALUES (131,'2021-01-15 04:20:03',1,1,'评论内容1','回复内容1'),(132,'2021-01-15 04:20:03',2,2,'评论内容2','回复内容2'),(133,'2021-01-15 04:20:03',3,3,'评论内容3','回复内容3'),(134,'2021-01-15 04:20:03',4,4,'评论内容4','回复内容4'),(135,'2021-01-15 04:20:03',5,5,'评论内容5','回复内容5'),(136,'2021-01-15 04:20:03',6,6,'评论内容6','回复内容6'),(1610686113537,'2021-01-15 04:48:33',32,1610685888971,'折扣这里对商品做了一个倒计时功能  当活动倒计时结束后  该商品将不能再被购买',NULL);
/*!40000 ALTER TABLE `discusszhekoujiaju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiajufenlei`
--

DROP TABLE IF EXISTS `jiajufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiajufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686213532 DEFAULT CHARSET=utf8 COMMENT='家具分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiajufenlei`
--

LOCK TABLES `jiajufenlei` WRITE;
/*!40000 ALTER TABLE `jiajufenlei` DISABLE KEYS */;
INSERT INTO `jiajufenlei` VALUES (11,'2021-01-15 04:20:02','卧室家具 '),(12,'2021-01-15 04:20:02','客厅家具'),(13,'2021-01-15 04:20:02','餐厅家具'),(14,'2021-01-15 04:20:02','书房家具'),(15,'2021-01-15 04:20:02','卫生间家具'),(16,'2021-01-15 04:20:02','厨房家具'),(1610686213531,'2021-01-15 04:50:13','户外家具');
/*!40000 ALTER TABLE `jiajufenlei` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-15 04:20:03','销售家具未能提供“环评” 合同解除被判赔偿损失','http://localhost:8080/springbootl7own/upload/news_picture1.jpg','<p class=\"ql-align-justify\">	法制网讯(通讯员 徐丹丹)为在某商场开店进行家具销售,一个体经营者经过考察与一家具厂达成合作协议,取得专卖资格,并在商场租赁展位。合同履行过程中,因家具厂迟迟未能提供产品环保证明,导致经营者在商场经营受到重大影响,引发诉讼。12月18日,随着南通市中级人民法院终审判决的送达,这起合同纠纷案落下帷幕。法院认为,违约行为导致合同目的不能实现,守约方可单方解除合同。遂判决家具厂返还货款7万余元并赔偿相应损失8万余元。</p><p class=\"ql-align-justify\">	2018年8月,个体户叶某想在一家商场开店进行家具销售,遂在市场考察时与家具厂进行销售磋商。</p><p class=\"ql-align-justify\">	2018年9月叶某通过微信向家具厂告知商场家具销售所需材料,主要包括产品质检报告、环保检测证书、工厂品牌授权等。家具厂随后表示要到10月底才能下来类似的环境检测类证书。叶某再次叮嘱,一定要取得环保检测证书,否则需要空场,并向家具厂发送环保证书模板。次日,叶某与家具厂签订专卖合同一份,代理专卖家具厂北欧系列产品。合同签订后,叶某陆续向家具厂支付货款10万余元,家具厂亦向叶某发货相应价值产品。</p><p><br></p>'),(112,'2021-01-15 04:20:03','居住类商品销售增速加快 家电消费回暖','http://localhost:8080/springbootl7own/upload/news_picture2.jpg','<p>家电家具历来是消费市场的“大头”。数据显示，2020年10月，全国居住类商品销售增速加快，家电、家具、建材零售额增速比上月分别加快3.2、1.9和3.7个百分点。各地各部门正积极开展消费促进活动、营造良好消费环境，大力提振家电、家具等重点消费。</p>'),(113,'2021-01-15 04:20:03','家具内销大势如何？','http://localhost:8080/springbootl7own/upload/news_picture3.jpg','<p class=\"ql-align-justify\">家具业的外销出现了出人意料的好形势，这从海关的统计数据和三季度外贸家具企业的财务报告中都有清晰的显示。家具内销市场的形势如何？何时才能有实质性的好转？这是人们当前关心的两大问题。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">至3月，是疫情影响最严重的时期，家具内销市场损失惨重。</p><p class=\"ql-align-justify\">4月，限额以上家具销售企业销售额同比去年4月下降5.4%；至10月，国内市场家具销售额同比增长1.3%。这7个月间，市场经历了什么？既有5月的欣喜，家具人以为迎来了“报复性反弹”，又有6月的市场降温，更有7月与8月的市场遇冷，以及9月的市场反弹，终至10月的再次恢复性增长。以下表格清晰地记录了今年内销市场的跌宕起伏。限额以上家具企业销售额增长情况表：</p><p><br></p>'),(114,'2021-01-15 04:20:03','抽检网络平台销售儿童家具72%不合格！','http://localhost:8080/springbootl7own/upload/news_picture4.jpg','<p class=\"ql-align-justify\">近期上海市场监管部门集中对天猫、京东、1号店三家网络平台销售的25批次儿童家具进行抽检，有18批次不合格，不合格检出率为72％，其中宜家儿童床和书桌也因警示标识不合格而“上榜”。</p><p class=\"ql-align-justify\">此次不合格的儿童家具，主要集中在两个方面的问题，一个是警示标识，还有一个是结构安全。对于儿童家具来说，安全应该是摆在第一位的。</p><p><br></p>'),(115,'2021-01-15 04:20:03','标题5','http://localhost:8080/springbootl7own/upload/news_picture5.jpg','内容5'),(116,'2021-01-15 04:20:03','标题6','http://localhost:8080/springbootl7own/upload/news_picture6.jpg','内容6');
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
  `tablename` varchar(200) DEFAULT 'zhekoujiaju' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686137303 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1610685782318,'2021-01-15 04:43:02','20211151243114464187','rexiaojiaju',41,21,'木椅','http://localhost:8080/springbootl7own/upload/1610685527131.jpg',3,166,166,498,498,1,'已发货','江西省九江市永修县吴城镇鄱阳湖国家旅游风景区'),(1610685815403,'2021-01-15 04:43:34','202111512433381829496','zhekoujiaju',41,31,'家具名称1','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian1.jpg',1,1668,1668,1668,1668,1,'已发货','江西省九江市永修县吴城镇鄱阳湖国家旅游风景区'),(1610686010252,'2021-01-15 04:46:49','202111512464869572220','rexiaojiaju',1610685888971,21,'木椅','http://localhost:8080/springbootl7own/upload/1610685527131.jpg',1,166,166,166,166,1,'已完成','江西省上饶市信州区茅家岭街道江南路'),(1610686137302,'2021-01-15 04:48:56','202111512485566307985','zhekoujiaju',1610685888971,31,'家具名称1','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian1.jpg',1,1668,1668,1668,1668,1,'已完成','江西省上饶市信州区茅家岭街道江南路');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rexiaojiaju`
--

DROP TABLE IF EXISTS `rexiaojiaju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rexiaojiaju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajumingcheng` varchar(200) NOT NULL COMMENT '家具名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `fengge` varchar(200) NOT NULL COMMENT '风格',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jieshao` longtext COMMENT '介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686279781 DEFAULT CHARSET=utf8 COMMENT='热销家具';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rexiaojiaju`
--

LOCK TABLES `rexiaojiaju` WRITE;
/*!40000 ALTER TABLE `rexiaojiaju` DISABLE KEYS */;
INSERT INTO `rexiaojiaju` VALUES (21,'2021-01-15 04:20:02','木椅','书房家具','中式','单件','http://localhost:8080/springbootl7own/upload/1610685527131.jpg','张','品牌1','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610685530731.jpg\"></p>','2021-01-15 04:54:24',11,166),(22,'2021-01-15 04:20:02','家具名称2','客厅家具','北欧','单件','http://localhost:8080/springbootl7own/upload/rexiaojiaju_tupian2.jpg','规格2','品牌2','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610685590163.jpg\"></p>','2021-01-15 04:39:34',3,168),(23,'2021-01-15 04:20:02','家具名称3','分类3','中式','单件','http://localhost:8080/springbootl7own/upload/rexiaojiaju_tupian3.jpg','规格3','品牌3','介绍3','2021-01-15 12:20:02',3,99.9),(24,'2021-01-15 04:20:02','家具名称4','分类4','中式','单件','http://localhost:8080/springbootl7own/upload/rexiaojiaju_tupian4.jpg','规格4','品牌4','介绍4','2021-01-15 04:47:37',6,99.9),(25,'2021-01-15 04:20:02','家具名称5','分类5','中式','单件','http://localhost:8080/springbootl7own/upload/rexiaojiaju_tupian5.jpg','规格5','品牌5','介绍5','2021-01-15 12:20:02',5,99.9),(26,'2021-01-15 04:20:02','家具名称6','分类6','中式','单件','http://localhost:8080/springbootl7own/upload/rexiaojiaju_tupian6.jpg','规格6','品牌6','介绍6','2021-01-15 12:20:02',6,99.9),(1610686279780,'2021-01-15 04:51:19','这里可以添加新的家具信息','客厅家具','东南亚','组合','http://localhost:8080/springbootl7own/upload/1610686258461.jpg','一套','大牌','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610686277397.jpg\"></p>','2021-01-15 04:54:30',2,6998);
/*!40000 ALTER TABLE `rexiaojiaju` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686078705 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610685981541,'2021-01-15 04:46:20',1610685888971,21,'rexiaojiaju','木椅','http://localhost:8080/springbootl7own/upload/1610685527131.jpg'),(1610686078704,'2021-01-15 04:47:58',1610685888971,34,'zhekoujiaju','家具名称4','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian4.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','mcjkb1dk182p620m9hvjmwwrgnw0f36m','2021-01-15 04:36:54','2021-01-14 22:11:42'),(2,41,'001','yonghu','用户','20z1dxrxmiu03j3uo140isvmhsgwlrma','2021-01-15 04:42:25','2021-01-14 21:42:25'),(3,1610685888971,'666','yonghu','用户','x2pfz9pafl1rnbu8yie7a2ltxrxy0dg9','2021-01-15 04:44:53','2021-01-14 22:09:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-15 04:20:03'),(2,'000','000','管理员','2021-01-15 04:53:14');
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610685888972 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2021-01-15 04:20:02','001','001','小吴','女','http://localhost:8080/springbootl7own/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',3934),(42,'2021-01-15 04:20:02','002','002','小叶','女','http://localhost:8080/springbootl7own/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(43,'2021-01-15 04:20:02','用户3','123456','姓名3','男','http://localhost:8080/springbootl7own/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(44,'2021-01-15 04:20:02','用户4','123456','姓名4','男','http://localhost:8080/springbootl7own/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(46,'2021-01-15 04:20:02','用户6','123456','姓名6','男','http://localhost:8080/springbootl7own/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1610685888971,'2021-01-15 04:44:48','666','666','小李','女','http://localhost:8080/springbootl7own/upload/1610685901696.jpg','16459878986','1645@123.com',1166);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhekoujiaju`
--

DROP TABLE IF EXISTS `zhekoujiaju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhekoujiaju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiajumingcheng` varchar(200) NOT NULL COMMENT '家具名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `fengge` varchar(200) NOT NULL COMMENT '风格',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `jieshao` longtext COMMENT '介绍',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610686333581 DEFAULT CHARSET=utf8 COMMENT='折扣家具';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhekoujiaju`
--

LOCK TABLES `zhekoujiaju` WRITE;
/*!40000 ALTER TABLE `zhekoujiaju` DISABLE KEYS */;
INSERT INTO `zhekoujiaju` VALUES (31,'2021-01-15 04:20:02','家具名称1','客厅家具','现代','组合','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian1.jpg','规格1','品牌1','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610685629841.jpg\"></p>','2021-01-21 00:00:00',1668),(32,'2021-01-15 04:20:02','家具名称2','分类2','中式','组合','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian2.jpg','规格2','品牌2','<p>介绍2</p>','2021-01-10 00:00:00',99.9),(33,'2021-01-15 04:20:02','家具名称3','分类3','中式','单件','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian3.jpg','规格3','品牌3','介绍3','2021-01-16 00:00:00',99.9),(34,'2021-01-15 04:20:02','家具名称4','分类4','中式','单件','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian4.jpg','规格4','品牌4','介绍4','2021-01-16 00:00:00',99.9),(35,'2021-01-15 04:20:02','家具名称5','分类5','中式','单件','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian5.jpg','规格5','品牌5','介绍5','2021-01-16 00:00:00',99.9),(36,'2021-01-15 04:20:02','家具名称6','分类6','中式','单件','http://localhost:8080/springbootl7own/upload/zhekoujiaju_tupian6.jpg','规格6','品牌6','介绍6','2021-01-16 00:00:00',99.9),(1610686333580,'2021-01-15 04:52:12','特价家具在这里添加','书房家具','乡村','组合','http://localhost:8080/springbootl7own/upload/1610686303985.jpg','套','乡村','<p><img src=\"http://localhost:8080/springbootl7own/upload/1610686325034.jpg\"></p>','2021-01-19 16:00:00',1668);
/*!40000 ALTER TABLE `zhekoujiaju` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 18:31:38
