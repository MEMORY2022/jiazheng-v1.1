package com.sgo.utils.redis;

import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;
/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/25 13:12
 * @Description :
 */
public class RedisConnectPool {

    private static volatile JedisPool jedisPool = null;

    public static JedisPool getJedisPoolInstance(){
        if (null == jedisPool){
            synchronized (RedisConnectPool.class){
                JedisPoolConfig poolConfig = new JedisPoolConfig();
                poolConfig.setMaxTotal(200);
                poolConfig.setMaxIdle(32);
                poolConfig.setMaxWaitMillis(100*100);
                poolConfig.setBlockWhenExhausted(true);
                poolConfig.setTestOnBorrow(true);//ping  PONG
                jedisPool = new JedisPool(poolConfig,"192.168.43.118",6379,6000,"wanl102741");

            }
        }
        return jedisPool;
    }

}
