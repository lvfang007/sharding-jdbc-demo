package com.lvfang.shardingjdbc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description: 公共表
 */
@Configuration
@ComponentScan("com.lvfang.shardingjdbc")
@SpringBootApplication
public class Main {
    /**
     * 公共表
     *      属于系统中数据量较小，变动少，而且属于高频联合查询的依赖表。参数表、数据字典表等属于此类型。
     *      可以将这类表在每个数据库都保存一份，所有更新操作都同时发送到所有分库执行
     * 案例：
     *      比如 字典表、映射表等等
     * 特点：
     *      每个库都有，表数据及结构都一样。（表的复制）
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }
}
