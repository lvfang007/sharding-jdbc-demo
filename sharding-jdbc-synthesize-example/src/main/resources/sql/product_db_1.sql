/*
SQLyog Ultimate v8.32 
MySQL - 8.0.17 : Database - product_db_1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`product_db_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `product_db_1`;

/*Table structure for table `product_descript_1` */

DROP TABLE IF EXISTS `product_descript_1`;

CREATE TABLE `product_descript_1` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `product_info_id` bigint(20) DEFAULT NULL COMMENT '所属商品id',
  `descript` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品描述',
  `store_info_id` bigint(20) DEFAULT NULL COMMENT '所属店铺id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_2` (`product_info_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `product_descript_1` */

insert  into `product_descript_1`(`id`,`product_info_id`,`descript`,`store_info_id`) values (415100629346680832,415100629321515008,'Java编程思想是一本非常好的Java教程2',2),(415100629455732736,415100629434761216,'Java编程思想是一本非常好的Java教程4',2),(415100629602533376,415100629585756160,'Java编程思想是一本非常好的Java教程6',2),(415100629711585280,415100629686419456,'Java编程思想是一本非常好的Java教程8',2),(415100934213861376,415100934184501248,'Java编程思想是一本非常好的Java教程2',2),(415100934327107584,415100934306136064,'Java编程思想是一本非常好的Java教程4',4),(415100934431965184,415100934415187968,'Java编程思想是一本非常好的Java教程6',6),(415100934549405696,415100934524239872,'Java编程思想是一本非常好的Java教程8',8),(415101625653264384,415101625628098560,'Java编程思想是一本非常好的Java教程2',2),(415101625766510592,415101625745539072,'Java编程思想是一本非常好的Java教程4',4),(415101625883951104,415101625862979584,'Java编程思想是一本非常好的Java教程6',6),(415101626005585920,415101625980420096,'Java编程思想是一本非常好的Java教程8',8),(415101626118832128,415101626097860608,'Java编程思想是一本非常好的Java教程10',10),(415101626299187200,415101626282409984,'Java编程思想是一本非常好的Java教程12',12),(415101626412433408,415101626391461888,'Java编程思想是一本非常好的Java教程14',14),(415101626546651136,415101626517291008,'Java编程思想是一本非常好的Java教程16',16),(415101626664091648,415101626643120128,'Java编程思想是一本非常好的Java教程18',18),(415101626810892288,415101626777337856,'Java编程思想是一本非常好的Java教程20',20),(415102318896218112,415102318879440896,'Java编程思想是一本非常好的Java教程2',2),(415102318984298496,415102318967521280,'Java编程思想是一本非常好的Java教程4',2),(415102319072378880,415102319059795968,'Java编程思想是一本非常好的Java教程6',2),(415102319177236480,415102319160459264,'Java编程思想是一本非常好的Java教程8',2),(415102319265316864,415102319248539648,'Java编程思想是一本非常好的Java教程10',2);

/*Table structure for table `product_descript_2` */

DROP TABLE IF EXISTS `product_descript_2`;

CREATE TABLE `product_descript_2` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `product_info_id` bigint(20) DEFAULT NULL COMMENT '所属商品id',
  `descript` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品描述',
  `store_info_id` bigint(20) DEFAULT NULL COMMENT '所属店铺id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_2` (`product_info_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `product_descript_2` */

insert  into `product_descript_2`(`id`,`product_info_id`,`descript`,`store_info_id`) values (415100629115994113,415100628285521921,'Java编程思想是一本非常好的Java教程1',2),(415100629401206785,415100629380235265,'Java编程思想是一本非常好的Java教程3',2),(415100629548007425,415100629531230209,'Java编程思想是一本非常好的Java教程5',2),(415100629657059329,415100629631893505,'Java编程思想是一本非常好的Java教程7',2),(415100629774499841,415100629749334017,'Java编程思想是一本非常好的Java教程9',2),(415102318812332033,415102318246100993,'Java编程思想是一本非常好的Java教程1',2),(415102318938161153,415102318921383937,'Java编程思想是一本非常好的Java教程3',2),(415102319026241537,415102319009464321,'Java编程思想是一本非常好的Java教程5',2),(415102319131099137,415102319118516225,'Java编程思想是一本非常好的Java教程7',2),(415102319219179521,415102319206596609,'Java编程思想是一本非常好的Java教程9',2);

