package com.sgo.utils;

import com.aliyuncs.exceptions.ClientException;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/24 20:28
 * @Description :
 */
public class SmsUtils {
    public static void main(String[] args) {
        Sample sample = new Sample();
        try {
            sample.sendSmsResponse("15339753246","4567");
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
}
