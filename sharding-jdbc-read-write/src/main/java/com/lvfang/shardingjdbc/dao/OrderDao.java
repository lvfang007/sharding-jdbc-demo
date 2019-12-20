package com.lvfang.shardingjdbc.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description:
 */
@Mapper
//@Repository
@Component
public interface OrderDao {

    /**
     * 新增订单
     * @param price 订单价格
     * @param userId 用户id
     * @param status 订单状态
     * @return
     */
    @Insert("insert into t_order(price,user_id,status) value(#{price},#{userId},#{status})")
    int insertOrder(@Param("price") BigDecimal price, @Param("userId") Long userId, @Param("status") String status);

    /**
     * 根据id列表查询多个订单
     * @param orderIds 订单id列表
     * @return
     */
    @Select({"<script>" +
            "select " +
            " * " +
            " from t_order t" +
            " where t.order_id in " +
            "<foreach collection='orderIds' item='id' open='(' separator=',' close=')'>" +
            " #{id} " +
            "</foreach>"+
            "</script>"})
    List<Map> selectOrderbyIds(@Param("orderIds") List<Long> orderIds);

}

