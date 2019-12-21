package com.lvfang.shardingjdbc.entity;

import lombok.Data;
/**
 * @描述 地理区域
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Data
public class Region {
    private Long id;

    /**
     * 地理区域编码
     */
    private String regionCode;

    /**
     * 地理区域名称
     */
    private String regionName;

    /**
     * 地理区域级别(省、市、县)
     */
    private int level;

    /**
     * 上级地理区域编码
     */
    private String parentRegionCode;
}
