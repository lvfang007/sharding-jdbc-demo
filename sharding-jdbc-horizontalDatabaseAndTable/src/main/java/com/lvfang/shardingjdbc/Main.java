package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 水平分库分表
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 水平分库分表：
     *      是水平分库与分表的结合
     * 案例：
     *      比如 字典表、映射表等等
     * 特点：
     *      多个库，每个库中分散的同结构的表，并且表名不一样（这些表中的数据不一样）
     * 优点：
     *      解决了单库大数据，单表大数据，高并发的性能瓶颈
     *      提高了系统的稳定性及可用性
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
