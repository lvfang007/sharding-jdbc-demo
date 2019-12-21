package com.lvfang.shardingjdbc;

import com.lvfang.shardingjdbc.entity.ProductInfo;
import com.lvfang.shardingjdbc.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @描述
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = Main.class)
public class ShardingTest {

    @Autowired
    ProductService productService;

    /**
     * 添加商品
     */
    @Test
    public void testCreateProduct(){
        for(long i=1;i<=10;i++){
            //store_info_id,product_name,spec,region_code,price,image_url
            ProductInfo productInfo = new ProductInfo();
            productInfo.setProductName("Java编程思想"+i);
            productInfo.setDescript("Java编程思想是一本非常好的Java教程"+i);
            productInfo.setRegionCode("110000");
            productInfo.setSpec("800*1000 1/16");
            productInfo.setStoreInfoId(i);
            productInfo.setPrice(new BigDecimal(i));
            productService.createProduct(productInfo);
        }
    }

    /**
     * 查询商品
     */
    @Test
    public void testSelectProductList(){
        List<ProductInfo> productInfos = productService.queryProduct(1,10);
        System.out.println(productInfos);
    }

    /**
     * 总数统计
     */
    @Test
    public void testSelectCount(){
        int count = productService.selectCount();
        System.out.println(count);
    }

    /**
     * 分组统计
     */
    @Test
    public void testSelectProductGroupList(){
        List<Map> result = productService.selectProductGroupList();
        System.out.println(result);
    }
}
