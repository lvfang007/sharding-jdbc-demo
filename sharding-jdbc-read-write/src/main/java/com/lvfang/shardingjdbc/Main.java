package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 读写分离
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 读写分离：
     *      Mysql使用集群部署，采用主从模式，采用写主读从
     * 案例：
     *
     * 特点：
     *      读写分离
     * 优点：
     *
     *
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
