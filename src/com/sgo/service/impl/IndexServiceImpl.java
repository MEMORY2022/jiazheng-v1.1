package com.sgo.service.impl;

import com.sgo.entity.TaocanEntity;
import com.sgo.mappers.impl.BasicDao;
import com.sgo.service.IIndexService;
import jdk.nashorn.internal.ir.CallNode;

import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/22 21:46
 * @Description :
 */
public class IndexServiceImpl implements IIndexService {
    private BasicDao basicDao = new BasicDao();
    @Override
    public List<TaocanEntity> selectAllTaocan() {
        return basicDao.getTaocanEntityMapper().selectAllTaocan();
    }
}
