package com.lvfang.shardingjdbc;

import com.lvfang.shardingjdbc.dao.DictDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


/**
 * @Author: LvFang
 * @Date: Created in 2019/12/19.
 * @Description:
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = {Main.class})
public class DictDaoT {

    @Autowired
    private DictDao dictDao;

    @Test
    public void testInsertDict(){
        dictDao.insertDict(1L,"user_type","0","管理员");
        dictDao.insertDict(2L,"user_type","1","操作员");
    }

    @Test
    public void testDeleteDict(){
        dictDao.deleteDict(1L);
        dictDao.deleteDict(2L);
    }
}
