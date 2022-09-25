package com.sgo.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/23 15:19
 * @Description :
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("loginFilter-->过滤器初始化");
    }

    @Override
    public void doFilter(ServletRequest servletrequest, ServletResponse servletResponse,FilterChain filterChain) throws IOException, ServletException {

    }

    @Override
    public void destroy() {
        System.out.println("loginFilter-->过滤器销毁");
    }
}
