<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>家政平台-雇员登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_register.css">
</head>

<body>
<div class="welcome-wrap">
    <div class="container">
        <div class="wel-head">
            <div class="wel-logo">
                <img src="${pageContext.request.contextPath}/img/index/logo2.png" alt="" onClick="location.href='${pageContext.request.contextPath}/index'"/>
            </div>
            <div class="switch-hire">
                <a href="${pageContext.request.contextPath}/html/hire_login.jsp" class="button button-3d button-action button-pill"
                   style="padding:0 30px;">雇主端</a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="wel-body">
        <div class="container">
            <div class="login-content">
                <h4>欢迎登陆家政平台-雇员登录</h4>
                <div class="login-mian">
                    <div class="login-input input-group">
                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                        <input class="form-control" type="text" placeholder="请输入您的手机号"/>
                    </div>
                    <div class="login-input input-group">
                        <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                        <input class="form-control" type="text" placeholder="请输入密码"/>
                    </div>
                    <div id="info-login" style="color: red;text-align: center"></div>
                    <button id="login" class="button button-glow button-rounded button-caution">登录</button>
                    <div class="other-operation">
                        <a href="${pageContext.request.contextPath}/html/find_password.jsp" class="forget-password">忘记密码？</a>
                        <a href="${pageContext.request.contextPath}/html/employer_register.jsp" class="quick-register">注册</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../js/jquery-2.0.0.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#login").click(function () {
            var phone = $(".form-control:eq(0)").val();
            var password = $(".form-control:eq(1)").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/user/login",
                type: "post",
                data: {"phone": phone, "password": password,"role":0},
                success: function (data) {
                    if (data.indexOf("用户名密码错误!")!=-1) {
                        $("#info-login").text(data)
                    } else {
                        console.log("请求成功");
                        window.location.href = "${pageContext.request.contextPath}/index";
                    }
                },
                error:function () {
                    alert("服务器内部出现错误！");
                }
            });
        });
    });
</script>
<div class="footer">
    <div class="container">
        <div class="footer-text" id="footer-text">
            <ul class="other-contact text-float text-ul">
                <h5>部门客服</h5>
                <li><a href="service_alert.html">鼓楼区客服</a></li>
                <li><a href="service_alert.html">晋安区客服</a></li>
                <li><a href="service_alert.html">月嫂部客服</a></li>
                <li><a href="service_alert.html">保姆部客服</a></li>
                <li><a href="service_alert.html">钟点工客服</a></li>
            </ul>
            <ul class="friendly-link text-ul">
                <h5>友情链接</h5>
                <li><a href="" target="_blank">福建家政</a></li>
                <li><a href="" target="_blank">福州洁丽保洁</a></li>
                <li><a href="" target="_blank">福州金牌月嫂</a></li>
                <li><a href="" target="_blank">福州家政公司</a></li>
            </ul>
            <ul class="contact-us text-ul">
                <h5>联系我们</h5>
                <li>客服热线：400-1234-567</li>
                <li>总公司地址：北京市海淀区西北旺东路10号院 中关村软件园二期西区　<br/>联系电话： 82558163</li>
                <li>南平分公司地址：苏州市江宁开发区将军大道133号　<br/>联系电话:0599-5838533</li>
            </ul>
        </div>
        <div class="bottom-code">
            <img src="../img/index/code.jpg" alt=""/>
            <p>扫码关注家政平台公众号，更多好礼期待你的关注</p>
        </div>
    </div>
</div>
<p class="address">福建省家政平台网络科技股份有限公司　-　家政综合信息服务平台</p>
<script src="../js/jquery-2.0.0.min.js"></script>
</body>
</html>
