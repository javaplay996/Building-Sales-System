/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - loufangxiaoshouxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loufangxiaoshouxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `loufangxiaoshouxitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/loufangxiaoshouxitong/upload/1619149099155.jpg'),(2,'轮播图2','http://localhost:8080/loufangxiaoshouxitong/upload/1619149114946.jpg'),(3,'轮播图3','http://localhost:8080/loufangxiaoshouxitong/upload/1619158916728.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-23 10:48:17'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-23 10:48:17'),(3,'fangwu_huxing_types','户型类型名称',1,'一室一厅',NULL,'2021-04-23 10:48:17'),(4,'fangwu_huxing_types','户型类型名称',2,'两室一厅',NULL,'2021-04-23 10:48:17'),(5,'fangwu_huxing_types','户型类型名称',2,'三室一厅',NULL,'2021-04-23 10:48:17'),(6,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-23 10:48:17'),(7,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-23 10:48:17'),(8,'news_types','新闻类型名称',3,'开盘新闻',NULL,'2021-04-23 10:48:17'),(9,'single_seach_types','单页数据类型',1,'楼盘介绍',NULL,'2021-04-23 10:48:17'),(10,'single_seach_types','单页数据类型',2,'公司介绍',NULL,'2021-04-23 10:48:17'),(11,'fangwu_order_types','订单类型',1,'预订',NULL,'2021-04-23 13:29:04'),(12,'fangwu_order_types','订单类型',2,'购买',NULL,'2021-04-23 13:29:05');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_huxing_types` int(11) DEFAULT NULL COMMENT '房屋户型  Search111 ',
  `fangwu_weizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址  Search111 ',
  `fangwu_tedian` varchar(200) DEFAULT NULL COMMENT '房屋特点  Search111 ',
  `fangwu_time` timestamp NULL DEFAULT NULL COMMENT '交房日期  Search111 ',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋缩略图',
  `fangwu_new_money` int(11) DEFAULT NULL COMMENT '价格(每平米) Search111 ',
  `fangwu_pingmi` int(11) DEFAULT NULL COMMENT '平米 Search111 ',
  `fangwu_number` int(11) DEFAULT NULL COMMENT '剩余套数',
  `fangwu_content` text COMMENT '房屋详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`fangwu_name`,`fangwu_huxing_types`,`fangwu_weizhi`,`fangwu_tedian`,`fangwu_time`,`fangwu_photo`,`fangwu_new_money`,`fangwu_pingmi`,`fangwu_number`,`fangwu_content`,`create_time`) values (1,'房屋1',2,'北京二环三街道','朝阳 学位房','2021-04-30 00:00:00','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149296382.jpg',9800,98,100,'房屋1的房屋详情\r\n','2021-04-23 11:42:08'),(2,'房屋2',2,'北京二环四街道','朝阳 价格便宜 环境好','2021-04-29 00:00:00','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149377305.jpg',9700,97,97,'房屋2的详情\r\n','2021-04-23 11:43:41'),(3,'房屋3',1,'北京二环五街道','朝阳 周围都是精英 环境好','2021-05-14 00:00:00','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149499966.jpg',9600,96,960,'房屋3的详情\r\n','2021-04-23 11:45:20'),(4,'房屋4',2,'北京三环街道5幸福小区','朝阳 学位房 周围都是精英','2021-05-15 00:00:00','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619159066727.jpg',9400,94,94,'房屋4的详情\r\n','2021-04-23 14:24:45');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`kehu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-04-23 13:44:58','2021-04-23 13:44:58'),(2,1,1,'2021-04-23 13:45:32','2021-04-23 13:45:32'),(4,3,NULL,'2021-04-23 14:53:05','2021-04-23 14:53:05');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `fangwu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`kehu_id`,`fangwu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,4,1,'星期天可以去看房么\r\n','随时欢迎来看房 我们是全年无休的\r\n','2021-04-23 14:25:17','2021-04-23 14:25:17');

/*Table structure for table `fangwu_order` */

