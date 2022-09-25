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
 * @create : 2022/9/24 12:04
 * @Description :
 */
@WebServlet({"/hire/register/indentityVer","/employer/register/indentityVer"})
public class IndentityVer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String usercard = req.getParameter("usercard");
        String role = req.getParameter("role");
        IUserService userService = new UserServiceImpl();
        List<UserEntity> list = userService.queryUserByCard(usercard.toUpperCase(), role);

        resp.setContentType("text/plain;charset=utf-8;");
        PrintWriter writer = resp.getWriter();
        if (list.size() != 0) {
            writer.println("身份证已被注册");
        } else {
            writer.println("身份证可用");
        }

        writer.flush();
        writer.close();
    }
}
