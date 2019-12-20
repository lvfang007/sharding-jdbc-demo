CREATE DATABASE `sharding_db`;

USE `sharding_db`;

CREATE TABLE `t_order` (
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `price` decimal(10,2) NOT NULL COMMENT '订单价格',
  `user_id` bigint(20) NOT NULL COMMENT '下单用户id',
  `status` varchar(50) NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


CREATE TABLE `t_user` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `fullname` varchar(255) NOT NULL COMMENT '用户姓名',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;