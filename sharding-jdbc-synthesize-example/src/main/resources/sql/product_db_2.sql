/*
SQLyog Ultimate v8.32 
MySQL - 8.0.17 : Database - product_db_2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`product_db_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `product_db_2`;

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

insert  into `product_descript_1`(`id`,`product_info_id`,`descript`,`store_info_id`) values (415094900455899136,415094900392984576,'Java编程思想是一本非常好的Java教程2',1),(415094900539785216,415094900527202304,'Java编程思想是一本非常好的Java教程4',1),(415094900627865600,415094900619476992,'Java编程思想是一本非常好的Java教程6',1),(415094900715945984,415094900703363072,'Java编程思想是一本非常好的Java教程8',1),(415102211484286976,415102211467509760,'Java编程思想是一本非常好的Java教程2',1),(415102211568173056,415102211555590144,'Java编程思想是一本非常好的Java教程4',1),(415102211660447744,415102211647864832,'Java编程思想是一本非常好的Java教程6',1),(415102211748528128,415102211731750912,'Java编程思想是一本非常好的Java教程8',1),(415102211828219904,415102211815636992,'Java编程思想是一本非常好的Java教程10',1);

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

insert  into `product_descript_2`(`id`,`product_info_id`,`descript`,`store_info_id`) values (415094882391031809,415094856428290049,'Java编程思想是一本非常好的Java教程1',1),(415094900493647873,415094900481064961,'Java编程思想是一本非常好的Java教程3',1),(415094900590116865,415094900577533953,'Java编程思想是一本非常好的Java教程5',1),(415094900674002945,415094900661420033,'Java编程思想是一本非常好的Java教程7',1),(415094900757889025,415094900745306113,'Java编程思想是一本非常好的Java教程9',1),(415100934113198081,415100933291114497,'Java编程思想是一本非常好的Java教程1',1),(415100934272581633,415100934251610113,'Java编程思想是一本非常好的Java教程3',3),(415100934381633537,415100934360662017,'Java编程思想是一本非常好的Java教程5',5),(415100934486491137,415100934469713921,'Java编程思想是一本非常好的Java教程7',7),(415100934612320257,415100934587154433,'Java编程思想是一本非常好的Java教程9',9),(415101625531629569,415101624520802305,'Java编程思想是一本非常好的Java教程1',1),(415101625711984641,415101625691013121,'Java编程思想是一本非常好的Java教程3',3),(415101625825230849,415101625800065025,'Java编程思想是一本非常好的Java教程5',5),(415101625942671361,415101625921699841,'Java编程思想是一本非常好的Java教程7',7),(415101626064306177,415101626043334657,'Java编程思想是一本非常好的Java教程9',9),(415101626240466945,415101626215301121,'Java编程思想是一本非常好的Java教程11',11),(415101626357907457,415101626332741633,'Java编程思想是一本非常好的Java教程13',13),(415101626475347969,415101626450182145,'Java编程思想是一本非常好的Java教程15',15),(415101626601177089,415101626584399873,'Java编程思想是一本非常好的Java教程17',17),(415101626718617601,415101626697646081,'Java编程思想是一本非常好的Java教程19',19),(415102211421372417,415102210901278721,'Java编程思想是一本非常好的Java教程1',1),(415102211526230017,415102211513647105,'Java编程思想是一本非常好的Java教程3',1),(415102211618504705,415102211601727489,'Java编程思想是一本非常好的Java教程5',1),(415102211702390785,415102211689807873,'Java编程思想是一本非常好的Java教程7',1),(415102211786276865,415102211773693953,'Java编程思想是一本非常好的Java教程9',1);

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

insert  into `product_info_1`(`product_info_id`,`store_info_id`,`product_name`,`spec`,`region_code`,`price`,`image_url`) values (415102211467509760,1,'Java编程思想2','800*1000 1/16','110000','2',NULL),(415102211555590144,1,'Java编程思想4','800*1000 1/16','410000','4',NULL),(415102211647864832,1,'Java编程思想6','800*1000 1/16','410000','6',NULL),(415102211731750912,1,'Java编程思想8','800*1000 1/16','110000','8',NULL),(415102211815636992,1,'Java编程思想10','800*1000 1/16','110000','10',NULL);

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

insert  into `product_info_2`(`product_info_id`,`store_info_id`,`product_name`,`spec`,`region_code`,`price`,`image_url`) values (415101624520802305,1,'Java编程思想1','800*1000 1/16','110000','1',NULL),(415101625691013121,3,'Java编程思想3','800*1000 1/16','110000','3',NULL),(415101625800065025,5,'Java编程思想5','800*1000 1/16','110000','5',NULL),(415101625921699841,7,'Java编程思想7','800*1000 1/16','110000','7',NULL),(415101626043334657,9,'Java编程思想9','800*1000 1/16','110000','9',NULL),(415101626215301121,11,'Java编程思想11','800*1000 1/16','110000','11',NULL),(415101626332741633,13,'Java编程思想13','800*1000 1/16','110000','13',NULL),(415101626450182145,15,'Java编程思想15','800*1000 1/16','110000','15',NULL),(415101626584399873,17,'Java编程思想17','800*1000 1/16','110000','17',NULL),(415101626697646081,19,'Java编程思想19','800*1000 1/16','110000','19',NULL),(415102210901278721,1,'Java编程思想1','800*1000 1/16','110000','1',NULL),(415102211513647105,1,'Java编程思想3','800*1000 1/16','110000','3',NULL),(415102211601727489,1,'Java编程思想5','800*1000 1/16','110000','5',NULL),(415102211689807873,1,'Java编程思想7','800*1000 1/16','110000','7',NULL),(415102211773693953,1,'Java编程思想9','800*1000 1/16','110000','9',NULL);

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
