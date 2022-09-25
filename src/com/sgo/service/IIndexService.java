package com.sgo.service;

import com.sgo.entity.TaocanEntity;

import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/22 21:46
 * @Description :
 */
public interface IIndexService {
    List<TaocanEntity> selectAllTaocan();
}
