package com.sgo.service;

import com.sgo.entity.UserEntity;

import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/20 19:42
 * @Description :
 */
public interface IUserService {
    UserEntity login(String phone, String password, String role);

    List<UserEntity> queryUserByphone(String phone, String role);

    List<UserEntity> queryUserByname(String username, String role);

    List<UserEntity> queryUserByCard(String usercard, String role);

    boolean registerUser(UserEntity userEntity);

}
