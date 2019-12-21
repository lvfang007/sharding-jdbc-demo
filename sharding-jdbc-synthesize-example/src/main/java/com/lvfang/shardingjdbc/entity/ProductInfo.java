package com.lvfang.shardingjdbc.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @描述 商品基本信息
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Data
public class ProductInfo {

    private Long productInfoId;

    /**
     * 所属店铺id
     */
    private Long storeInfoId;

    /**
     * 商品名称
     */
    private String productName;

    /**
     * 规格
     */
    private String spec;

    /**
     * 产地
     */
    private String regionCode;


    /**
     * 商品价格
     */
    private BigDecimal price;


    /**
     * 商品图片
     */
    private String imageUrl;


    ////////////////////////////////关联信息/////////////////////////////////////////

    /**
     * 商品描述
     */
    private String descript;


    /**
     * 产地名称
     */
    private String placeOfOrigin;


    /**
     * 店铺名称
     */
    private String storeName;

    /**
     * 店铺信誉等级
     */
    private int reputation;

    /**
     * 店铺所在地名称
     */
    private String storeRegionName;
}
