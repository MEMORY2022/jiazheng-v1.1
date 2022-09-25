package com.sgo.controller;

import com.sgo.entity.TaocanEntity;
import com.sgo.service.IIndexService;
import com.sgo.service.impl.IndexServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author : sgo丶赵泽宏
 * @version : 1.0
 * @create : 2022/9/22 21:44
 * @Description :
 */
@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IIndexService indexService = new IndexServiceImpl();

        List<TaocanEntity> taocanList = indexService.selectAllTaocan();
        HttpSession session = request.getSession();
        session.setAttribute("taocanList",taocanList);

        request.getRequestDispatcher("html/index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
