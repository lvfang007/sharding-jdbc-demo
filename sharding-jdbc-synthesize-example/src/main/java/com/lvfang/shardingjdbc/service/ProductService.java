package com.lvfang.shardingjdbc.service;

import com.lvfang.shardingjdbc.entity.ProductInfo;

import java.util.List;
import java.util.Map;

/**
 * @描述
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
public interface ProductService {

    public void createProduct(ProductInfo product);

    public List<ProductInfo> queryProduct(int page, int pageSize);

    public int selectCount();

    public List<Map> selectProductGroupList();
}
