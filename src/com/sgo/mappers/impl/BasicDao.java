package com.sgo.mappers.impl;

import com.sgo.mappers.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/21 21:58
 * @Description :
 */
public class BasicDao {

    public static SqlSession sqlSession = null;

    static {
        InputStream is = null;
        try {
            is = Resources.getResourceAsStream("/mybatis-config.xml");
            System.out.println("获取配置文件");
        } catch (IOException e) {
            e.printStackTrace();
        }
        SqlSessionFactoryBuilder sqlSessionFactoryBuilder =
                new SqlSessionFactoryBuilder();
        SqlSessionFactory build = sqlSessionFactoryBuilder.build(is);
        sqlSession = build.openSession(true);
    }

    public UserEntityMapper getUserEntityMapper() {
        UserEntityMapper userEntityMapper = sqlSession.getMapper(UserEntityMapper.class);
        return userEntityMapper;
    }

    public HireEntityMapper getUserHireEntityMapper() {
        HireEntityMapper hireEntityMapper = sqlSession.getMapper(HireEntityMapper.class);
        return hireEntityMapper;
    }

    public EmployerEntityMapper getEmployerEntityMapper() {
        EmployerEntityMapper employerEntityMapper = sqlSession.getMapper(EmployerEntityMapper.class);
        return employerEntityMapper;
    }

    public OrderEntityMapper getOrderEntityMapper() {
        OrderEntityMapper orderEntityMapper = sqlSession.getMapper(OrderEntityMapper.class);
        return orderEntityMapper;
    }

    public ProvinceEntityMapper getProvinceEntityMapper() {
        ProvinceEntityMapper provinceEntityMapper = sqlSession.getMapper(ProvinceEntityMapper.class);
        return provinceEntityMapper;
    }

    public CityEntityMapper getCityEntityMapper() {
        CityEntityMapper cityEntityMapper = sqlSession.getMapper(CityEntityMapper.class);
        return cityEntityMapper;
    }

    public AmountInfoEntityMapper getAmountInfoEntityMapper() {
        AmountInfoEntityMapper amountInfoEntityMapper = sqlSession.getMapper(AmountInfoEntityMapper.class);
        return amountInfoEntityMapper;
    }

    public TaocanEntityMapper getTaocanEntityMapper() {
        TaocanEntityMapper taocanEntityMapper = sqlSession.getMapper(TaocanEntityMapper.class);
        return taocanEntityMapper;
    }
}