/*Table structure for table `product_info_1` */

DROP TABLE IF EXISTS `product_info_1`;

CREATE TABLE `product_info_1` (
  `product_info_id` bigint(20) NOT NULL COMMENT 'id',
  `store_info_id` bigint(20) DEFAULT NULL COMMENT '所属店铺id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格',
  `region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产地',
  `price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`product_info_id`) USING BTREE,
  KEY `FK_Reference_1` (`store_info_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `product_info_1` */

insert  into `product_info_1`(`product_info_id`,`store_info_id`,`product_name`,`spec`,`region_code`,`price`,`image_url`) values (415101625628098560,2,'Java编程思想2','800*1000 1/16','110000','2',NULL),(415101625745539072,4,'Java编程思想4','800*1000 1/16','110000','4',NULL),(415101625862979584,6,'Java编程思想6','800*1000 1/16','110000','6',NULL),(415101625980420096,8,'Java编程思想8','800*1000 1/16','110000','8',NULL),(415101626097860608,10,'Java编程思想10','800*1000 1/16','110000','10',NULL),(415101626282409984,12,'Java编程思想12','800*1000 1/16','110000','12',NULL),(415101626391461888,14,'Java编程思想14','800*1000 1/16','110000','14',NULL),(415101626517291008,16,'Java编程思想16','800*1000 1/16','110000','16',NULL),(415101626643120128,18,'Java编程思想18','800*1000 1/16','110000','18',NULL),(415101626777337856,20,'Java编程思想20','800*1000 1/16','110000','20',NULL),(415102318879440896,2,'Java编程思想2','800*1000 1/16','110000','2',NULL),(415102318967521280,2,'Java编程思想4','800*1000 1/16','110000','4',NULL),(415102319059795968,2,'Java编程思想6','800*1000 1/16','110000','6',NULL),(415102319160459264,2,'Java编程思想8','800*1000 1/16','110000','8',NULL),(415102319248539648,2,'Java编程思想10','800*1000 1/16','110000','10',NULL);

/*Table structure for table `product_info_2` */

DROP TABLE IF EXISTS `product_info_2`;

CREATE TABLE `product_info_2` (
  `product_info_id` bigint(20) NOT NULL COMMENT 'id',
  `store_info_id` bigint(20) DEFAULT NULL COMMENT '所属店铺id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `spec` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格',
  `region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产地',
  `price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `image_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`product_info_id`) USING BTREE,
  KEY `FK_Reference_1` (`store_info_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `product_info_2` */

insert  into `product_info_2`(`product_info_id`,`store_info_id`,`product_name`,`spec`,`region_code`,`price`,`image_url`) values (415102318246100993,2,'Java编程思想1','800*1000 1/16','110000','1',NULL),(415102318921383937,2,'Java编程思想3','800*1000 1/16','110000','3',NULL),(415102319009464321,2,'Java编程思想5','800*1000 1/16','110000','5',NULL),(415102319118516225,2,'Java编程思想7','800*1000 1/16','110000','7',NULL),(415102319206596609,2,'Java编程思想9','800*1000 1/16','110000','9',NULL);

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地理区域编码',
  `region_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地理区域名称',
  `level` tinyint(1) DEFAULT NULL COMMENT '地理区域级别(省、市、县)',
  `parent_region_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上级地理区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `region` */

insert  into `region`(`id`,`region_code`,`region_name`,`level`,`parent_region_code`) values (1,'110000','北京',0,NULL),(2,'410000','河南省',0,NULL),(3,'110100','北京市',1,'110000'),(4,'410100','郑州市',1,'410000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
