<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fix_servise</title>
</head>
<body>
    <ul class="servise-list">
        <li class="weixin-item fix-item">
            <span class="weixin-code code"></span>
            <div class="icon">
                <img src="${pageContext.request.contextPath}/img/index/weixin.png" class="weixin"/>
            </div>
        </li>
        <li class="weibo-item fix-item">
            <span class="weibo-code code"></span>
            <div class="icon">
                <img src="${pageContext.request.contextPath}/img/index/weibo.png" class="weibo"/>
            </div>
        </li>
        <li class="service-item fix-item">
            <span class="service-code code"></span>
            <div class="icon" onClick="location.href=&#39;service_alert.html&#39;">
                <img src="${pageContext.request.contextPath}/img/index/qq.png" class="service"/>
            </div>
        </li>
        <li id="btn" class="top-item fix-item">
            <div class="icon">
                <img src="${pageContext.request.contextPath}/img/index/top.png" class="top"/>
            </div>
        </li>
    </ul>
</body>
</html>
