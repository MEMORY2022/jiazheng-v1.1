<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>家政平台-雇主注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_register.css">
    <style>
    </style>

    <script src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".footer").load("${pageContext.request.contextPath}/html/footer.jsp");
        });
    </script>
</head>

<body>
<div class="welcome-wrap">
    <div class="container">
        <div class="wel-head register-head">
            <div class="wel-logo">
                <img src="${pageContext.request.contextPath}/img/index/logo2.png" alt=""
                     onClick="location.href='/index'"/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="wel-body">
        <div class="container">
            <div class="login-content">
                <h4>欢迎注册家政平台</h4>
                <div class="login-mian">
                    <form id="registerform" action="${pageContext.request.contextPath}/hire/register" method="post">
                        <input hidden="hidden" type="text" value="1" name="role">
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                            <input name="username" class="form-control" type="text" placeholder="请输入您的姓名"/>
                        </div>
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                            <input name="phone" class="form-control" type="text" placeholder="请输入您的手机号码"/>
                        </div>
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-id-card-o fa-fw"></i></span>
                            <input name="usercard" class="form-control" type="text" placeholder="请输入您的身份证号"/>
                        </div>
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                            <input name="password" class="form-control" type="text" placeholder="请输入密码"/>
                        </div>
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                            <input name="rpwd" class="form-control" type="text" placeholder="请重新输入密码"/>
                        </div>
                        <%--密码效验--%>
                        <script type="text/javascript">
                            $(function () {
                                $("input[name='password']").blur(function () {
                                    var p = $("input[name='rpwd']").val();
                                    if (p == null || p == "") {
                                        $("#registerinfo").attr("hidden", true);
                                        return;
                                    } else {
                                        if ($("input[name='rpwd']").val() != $(this).val()) {
                                            $("#registerinfo").text("密码不一致");
                                            $("#registerinfo").attr("hidden", false);
                                            $("#registerinfo").css("color", "red");
                                            $("input[name='rpwd']").css("color", "red");
                                        } else {
                                            //$("#registerinfo").css("color","green");
                                            $("input[name='rpwd']").css("color", "green");
                                            $("#registerinfo").attr("hidden", true);
                                        }
                                    }
                                });
                                $("input[name='rpwd']").blur(function () {
                                    if ($("input[name='password']").val() != $(this).val()) {
                                        $("#registerinfo").text("密码不一致");
                                        $("#registerinfo").css("color", "red");
                                        $("#registerinfo").attr("hidden", false);
                                        $("input[name='rpwd']").css("color", "red");
                                    } else {
                                        //$("#registerinfo").css("color","green");
                                        $("#registerinfo").attr("hidden", true);
                                        $("input[name='rpwd']").css("color", "green");

                                    }
                                });
                            });
                        </script>
                        <div class="login-input input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                            <input name="code" class="form-control auth-code" type="text" placeholder="请输入验证码"/>
                            <span class="code-botton"><input type="button" id="get_btn" class="change"
                                                             value="获取验证码"/></span>
                        </div>
                        <%--发送验证码--%>
                        <script type="text/javascript">
                            $("#get_btn").click(function () {

                                var phone = $("input[name='phone']").val();
                                var ver = Number.parseInt($("input[name='phone']").val());
                                if (typeof ver != "number"){
                                    return;
                                }
                                if (phone.length==11) {
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/hire/sendSmsVercode",
                                        type: "post",
                                        data: {"phone": $("input[name='phone']").val()},
                                        success: function (data) {
                                            $("#registerinfo").text(data);
                                            if (data.indexOf("发送成功") != -1) {
                                                $("#registerinfo").attr("hidden", false);
                                                $("#registerinfo").css("color", "green");
                                            } else {
                                                $("#registerinfo").attr("hidden", false);
                                                $("#registerinfo").css("color", "red");
                                            }
                                        },
                                    });
                                } else {
                                    $("#registerinfo").text("手机号不正确");
                                    $("#registerinfo").attr("hidden", false);
                                    $("#registerinfo").css("color", "red");
                                    $("#registerinfo").attr("hidden", false);
                                }
                            });
                        </script>
                        <div hidden="hidden" id="registerinfo" style="text-align: center"></div>
                        <button class="button button-glow button-rounded button-caution" type="submit">立即注册</button>
                    </form>

                    <script type="text/javascript">
                        $(function () {
                            var info = '${requestScope.get("registerinfo")}';
                            if (info != "" && info != null) {
                                $("#registerinfo").text(info);
                                $("#registerinfo").attr("hidden", false);
                            } else {
                                $("#registerinfo").attr("hidden", true);
                            }
                            if (info.indexOf("注册成功") != -1) {
                                $("#registerinfo").css("color", "green");
                            }else {
                                $("#registerinfo").css("color", "red");
                            }
                        });
                    </script>
                    <script type="text/javascript">
                        $(function () {
                            //用户名效验
                            $("input[name='username']").blur(function () {
                                if ($(this).val() != null && $(this).val()) {
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/hire/register/namever",
                                        type: "post",
                                        data: {"username": $(this).val(), "role": "1"},
                                        success: function (data) {
                                            $("#registerinfo").attr("hidden", false);
                                            if (data.indexOf("用户名可用") != -1) {
                                                $("input[name='username']").css("color", "green");
                                                $("#registerinfo").css("color", "green");
                                            } else {
                                                $("input[name='username']").css("color", "red");
                                                $("#registerinfo").css("color", "red");
                                            }
                                            $("#registerinfo").text(data);
                                        },
                                    });
                                } else {
                                    $("#registerinfo").text("用户名不能为空");
                                    $("#registerinfo").css("color", "red");
                                    $("#registerinfo").attr("hidden", false);
                                }
                                //手机号验证
                                $("input[name='phone']").blur(function () {
                                    if ($(this).val().length == 11) {
                                        $.ajax({
                                            url: "${pageContext.request.contextPath}/hire/register/phonever",
                                            type: "post",
                                            data: {"phone": $(this).val(), "role": "1"},
                                            success: function (data) {
                                                $("#registerinfo").attr("hidden", false);
                                                if (data.indexOf("电话号码已被注册") != -1) {
                                                    $("input[name='phone']").css("color", "red");
                                                    $("#registerinfo").css("color", "red");
                                                } else {
                                                    $("input[name='phone']").css("color", "green");
                                                    $("#registerinfo").css("color", "green");
                                                }
                                                $("#registerinfo").text(data);
                                            },
                                        });
                                    } else {
                                        $("#registerinfo").text("手机号不正确");
                                        $("input[name='phone']").css("color", "red");
                                        $("#registerinfo").css("color", "red");
                                        $("#registerinfo").attr("hidden", false);
                                    }
                                });
                                //身份证效验
                                $("input[name='usercard']").blur(function () {
                                    if ($(this).val().length == 18) {
                                        $.ajax({
                                            url: "${pageContext.request.contextPath}/hire/register/indentityVer",
                                            type: "post",
                                            data: {"usercard": $(this).val(), "role": "1"},
                                            success: function (data) {
                                                $("#registerinfo").attr("hidden", false);
                                                if (data.indexOf("身份证已被注册") != -1) {
                                                    $("input[name='usercard']").css("color", "red");
                                                    $("#registerinfo").css("color", "red");
                                                } else {
                                                    $("input[name='usercard']").css("color", "green");
                                                    $("#registerinfo").css("color", "green");
                                                }
                                                $("#registerinfo").text(data);
                                            },
                                        });
                                    } else {
                                        $("#registerinfo").text("身份证号不正确");
                                        $("input[name='usercard']").css("color", "red");
                                        $("#registerinfo").css("color", "red");
                                        $("#registerinfo").attr("hidden", false);
                                    }
                                });
                            });
                        });
                    </script>
                    <div class="other-operation">
                        <a href="${pageContext.request.contextPath}/html/hire_login.jsp"
                           class="forget-password">返回雇主登录</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
</div>
<p class="address">福建省家政平台网络科技股份有限公司　-　家政综合信息服务平台</p>
<script src="../js/jquery-2.0.0.min.js"></script>
<script type="text/javascript">
    var wait = 60;

    function time(o) {
        if (wait == 0) {
            o.removeAttribute("disabled");
            o.value = "获取验证码";
            wait = 60;
        } else {
            o.setAttribute("disabled", true);
            o.value = "重新发送(" + wait + ")";
            wait--;
            setTimeout(function () {
                    time(o)
                },
                1000)
        }
    }

    document.getElementById("get_btn").onclick = function () {
        time(this);
    }
</script>
</body>
</html>
