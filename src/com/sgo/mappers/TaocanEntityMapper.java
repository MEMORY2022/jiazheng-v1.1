package com.sgo.mappers;

import com.sgo.entity.TaocanEntity;

import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/22 21:41
 * @Description :
 */
public interface TaocanEntityMapper {

    List<TaocanEntity> selectAllTaocan();
}
