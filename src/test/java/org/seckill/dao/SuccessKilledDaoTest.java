package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.SuccessKilled;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @author 小飞侠NO.1
 * @startTime 22:14:43
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class SuccessKilledDaoTest {
    @Autowired
    private SuccessKilledDao successKilledDao;

    @Test
    public void testInsertSuccessKilled(){
        long id=1001L;
        long phone = 18527860662L;
        int insertCount = successKilledDao.insertSuccessKilled(id, phone);
        System.out.println("insertCount-->"+insertCount);
    }

    @Test
    public void testQueryByIdWithSeckill(){
        long id=1001L;
        long phone = 18527860662L;
        SuccessKilled successKilled = successKilledDao.queryByIdWithSeckill(id, phone);
        System.out.println(successKilled);
        System.out.println(successKilled.getUserPhone());

    }

}
