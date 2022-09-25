package com.sgo.utils.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/25 13:24
 * @Description :
 */
public class RedisUtilsCodeVer {

    //获取连接池对象实例
    static JedisPool jedisPoolInstance  = RedisConnectPool.getJedisPoolInstance();


    //存储验证码
    public static boolean storeCodeByRedis(String phone,String code){
        //获得jedis客户端对象
        Jedis jedis = jedisPoolInstance.getResource();

        //存储验证码，并设置过期时间5分钟
        String setex = jedis.setex(phone, 61, code);

        if (setex.toUpperCase().equals("OK")){
            //设置成功
            jedis.close();
            return true;
        }else {
            jedis.close();
            return false;
        }
    }

    //删除验证码
    public static boolean deleteCodeByRedis(String phone){
        //获得jedis客户端对象
        Jedis jedis = jedisPoolInstance.getResource();
        //存储验证码，并设置过期时间5分钟
        long del = jedis.del(phone);
        if (del == 1){
            //删除成功
            jedis.close();
            return true;
        }else {
            //删除失败
            jedis.close();
            return false;
        }
    }

    //验证验证码
    public static boolean verCodeByRedis(String phone,String code){
        //获得jedis客户端对象
        Jedis jedis = jedisPoolInstance.getResource();
        //存储验证码，并设置过期时间5分钟
        String s = jedis.get(phone);
        if (s==null){
            return false;
        }
        if (s.equals(code)){
            //y验证成功
            jedis.close();
            return true;
        }else {
            //验证失败
            jedis.close();
            return false;
        }
    }

}
