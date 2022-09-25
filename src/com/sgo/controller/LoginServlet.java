package com.sgo.controller;


import com.sgo.entity.UserEntity;
import com.sgo.service.IUserService;
import com.sgo.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/20 19:40
 * @Description :
 */
@WebServlet(name = "LoginServlet",value = {"/user/login","/login/out"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        IUserService userService = new UserServiceImpl();
        UserEntity user = userService.login(phone,password,role);
        //响应对象
        response.setContentType("text/plain;charset=utf-8;");
        PrintWriter writer = response.getWriter();
       /* System.out.println(user);*/
        if (user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            writer.println("登录成功");
           /* response.sendRedirect("index.jsp");*/
        }else {
            writer.println("用户名密码错误!");
        }
        writer.flush();
        writer.close();
    }

    //get请求用来处理退出等了，清楚session中的用户数据
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        request.getRequestDispatcher("/index").forward(request,response);
    }
}
