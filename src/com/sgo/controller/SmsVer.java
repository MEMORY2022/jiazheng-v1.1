package com.sgo.controller;

import com.aliyuncs.exceptions.ClientException;
import com.sgo.utils.RandomNumUtils;
import com.sgo.utils.Sample;
import com.sgo.utils.SmsUtils;
import com.sgo.utils.redis.RedisConnectPool;
import com.sgo.utils.redis.RedisUtilsCodeVer;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/25 12:51
 * @Description :
 */
@WebServlet({"/hire/sendSmsVercode","/employer/sendSmsVercode","/findpassword/sendSmsVercode"})
public class SmsVer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置响应编码
        resp.setContentType("text/plain;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        //短信验证功能
        //1.获得手机号
        String phone = req.getParameter("phone");
        //2.产生随机6位验证码
        String code = RandomNumUtils.get6Random();
        //3.将验证码和手机号 存入redis缓存,并且设置过期时间
        if (!RedisUtilsCodeVer.storeCodeByRedis(phone, code)){
            writer.println("服务器故障");
            writer.flush();
            writer.close();
            return;
        }
        //4.根据手机号，发送验证码
        try {
            //发送
            Sample.sendSmsResponse(phone,code);
            //5.发送成功与否
            //5.1 成功 相应前端数据，发送成功，并且开始倒计时。
            writer.println("发送成功!");
        } catch (ClientException e) {
            //5.2 失败 响应前端数据，发送失败，提示重新发送，并且删除redis该手机号对应的缓存数据
            writer.println("发送失败,仅支持测试手机号!");
            e.printStackTrace();
        }finally {
            writer.flush();
            writer.close();
        }
    }
}
