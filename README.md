# Sharding-JDBC-demo

研究关系型数据库分片实施方案Sharding-JDBC的使用方法、原理、问题及解决方案。

## 项目目录：
    水平分表：
        sharding-jdbc-horizontalTable
    水平分库：
        sharding-jdbc-horizontalDatabase
    水平分表分库：
        sharding-jdbc-horizontalDatabaseAndTable
    垂直分表：
        sharding-jdbc-verticalTable
    垂直分库：
        sharding-jdbc-verticalDatabase
    读写分离：
        sharding-jdbc-read-write
    公共表：
        sharding-jdbc-globalTable
    综合应用案例(shopping)：
        sharding-jdbc-synthesize-example

## 拆分策略
    分库：
        水平分库：一库变多库，库中表名表结构都一样
        垂直分库：专库专用，库中表无重复，可以理解为多数据源
    分表：
        水平分表：按行分表，放在同一个库（表名不同）
        垂直分表：按列分表，一表拆多表

## 讲义清单：
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-01/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-02/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-03/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-04/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-05/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-06/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-07/
    http://www.pbteach.com/post/java_distribut/sharding-jdbc-08/

## 视频下载：
http://www.pbteach.com/post/java_distribut/subject_shardingjdbc/



