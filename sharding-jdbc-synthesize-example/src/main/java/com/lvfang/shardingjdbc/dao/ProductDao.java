package com.lvfang.shardingjdbc.dao;

import com.lvfang.shardingjdbc.entity.ProductDescript;
import com.lvfang.shardingjdbc.entity.ProductInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @描述 商品信息
 * @创建人 lvfang
 * @创建时间 2019/12/21
 */
@Mapper
@Component
public interface ProductDao {
    /**
     * 添加商品基本信息
     * @param productInfo
     * @return
     */
    @Insert("insert into product_info(store_info_id,product_name,spec,region_code,price) value(#{storeInfoId},#{productName},#{spec},#{regionCode},#{price})")
    @Options(useGeneratedKeys = true,
            keyProperty = "productInfoId",
            keyColumn = "id")
    int insertProductInfo(ProductInfo productInfo);

    /**
     * 添加商品描述信息
     * @param productDescript
     * @return
     */
    @Insert("insert into product_descript(product_info_id,descript,store_info_id) value(#{productInfoId},#{descript},#{storeInfoId})")
    @Options(useGeneratedKeys = true,
            keyProperty = "id",
            keyColumn = "id")
    int insertProductDescript(ProductDescript productDescript);

    /**
     * 查询商品
     * @param start
     * @param pageSize
     * @return
     */
    @Select("select i.*, d.descript, r.region_name placeOfOrigin " +
            "from product_info i join product_descript d on i.product_info_id = d.product_info_id " +
            "join region r on r.region_code = i.region_code order by i.product_info_id desc limit #{start},#{pageSize}")
    List<ProductInfo> selectProductList(@Param("start") int start, @Param("pageSize") int pageSize);

    /**
     * 总数统计
     * @return
     */
    @Select("select count(1) from product_info")
    int selectCount();

    /**
     * 分组统计
     * @return
     */
    @Select("select count(1) as num from product_info group by region_code having num>1 ORDER BY region_code ASC")
    List<Map> selectProductGroupList();

}
