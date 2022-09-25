package com.sgo.controller;

import com.sgo.entity.UserEntity;
import com.sgo.service.IUserService;
import com.sgo.service.impl.UserServiceImpl;
import com.sgo.utils.redis.RedisUtilsCodeVer;

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
 * @create : 2022/9/23 20:55
 * @Description :
 */
@WebServlet(value = {"/hire/register", "/employer/register"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String role = req.getParameter("role");
        String phone = req.getParameter("phone");
        String passord = req.getParameter("password");
        String rpwd = req.getParameter("rpwd");
        String usercard = req.getParameter("usercard");
        String code = req.getParameter("code");
        if (username.equals("") || role.equals("") || phone.equals("") || passord.equals("") || usercard.equals("")||code.equals("")) {
            req.setAttribute("registerinfo", "不能输入空值");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }
        if (!rpwd.equals(passord)) {
            req.setAttribute("registerinfo", "密码不一致");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }
        if (!RedisUtilsCodeVer.verCodeByRedis(phone,code)){
            req.setAttribute("registerinfo", "验证码错误");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }
        resp.setContentType("text/plain;charset=utf-8;");
        IUserService userService = new UserServiceImpl();
        //用户名验证
        List<UserEntity> namever = userService.queryUserByname(username, role);
        if (namever.size() > 0) {
            req.setAttribute("registerinfo", "用户名已存在");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }
        //用户名密码验证
        List<UserEntity> phonever = userService.queryUserByphone(phone, role);
        if (phonever.size() > 0) {
            req.setAttribute("registerinfo", "手机号已存在成功");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }
        //身份证验证
        List<UserEntity> cardver = userService.queryUserByCard(usercard, role);
        if (cardver.size() > 0) {
            req.setAttribute("registerinfo", "身份证已被注册");
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
            return;
        }

        UserEntity userEntity = new UserEntity();
        userEntity.setUserName(username);
        userEntity.setUserRole(role);
        userEntity.setUserPhone(Long.parseLong(phone));
        userEntity.setUserPassword(passord);
        userEntity.setUserCard(usercard.toUpperCase());
        boolean result = userService.registerUser(userEntity);
        if (result) {
            if (RedisUtilsCodeVer.deleteCodeByRedis(phone))
            req.setAttribute("registerinfo", "注册成功,验证码失效");
        } else {
            req.setAttribute("registerinfo", "注册失败");
        }
        if (role.equals("0")) {
            req.getRequestDispatcher("/html/employer_register.jsp").forward(req, resp);
        }else if (role.equals("1")){
            req.getRequestDispatcher("/html/hire_register.jsp").forward(req, resp);
        }
    }
}
