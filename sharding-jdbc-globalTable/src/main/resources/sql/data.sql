CREATE DATABASE `order_db_1` ;

USE `order_db_1`;

CREATE TABLE `t_dict` (
  `dict_id` bigint(20) NOT NULL COMMENT '字典id',
  `type` varchar(50) NOT NULL COMMENT '字典类型',
  `code` varchar(50) NOT NULL COMMENT '字典编码',
  `value` varchar(50) NOT NULL COMMENT '字典值',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

CREATE DATABASE `order_db_2` ;

USE `order_db_2`;

CREATE TABLE `t_dict` (
  `dict_id` bigint(20) NOT NULL COMMENT '字典id',
  `type` varchar(50) NOT NULL COMMENT '字典类型',
  `code` varchar(50) NOT NULL COMMENT '字典编码',
  `value` varchar(50) NOT NULL COMMENT '字典值',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;