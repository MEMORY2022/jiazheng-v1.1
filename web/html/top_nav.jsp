<%@ page import="com.sgo.entity.UserEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>header</title>
</head>
<body>


    <div class="container">
        <ul class="login-left">
            <li><span>欢迎来到家政平台政！</span></li>
            <%
                UserEntity user = (UserEntity) session.getAttribute("user");
                if (user == null) {
            %>
            <li><a href="${pageContext.request.contextPath}/html/hire_login.jsp" id="employer-login">[雇主登录]</a></li>
            <a href="${pageContext.request.contextPath}/html/employer_login.jsp" id="hire-login" style="color: white">[雇员登录]</a>
            <%
            } else {
            %>
            <li><a href="#">${user.userName}已登录！</a></li>
            <a href="${pageContext.request.contextPath}/login/out" class="logout" style="color: white">[退出登录]</a>
            <%}%>
        </ul>
        <ul class="top-right">
            <li>
                <a href="/${pageContext.request.contextPath}/html/business_center.html" class="top-link">
                    <span class="fa fa-hand-o-right"></span>商务中心
                </a>
            </li>
            <li>
                <a href="/${pageContext.request.contextPath}/html/no_date.html" class="top-link">
                    <span class="fa fa-diamond"></span>
                    个性化定制
                </a>
            </li>
            <%if (user == null) {%>
            <li>
                <a href="javascript:void(0)" class="top-link phone-link">
                    <span class="fa fa-phone"></span>
                    4000-591-798
                </a>
            </li>
            <%} else {%>
            <li>
                <% if (user.getUserRole().equals("0")) {%>
                <a href="/${pageContext.request.contextPath}/html/employer-center.html" class="top-link">
                    <span class="fa fa-user"></span>
                    个人中心
                </a>
                <%}%>
                <%if (user.getUserRole().equals("1")) {%>
                <a href="${pageContext.request.contextPath}/html/hire-center.html" class="top-link">
                    <span class="fa fa-user"></span>
                    个人中心
                </a>
                <%}%>
            </li>
            <%}%>
        </ul>
    </div>

</body>
</html>