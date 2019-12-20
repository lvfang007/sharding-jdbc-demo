package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 垂直分表
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 垂直分表：
     *      将一个表按照字段分成多表，每个表存储其中一部分字段
     * 案例：
     *      比如 将一张商品表（包括商品信息、商品描述...）拆分为商品信息表、商品描述表... ...
     * 特点：
     *      将表案列拆分变多表
     * 优点：
     *      为了避免IO争抢并减少锁表的几率，查看详情的用户与商品信息浏览互不影响
     *      充分发挥热门数据的操作效率，商品信息的操作的高效率不会被商品描述的低效率所拖累
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
