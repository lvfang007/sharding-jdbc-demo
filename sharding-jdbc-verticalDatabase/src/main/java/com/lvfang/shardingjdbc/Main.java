package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 垂直分库（专库专用）
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 垂直分库：
     *      是指按照业务将表进行分类，分布到不同的数据库上面，每个库可以放在不同的服务器上，它的核心理念是专库专用。
     * 案例：
     *      比如 用户相关的表存放在用户库，订单相关的表存放在订单库... ...
     * 特点：
     *      可以直接理解为多数据源
     * 优点：
     *      解决业务层面的耦合，业务清晰
     *      能对不同业务的数据进行分级管理、维护、监控、扩展等
     *      高并发场景下，垂直分库一定程度的提升IO、数据库连接数、降低单机硬件资源的瓶颈
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
