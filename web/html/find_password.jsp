<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>

<body>
	<div class="welcome-wrap">
		<div class="container">
			<div class="wel-head register-head">
				<div class="wel-logo">
					<img src="${pageContext.request.contextPath}/img/index/logo2.png" alt="" onClick="location.href='${pageContext.request.contextPath}/index'"/>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="wel-body">
			<div class="container">
				<div class="login-content">
					<h4>家政平台-找回密码</h4>
					<div class="login-mian">
						<div class="login-input input-group">
							<span class="input-group-addon"><i class="fa fa-phone fa-fw" ></i></span>
							<input name="phone"  class="form-control" type="text" placeholder="请输入您的手机号码"/>
						</div>
						<div class="login-input input-group">
							<span class="input-group-addon"><i class="fa fa-envelope-o fa-fw" ></i></span>
							<input  class="form-control auth-code" type="text" placeholder="请输入验证码"/>
							<span class="code-botton"><input type="button" id="get_btn" class="change" value="获取验证码"/></span>
						</div>
						<%--发送验证码--%>
						<script type="text/javascript">
							//点击发送之前确保，该电话号码在用户表中已经存在。
							//当失去焦点时发送请求判断
							$("input[name='phone']").blur(function () {
								//失去焦点前端先效验是否满足电话号码格式，符合在继续下一步，不符合直接返回
								var phone = $("input[name='phone']").val();
								var ver = Number.parseInt($("input[name='phone']").val());
								//验证手机号是数字类型
								if (typeof ver != "number"){
									return;
								}
								//确保长度为11
								if (phone.length==11) {
									$.ajax({
										url: "${pageContext.request.contextPath}/phoneVerToAll",
										type: "post",
										data: {"phone": $("input[name='phone']").val()},
										success: function (data) {
											$("#registerinfo").text(data);
											if (data.indexOf("账户存在,可发送验证码") != -1) {
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
							//点击发送验证码
							$("#get_btn").click(function () {
								var phone = $("input[name='phone']").val();
								var ver = Number.parseInt($("input[name='phone']").val());
								//验证手机号是数字类型
								if (typeof ver != "number"){
									return;
								}
								//确保长度为11
								if (phone.length==11) {
									$.ajax({
										url: "${pageContext.request.contextPath}/findpassword/sendSmsVercode",
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
						<div class="login-input input-group">
							<span class="input-group-addon"><i class="fa fa-key fa-fw" ></i></span>
							<input  class="form-control" type="text" placeholder="请输入新密码"/>
						</div>
						<div hidden="hidden" id="registerinfo" style="text-align: center"></div>
						<button class="button button-glow button-rounded button-caution">确认</button>
						<script type="text/javascript">
							//修改密码操作
							$(".button,.button-glow,.button-rounded,.button-caution").click(function () {
								alert()
							});
						</script>
						<div class="other-operation">
							<a href="${pageContext.request.contextPath}/html/employer_login.jsp" class="forget-password">返回雇员登录</a>
							<a style="margin-left: 122px" href="${pageContext.request.contextPath}/html/hire_login.jsp" class="forget-password">返回雇主登录</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<script src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js"></script>
		<script type="text/javascript">
			$(function () {
				$(".footer").load("${pageContext.request.contextPath}/html/footer.jsp");
			});
		</script>
	</div>
	<p class="address">福建省家政平台网络科技股份有限公司　-　家政综合信息服务平台</p>
	<script src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js"></script>
	<script type="text/javascript">  
		var wait=60;  
		function time(o) {  
				if (wait == 0) {  
					o.removeAttribute("disabled");            
					o.value="获取验证码";  
					wait = 60;  
				} else {  
					o.setAttribute("disabled", true);  
					o.value="重新发送(" + wait + ")";  
					wait--;  
					setTimeout(function() {  
						time(o)  
					},  
					1000)
				}  
			}  
		document.getElementById("get_btn").onclick=function(){time(this);}  
	</script> 
</body>
</html>
