package com.sgo.controller;

import com.sgo.entity.UserEntity;
import com.sgo.service.IUserService;
import com.sgo.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/23 21:52
 * @Description :
 */
@WebServlet({"/hire/register/phonever", "/employer/register/phonever", "/phoneVerToAll"})
public class PhoneVer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String role = req.getParameter("role");
        String phone = req.getParameter("phone");
        IUserService userService = new UserServiceImpl();
        List<UserEntity> list = userService.queryUserByphone(phone, role);

        resp.setContentType("text/plain;charset=utf-8;");
        PrintWriter writer = resp.getWriter();
        if (list.size() != 0 && role !=null) {
            writer.println("电话号码已被注册");
        } else if (list.size() == 0 && role == null) {
            writer.println("账户不存在");
        } else if (list.size() > 0 && role == null) {
            writer.println("账户存在,可发送验证码");
        } else if (list.size()==0&&role!=null){
            writer.println("电话号可用");
        }

        writer.flush();
        writer.close();
    }
}
