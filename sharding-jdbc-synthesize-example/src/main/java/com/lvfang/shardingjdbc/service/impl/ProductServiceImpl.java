package com.lvfang.shardingjdbc.service.impl;

import com.lvfang.shardingjdbc.dao.ProductDao;
import com.lvfang.shardingjdbc.entity.ProductDescript;
import com.lvfang.shardingjdbc.entity.ProductInfo;
import com.lvfang.shardingjdbc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @描述
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;


    /**
     * 创建商品（商品信息+商品描述）
     * @param product
     */
    @Override
    @Transactional
    public void createProduct(ProductInfo product) {
        ProductDescript productDescript = new ProductDescript();
        productDescript.setDescript(product.getDescript());
        productDao.insertProductInfo(product);//新增商品基本信息
        productDescript.setProductInfoId(product.getProductInfoId());
        productDescript.setStoreInfoId(product.getStoreInfoId()); //冗余店铺信息
        productDao.insertProductDescript(productDescript);//新增商品描述信息
    }

    /**
     * 查询商品
     * @param page
     * @param pageSize
     * @return
     */
    @Override
    public List<ProductInfo> queryProduct(int page, int pageSize) {
        int start = (page-1)*pageSize;
        List<ProductInfo> productInfoList = productDao.selectProductList(start,pageSize);
        return productInfoList;
    }

    /**
     * 总数统计
     * @return
     */
    @Override
    public int selectCount(){
        return productDao.selectCount();
    }

    /**
     * 分组统计
     * @return
     */
    @Override
    public List<Map> selectProductGroupList(){
        return productDao.selectProductGroupList();
    }

}
