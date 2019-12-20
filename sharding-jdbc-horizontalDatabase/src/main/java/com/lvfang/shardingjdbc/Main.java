package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 水平分库
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 水平分库：
     *      是把同一个表的数据按一定规则拆到不同的数据库中，每个库可以放在不同的服务器上。是水平分表的一个延伸（将水平分表后的表分散在不同的库中）
     * 案例：
     *      比如 将一张大表（黑名单表）按照id取模拆分存放到多个库中（这些库中的表结构都一样）
     * 特点：
     *      多个库，每个库中分散的同结构的表，并且表名一样（这些表中的数据不一样）
     * 优点：
     *      解决了单库大数据，高并发的性能瓶颈
     *      提高了系统的稳定性及可用性
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
