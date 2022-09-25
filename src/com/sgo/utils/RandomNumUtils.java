package com.sgo.utils;

import java.util.Random;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/24 21:19
 * @Description :
 */
public class RandomNumUtils {

    /**
     * 生成指定位数的随机数
     * @param length
     * @return
     */
    public static String getRandom(int length){
        String val = "";
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            val += String.valueOf(random.nextInt(10));
        }
        return val;
    }

    //随机生成6位验证码
    public static String get6Random(){
        return getRandom(6);
    }
}
