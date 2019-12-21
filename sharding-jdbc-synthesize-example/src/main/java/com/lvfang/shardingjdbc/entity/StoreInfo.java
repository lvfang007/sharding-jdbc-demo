package com.lvfang.shardingjdbc.entity;

import lombok.Data;

/**
 * @描述 店铺
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Data
public class StoreInfo {

    private Long id;

    /**
     * 店铺名称
     */
    private String storeName;

    /**
     * 信誉等级
     */
    private int reputation;

    /**
     * 店铺所在地
     */
    private String regionCode;

    /**
     * 店铺所在地名称
     */
    private String regionName;
}
