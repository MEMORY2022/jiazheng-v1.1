package com.sgo.service.impl;

import com.sgo.entity.UserEntity;
import com.sgo.mappers.impl.BasicDao;
import com.sgo.service.IUserService;

import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/20 19:42
 * @Description :
 */
public class UserServiceImpl implements IUserService {

    private BasicDao basicDao = new BasicDao();

    @Override
    public UserEntity login(String phone, String password,String role) {

        UserEntity userEntity = basicDao.getUserEntityMapper().login(phone, password, role);

        return userEntity;
    }

    @Override
    public List<UserEntity> queryUserByphone(String phone,String role) {
        return basicDao.getUserEntityMapper().queryUserByphone(phone,role);
    }

    @Override
    public List<UserEntity> queryUserByname(String username, String role) {
        return basicDao.getUserEntityMapper().queryUserbyname(username,role);
    }

    @Override
    public List<UserEntity> queryUserByCard(String usercard, String role) {
        return basicDao.getUserEntityMapper().queryUserByCard(usercard,role);
    }

    @Override
    public boolean registerUser(UserEntity userEntity) {
        return basicDao.getUserEntityMapper().registerUser(userEntity)>0;
    }


}
