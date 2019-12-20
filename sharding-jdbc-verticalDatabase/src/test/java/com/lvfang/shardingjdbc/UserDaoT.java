package com.lvfang.shardingjdbc;

import com.lvfang.shardingjdbc.dao.OrderDao;
import com.lvfang.shardingjdbc.dao.UserDao;
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
public class UserDaoT {

    @Autowired
    private UserDao userDao;

    @Test
    public void testInsertUser(){
        for (int i = 0 ; i<10; i++){
            Long id = i + 1L;
            userDao.insertUser(id,"姓名"+ id );
        }

    }
    @Test
    public void testSelectUserbyIds(){
        List<Long> userIds = new ArrayList<>();
        userIds.add(1L);
        userIds.add(2L);
        List<Map> users = userDao.selectUserbyIds(userIds);
        System.out.println(users);
    }
}
