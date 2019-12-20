package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 水平分表
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 水平分表：
     *      是在同一个数据库内，把同一个表的数据按一定规则拆到多个表中。
     * 案例：
     *      比如 将一张大表（文本表）按照月份拆分为多个月表，放在同一个库
     * 特点：
     *      同一个库中，一张大表横向切割分为多个表，表名不一样，表结构都一样，表数据分流到各个小表
     * 优点：
     *      优化单一表数据量过大而产生的性能问题
     *      避免IO争抢并减少锁表的几率
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
