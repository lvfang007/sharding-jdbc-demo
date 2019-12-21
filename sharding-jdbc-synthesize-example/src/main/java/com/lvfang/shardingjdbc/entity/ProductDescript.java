package com.lvfang.shardingjdbc.entity;

import lombok.Data;

/**
 * @描述 商品描述
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Data
public class ProductDescript {

    private Long id;

    /**
     * 所属商品id
     */
    private Long productInfoId;

    /**
     * 商品描述
     */
    private String descript;

    /**
     * 所属店铺id
     */
    private Long storeInfoId;
}
