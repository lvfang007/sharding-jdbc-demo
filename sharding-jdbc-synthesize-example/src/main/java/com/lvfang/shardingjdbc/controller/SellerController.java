package com.lvfang.shardingjdbc.controller;

import com.lvfang.shardingjdbc.entity.ProductInfo;
import com.lvfang.shardingjdbc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @描述 卖家商品展示
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@RestController
public class SellerController {

    @Autowired
    private ProductService productService;

    @PostMapping("/products")
    public String createProject(@RequestBody ProductInfo productInfo) {
        productService.createProduct(productInfo);
        return "创建成功!";
    }

}