DROP TABLE IF EXISTS `fangwu_order`;

CREATE TABLE `fangwu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `fangwu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `fangwu_order_time` timestamp NULL DEFAULT NULL COMMENT '预约看房时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房屋订单';

/*Data for the table `fangwu_order` */

insert  into `fangwu_order`(`id`,`fangwu_id`,`kehu_id`,`fangwu_order_types`,`fangwu_order_time`,`insert_time`,`create_time`) values (1,1,1,1,'2021-04-30 00:00:00','2021-04-23 13:56:08','2021-04-23 13:56:08'),(2,2,1,2,'2021-04-29 00:00:00','2021-04-23 14:01:37','2021-04-23 14:01:37'),(3,4,NULL,1,'2021-04-28 00:00:00','2021-04-23 14:53:17','2021-04-23 14:53:17');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`username`,`password`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`create_time`) values (1,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149224016.jpg',2,'2021-04-23 11:40:25'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149241557.jpg',2,'2021-04-23 11:40:42'),(3,'a33','123456','张三','17703786933','410224199610232033','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619159003321.jpg',2,'2021-04-23 14:23:29'),(4,'a44','123456','张4','17703786934','422224199610232044','http://localhost:8080/loufangxiaoshouxitong/upload/1619160873252.jpg',2,'2021-04-23 14:54:16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'龙庭湖畔开盘了',3,'http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149543642.jpg','2021-04-23 11:46:12','龙庭湖畔将在2021年3月14日开盘\r\n','2021-04-23 11:46:12'),(4,'国家控制房价',1,'http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149596975.jpg','2021-04-23 11:47:02','国家声明在2021年5月份对房价进行管控\r\n','2021-04-23 11:47:02');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'公司介绍',2,'东莞楼盘网网络科技有限公司，简称楼盘网(<a href=\"http://www.loupan.com）是一个综合性质的房地产网络服务平台。目前在长沙、广州、昆明拥有自己的业务团队，同时在全国包括深圳、重庆、贵阳、济南、南宁、西安等200个城市拥有分站合作伙伴。2017年1月已获得梅花和安芙兰资本Pre-A轮千万级融资。楼盘网为购房者提供丰富的购房、装修等资讯，让购房者快速获得实惠的优质房源；楼盘网庞大的置业顾问咨询团队，免费为购房者提供专业的购房咨询服务以及贴心的看房服务，让广大购房者通过楼盘网以优惠的价格购买到称心如意的房子。作为房地产品牌及营销领域问题解决专家，楼盘网凭借楼盘网平台、房经联、crm系统为地产开发商提供网络广告、房产电商、网络整合推广、移动定制平台等服务，赋能合作伙伴新业态下房地产营销，全方位多角度为开发商实现“增量销售+智能管控+高效决策”目标，单城年度佣金过亿，是碧桂园、万科、万达、绿地、恒大等开发商青睐的合作伙伴。\">www.loupan.com）是一个综合性质的房地产网络服务平台。目前在长沙、广州、昆明拥有自己的业务团队，同时在全国包括深圳、重庆、贵阳、济南、南宁、西安等200个城市拥有分站合作伙伴。2017年1月已获得梅花和安芙兰资本Pre-A轮千万级融资。楼盘网为购房者提供丰富的购房、装修等资讯，让购房者快速获得实惠的优质房源；楼盘网庞大的置业顾问咨询团队，免费为购房者提供专业的购房咨询服务以及贴心的看房服务，让广大购房者通过楼盘网以优惠的价格购买到称心如意的房子。作为房地产品牌及营销领域问题解决专家，楼盘网凭借楼盘网平台、房经联、crm系统为地产开发商提供网络广告、房产电商、网络整合推广、移动定制平台等服务，赋能合作伙伴新业态下房地产营销，全方位多角度为开发商实现“增量销售+智能管控+高效决策”目标，单城年度佣金过亿，是碧桂园、万科、万达、绿地、恒大等开发商青睐的合作伙伴。\r\n 优势\r\n1.\r\n\r\n全国 50 个主要城市地标、核心商圈大幅户外广告位\r\n日均 40 万次公交规模视频、汽车站、火车站 LED\r\n超 10 万商务楼宇、社区广告、影院大屏、大型社会活动冠名、电台广告、杂志报纸等\r\n\r\n2.\r\n获美化创投和安芙兰资本千万级 Pre-A 轮融资\r\n千万级流量平台，同类网媒中流量排名第二\r\n碧桂园、万科、万达、绿地、恒大、五矿等品牌开发商青睐的合作伙伴\r\n\r\n3.\r\n全球开通 465 个城市分站\r\n全国城市覆盖率达 100%，覆盖楼盘 30000 多个\r\n200 个城市分站伙伴，包括全部一线城市，辐射大部分二、三线城市（广州、深圳、重庆、贵阳、济南、南宁、西安、海南、遵义等）\r\n一手房源交易额逾 500 亿\r\n\r\n4.\r\n3000 万+访问量\r\n400 万+平台购房者数据库\r\n5000 余家优质房产经纪公司战略合作，平台经纪人数量超过 20 万\r\n全国合作城市站点年销售额 1000+亿元\r\n\r\n\r\n','2021-04-23 11:29:19'),(2,'楼盘介绍',1,'兴港永威南樾项目位于郑州航空港区北区发展较为成熟的区域。共分四期开发，目前前三期已经全部现房交付，即将入市的是四期，项目位置位于凌寒街与桥航路交叉口西南角位置，项目由兴港投资集团联合永威置业共同打造。\r\n\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/eb1743a1738d10927fdf2a15d32689af/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/eb1743a1738d10927fdf2a15d32689af/500x375n.jpg\">\r\n兴港投资集团，成立于2012年，是港区管委会下属国有独资公司，是港区的城市运营商及服务商，也是港区建设的领头羊和主力军。资产总额超千亿，位居河南国企第一梯队。\r\n园博园、双鹤湖中央公园、新国际会展中心、高铁南站四大中心等诸多城市地标项目，都是由兴港投资集团投资建设的。8年航空城，8年兴港史，港区的快速发展，离不开兴港投资集团的推动和引领。兴港投资集团多年深耕港区，不断拓宽业务领域，已逐步形成了政策性建设、金融、经营性地产、产业园、公用事业、智慧城市、文化等七大专业化子集团业务板块协同发展的格局，形成了涵盖城市开发、建设、运营等各领域完备的业务系统。\r\n永威置业集团自2005 年公司成立来，一直专注高端楼盘开发，本着立足中原，辐射全国战略，截止目前共开发40 个精品项目，十万+业主选择永威。永威物业在业内有口界碑，成立于2006年，国家一级资质。旗下服务30 多个项目，所辖项目曾多次荣获“河南省物业管理示范住宅小区”、“河南省十佳居住小区”、“河南省园林小区”、“郑州市物业管理示范住宅小区”等荣誉称号。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/9a3b9c047da829592c889d15e6a9436c/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/9a3b9c047da829592c889d15e6a9436c/500x375n.jpg\">\r\n项目距离地铁二号线兰河公园站距离约1200米，南北向雍州路贯穿港区，后期发展潜力巨大，东西侧有太湖路可直达领事馆区，雍州路，太湖路，鄱阳湖路等均为区域发展主轴。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/f74f58b5e6e199c69699e17386055b0f/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/f74f58b5e6e199c69699e17386055b0f/500x375n.jpg\">\r\n项目2 公里内有8 所名校。一期南侧的航空港区实验小学为港区标杆；往南1 公里还有 英迪国际学校。四期南侧为在建的郑州一中，二期北侧有华夏中学， 郑港五街小学，西侧有一二二中学。\r\n项目周边打造一公里生活圈，社区商业、规模化商业综合体既能满足基本生活需求， 空港跨境免税店、锦荣悦汇城、沃金商圈已开业，项目南边即将建成锦荣广场，涵盖了商业、办公、长租公寓的综合性大型商业集群。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/a5eff519baee1106a347b2ee19f79c63/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/a5eff519baee1106a347b2ee19f79c63/500x375n.jpg\">\r\n整个航空港区规划40 所医院， 项目距离最近的是河南省省立医院位于洞庭湖路与华夏大道交叉口西北角。此外还有郑州市航空港区第一人民医院位于雁行路与雍州路交叉口。\r\n港区环境 “两河十九园”。项目西北侧有360 亩琴台街市政公园 ，西南侧是200 亩市政台地兰河公园，项目往东直线距离500米便是南水北调运河，河流、公园等生态资源的加持进一步保证了社区的居住品质。\r\n永威南樾四期北侧为桥航路，南侧为归航路，西侧为凌风街，东侧为凌寒街。项目规划总占地约58亩，项目地上总建筑面积约14.2万方，容积率2.7，共计982户。共10栋楼，户型设计为89㎡-140㎡南北通透的三房和四房。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/dda3303d7113f9c538b97df421fa9b71/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/dda3303d7113f9c538b97df421fa9b71/500x375n.jpg\">\r\n小区的外立面一至三层为亚光白麻石材，三层以上为真石漆，整体的建筑设计更加现代化，风格更加整洁、简约、大气，满足现阶段人群的审美眼光。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/fa695d15eb62c08c2c27e30bb80ee89d/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/fa695d15eb62c08c2c27e30bb80ee89d/500x375n.jpg\">\r\n三室两厅1卫。90㎡户型方正，动静分区，餐客厅一体化，居住舒适度比较高，餐客一体联通阳台， U 性设计的厨房洗切炒一体化设计，户型设计动静分离，两卧朝阳，旁边为一个干湿分离的卫生间，方便起居生活。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/6adaf4c069a142f3522a7f244c4ad0de/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/6adaf4c069a142f3522a7f244c4ad0de/500x375n.jpg\">\r\n四室两厅两卫。130㎡户型方正，南北通透，餐客厅分离。南北双阳台，可以打造成休闲阳台，也可以作为收纳阳台使用，有利于更好的通风和采光。 卫生间干湿分离提高生活效率，保证干净卫生。\r\n\r\n<img alt=\" 双强联袂 兴港永威南樾四期即将问世\" src=\"https://pic1.ajkimg.com/display/xinfang/c7abdef7ea1f63a0f60d308f0b18266b/500x375n.jpg\" _src=\"https://pic1.ajkimg.com/display/xinfang/c7abdef7ea1f63a0f60d308f0b18266b/500x375n.jpg\">\r\n四室两厅两卫140㎡。L形的入户玄关设计保护居家隐私性；餐客分离的方式可以合理的进行了明显的空间分隔，不仅展现了居室空间功能区的合理布局，也让日常的是整齐有序的生活的一种合理化设计。\r\n','2021-04-23 11:32:56');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','8q554rntbyh5w4xxrmqkd5nlqyxaht6t','2021-04-23 11:16:06','2021-04-23 15:21:18'),(2,1,'a11','kehu','客户','ijt8ic9sfpbrkvef6oyjkdsvn0jrkqlg','2021-04-23 11:48:53','2021-04-23 15:57:10'),(3,1,'a1','yonghu','用户','zqap3si0tqxohsuu05dr9dbr48fv9quj','2021-04-23 14:46:28','2021-04-23 15:46:28'),(4,2,'a22','kehu','客户','8tzc8ua857hqg1xnss1izhzm75mhmz8q','2021-04-23 14:52:56','2021-04-23 15:52:57'),(5,4,'a44','kehu','客户','w8mkci838i4tzjdgykjaalvvwbknmi13','2021-04-23 14:54:23','2021-04-23 15:56:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张11111111','17703786901','410224199610232001','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619149148713.jpg',2,'2021-04-23 11:39:10'),(2,'a2','123456','张二2','17703786902','410224199610232002','http://localhost:8080/loufangxiaoshouxitong/file/download?fileName=1619158952849.jpg',2,'2021-04-23 14:22:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
