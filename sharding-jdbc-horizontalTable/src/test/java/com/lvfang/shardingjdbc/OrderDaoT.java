package com.lvfang.shardingjdbc;

import com.lvfang.shardingjdbc.dao.OrderDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description:
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = {Main.class})
public class OrderDaoT {

    @Autowired
    private OrderDao orderDao;

    @Test
    public void testInsertOrder(){
        for (int i = 0 ; i<10; i++){
            orderDao.insertOrder(new BigDecimal((i+1)*5),1L,"WAIT_PAY");
        }
    }

    @Test
    public void testSelectOrderbyIds(){
        List<Long> ids = new ArrayList<>();
//        ids.add(414422959587852288L);
        ids.add(414422960359604225L);
        List<Map> maps = orderDao.selectOrderbyIds(ids);
        System.out.println(maps);
    }
}
