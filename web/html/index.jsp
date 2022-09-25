<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>家政平台首页</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome/css/font-awesome.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-touch-slider.css"  media="all">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
		<!--城市切换插件-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cityPicker.css">
		<script src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js"></script>
		<script type="text/javascript">
			$(function () {
				$(".top-nav").load("${pageContext.request.contextPath}/html/top_nav.jsp");
				$(".header").load("${pageContext.request.contextPath}/html/header.jsp");
				$(".footer").load("${pageContext.request.contextPath}/html/footer.jsp");
				$(".fix-service").load("${pageContext.request.contextPath}/html/fix_service.jsp");

			});
		</script>
</head>

<body>
	<div class="top-nav">
	</div>
	<div class="header">
	</div>
	<div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper For Slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/img/index/banner1.png" alt="Bootstrap Touch Slider" class="slide-image"/>
				<div class="bs-slider-overlay"></div>
				<div class="container">
					<div class="row">
						<div class="slide-text slide_style_center">
							<h1 data-animation="animated zoomInRight">您的家庭好帮手</h1>
							<p data-animation="animated fadeInLeft">家务事交给我们，您的时间值得更多..</p>
							<a href="${pageContext.request.contextPath}/html/changqi.html" class="btn btn-default" data-animation="animated fadeInLeft">点击查看</a>
							<a href="${pageContext.request.contextPath}/html/order.html"   class="btn btn-primary" data-animation="animated fadeInRight">立即预约</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/img/index/banner2.png" alt="Bootstrap Touch Slider" class="slide-image"/>
				<div class="bs-slider-overlay"></div>
				<div class="slide-text slide_style_center">
					<h1 data-animation="animated flipInX">悠然的家庭生活</h1>
					<p data-animation="animated lightSpeedIn">金网家政全心全心为你提供</p>
					<a href="${pageContext.request.contextPath}/html/changqi.html" class="btn btn-default" data-animation="animated fadeInUp">点击查看</a>
					<a href="${pageContext.request.contextPath}/html/order.html"  class="btn btn-primary" data-animation="animated fadeInDown">立即预约</a>
				</div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/img/index/banner3.png" alt="Bootstrap Touch Slider" class="slide-image"/>
				<div class="bs-slider-overlay"></div>
				<div class="slide-text slide_style_center">
					<h1 data-animation="animated zoomInLeft">净美环境　愉悦办公</h1>
					<p data-animation="animated fadeInRight">家政平台企业服务　服务好助手</p>
					<a href="${pageContext.request.contextPath}/html/changqi.html"  class="btn btn-default" data-animation="animated fadeInLeft">点击查看</a>
					<a href="${pageContext.request.contextPath}/html/order.html"  class="btn btn-primary" data-animation="animated fadeInRight">立即预约</a>
				</div>
			</div>
		</div>
		<!-- Left Control -->
		<a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
			<span class="fa fa-angle-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<!-- Right Control -->
		<a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
			<span class="fa fa-angle-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="safe">
		<div class="container">
			<div class="section-heading">
				<div class="section-title">服务保障</div>
				<div class="section-subtitle">通过家政平台的安全保障、品质保障、风险保障三重保障机制，让您无后顾之忧！</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 wow fadeInDown">
					<article>
						<div class="safe-item">
							<div class="wrap-safe-icon">
								<div class="safe-icon">
									<span class="fa fa-shield"></span>
								</div>
							</div>
							<div class="title">安全保障</div>
							<div class="text">家政人员身份经过实名认证审核，上门服务家政险保障护航</div>
						</div>
					</article>
				</div>
				<div class="col-md-3 col-sm-6 wow bounceInLeft">
					<article>
						<div class="safe-item active">
							<div class="wrap-safe-icon">
								<div class="safe-icon">
									<span class="fa  fa-leaf"></span>
								</div>
							</div>
							<div class="title">风险保障</div>
							<div class="text">全面的家政综合险保障三方的权益，轻松解决您的支付困扰</div>
						</div>
					</article>
				</div>
				<div class="col-md-3 col-sm-6 wow bounceIn">
					<article>
						<div class="safe-item">
							<div class="wrap-safe-icon">
								<div class="safe-icon">
									<span class="fa fa-thumbs-o-up"></span>
								</div>
							</div>
							<div class="title">品质保障</div>
							<div class="text">家政人员经过了严格的筛选、择优录取；专业工具、标准化流程</div>
						</div>
					</article>
				</div>
				<div class="col-md-3 col-sm-6 wow bounceIn">
					<article>
						<div class="safe-item">
							<div class="wrap-safe-icon">
								<div class="safe-icon">
									<span class="fa fa-flash"></span>
								</div>
							</div>
							<div class="title">闪电匹配</div>
							<div class="text">快速精准找到适合的家政人员,个性化需求智匹配，无需现金，轻松支付</div>
						</div>
					</article>
				</div>
			</div>
		</div>
	</div>
	<div id="type">
		<div class="container">
			<div class="section-heading">
				<div class="section-title">服务类型</div>
				<div class="section-subtitle">全方位的家庭服务，一键下单，尽享清闲生活！</div>
			</div>
		</div>
		<%--<div id="info" hidden = "hidden">${requestScope.get("info")}</div>
		<script type="text/javascript">
			$(function () {
				if ($("#info").text().indexOf("请登录")!=-1){
					alert("请登录！")
				}
			})
		</script>--%>
		<div class="container">
			<div class="row">
				<div class="col-md-7 col-sm-7">
					<ul class="type-icon">
						<li>
							<a href="${pageContext.request.contextPath}/html/baomu.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/baomu.png" alt=""/>
								<p>保姆</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/yuesao.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/yuesao.png" alt=""/>
								<p>月嫂</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/linshi.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/duanzhong.png" alt=""/>
								<p>临时钟点工</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/changqi.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/changzhong.png" alt=""/>
								<p>长期钟点工</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/jiadian.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/qingxi.png" alt=""/>
								<p>家电清洗</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/hugong.png" alt=""/>
								<p>护工</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/jiaju.png" alt=""/>
								<p>居家保养</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/weixiu.png" alt=""/>
								<p>家电维修</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/banjia.png" alt=""/>
								<p>搬家</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/ganxi.png" alt=""/>
								<p>干洗</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/piju.png" alt=""/>
								<p>皮具护理</p>
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/html/no_date.html" class="icon-links">
								<img src="${pageContext.request.contextPath}/img/index/jujia.png" alt=""/>
								<p>居家便民</p>
							</a>
						</li>
					</ul>
				</div>
				<div class="col-md-5 col-sm-5">
					<div class="type-item">
						<div class="title">1、选择您的需求</div>
						<div class="text">家政平台人性化设置，让您可以快速下单，也可精准筛选下单</div>
					</div>
					<div class="type-item">
						<div class="title">2、选择家政人员</div>
						<div class="text">通过平台精准筛选出的家政人员里，挑选觉得适合您的家政人员</div>
					</div>
					<div class="type-item">
						<div class="title">3、坐等上门服务</div>
						<div class="text">预约完成后，您只需在家中等候您满意的家政人员进行家政服务</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="package">
		<div class="container">
			<div class="section-heading">
				<div class="section-title">优惠套餐</div>
				<div class="section-subtitle">最新最全面的家政新闻资讯,让你实时掌握家政新闻的最新动态！</div>
			</div>
			<div class="owl-carousel owl-theme">
				<c:forEach var="taocan" items="${sessionScope.taocanList}">
					<div class="item">
						<div class="package-item">
							<h3 >${taocan.taocanName}</h3>
							<p class="package-intr">套餐说明</p>
							<p >时间：${taocan.taocanTime}</p>
							<p >人员等级：${taocan.employerGrade} </p>
							<p >超值回馈：${taocan.taocanHuikui}</p>
							<p class="package-price" >套餐价格：&yen;<em>${taocan.taocanPrice}</em></p>
							<div class="refer-buy">
								<button class="phone-refer">电话咨询</button>
								<button class="now-buy" onClick="location.href='${pageContext.request.contextPath}/html/order.html'">立即购买</button>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="public-dom">
		<div class="public-mask"></div>
		<div class="public-wrap">
			<div class="public-content">
				<span class="close-alert fa fa-close"></span>
				<div class="public-body"></div>
				<div class="public-footer">
					<p>是否拨打客服热线：87853663？</p>
					<ul class="operate">
						<li>
							<span class="cancel">取消</span>
						</li>
						<li>
							<span class="call-now">立即拨打</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="news">
		<div class="container">
			<div class="section-heading">
				<div class="section-title">热点新闻</div>
				<div class="section-subtitle">最新最全面的家政新闻资讯,让你实时掌握家政新闻的最新动态！</div>
			</div>
			<div class="row news">
				<div class="col-md-4 wow bounceInLeft news-list">
					<div class="hb-info" onClick="location.href='${pageContext.request.contextPath}/html/news_detail.html'">
						<div class="hb-thumb">
							<img src="${pageContext.request.contextPath}/img/index/news1.jpg" class="img-responsive" alt=""/>
							<div class="date-meta">
								June<span>06</span>2017
							</div>
						</div>
						<h4><a href="${pageContext.request.contextPath}/html/news_detail.html">五一小长假 家政义工团走进静安养老院 关爱老人 传承美德</a></h4>
						<p>五一小长假 家政义工团走进静安养老院 关爱老人 传承美德，本次活动半场以福建福州市 张先生家所遭遇的“虐童保姆”为案例，968金网继续坚持不懈为新加入家政从业人员培训职业道德和礼仪标准。</p>
					</div>
				</div>
				<div class="col-md-4 wow bounceIn news-list" data-wow-delay=".5s">
					<div class="hb-info" onClick="location.href='${pageContext.request.contextPath}/html/news_detail.html'">
						<div class="hb-thumb">
							<img src="${pageContext.request.contextPath}/img/index/news2.jpg" class="img-responsive" alt=""/>
							<div class="date-meta">
								June<span>02</span>2017
							</div>
						</div>
						<h4><a href="${pageContext.request.contextPath}/html/news_detail.html">968金网：请保姆免中介费第四届对接会圆满结束</a></h4>
						<p>本活动是由家政服务信息平台举办的“免中介费请保姆第四届现场对接会”，活动将于2017年3月25号在福新中路115号三沙苑举行！</p>
					</div>
				</div>
				<div class="col-md-4 wow bounceInRight news-list" data-wow-delay=".5s">
					<div class="hb-info" onClick="location.href='${pageContext.request.contextPath}/html/news_detail.html'">
						<div class="hb-thumb">
							<img src="${pageContext.request.contextPath}/img/index/news3.jpg" class="img-responsive" alt=""/>
							<div class="date-meta">
								May<span>30</span>2017
							</div>
						</div>
						<h4><a href="${pageContext.request.contextPath}/html/news_detail.html">968金网：请保姆免中介费第四届对接会圆满结束</a></h4>
						<p>本活动是由家政服务信息平台举办的“免中介费请保姆第四届现场对接会”，活动将于2017年3月25号在福新中路115号三沙苑举行！</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="recommend">
		<div class="container">
			<div class="section-heading">
				<div class="section-title">平台推荐</div>
				<div class="section-subtitle">家政平台实时更新最优质的家政人员供您筛选，让您在忙碌的生活工作多一份清闲！</div>
			</div>
			<div class="filter-wrap">
				<span class="filter active">保姆</span>
				<span class="filter">月嫂</span>
				<span class="filter">短期钟点工</span>
				<span class="filter">长期钟点工</span>
				<span class="filter">护工</span>
				<span class="filter">家电清洗</span>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3 wow bounceInLeft" data-wow-delay="800">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec1.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（保姆）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3 wow bounceInUp" data-wow-delay="1000">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec1.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（保姆）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3 wow bounceInDown" data-wow-delay="1200">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec1.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（保姆）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3 wow  bounceInRight" data-wow-delay="1400">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec1.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（保姆）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">夏会珍（月嫂）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：月子护理、催乳师、汗蒸师</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">夏会珍（月嫂）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：月子护理、催乳师、汗蒸师</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info" data-wow-delay="1200">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">夏会珍（月嫂）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：月子护理、催乳师、汗蒸师</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info" data-wow-delay="1400">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">夏会珍（月嫂）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：月子护理、催乳师、汗蒸师</p>
						</a>
					</div>
				</div>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（短期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：长相清楚，开朗，踏实肯干，心细，有责任心</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（短期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：长相清楚，开朗，踏实肯干，心细，有责任心</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/htmlbook_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（短期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：长相清楚，开朗，踏实肯干，心细，有责任心</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec2.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（短期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：长相清楚，开朗，踏实肯干，心细，有责任心</p>
						</a>
					</div>
				</div>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec3.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易六清（长期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：踏实吃苦耐劳 好沟通 细节到位</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec3.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易六清（长期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：踏实吃苦耐劳 好沟通 细节到位</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec3.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易六清（长期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：踏实吃苦耐劳 好沟通 细节到位</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/book_info.html">
							<img src="${pageContext.request.contextPath}/img/index/rec3.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易六清（长期钟点工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：踏实吃苦耐劳 好沟通 细节到位</p>
						</a>
					</div>
				</div>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/no_date.html">
							<img src="${pageContext.request.contextPath}/img/index/rec4.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（护工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/no_date.html">
							<img src="${pageContext.request.contextPath}/img/index/rec4.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（护工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/no_date.html">
							<img src="${pageContext.request.contextPath}/img/index/rec4.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（护工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/no_date.html">
							<img src="${pageContext.request.contextPath}/img/index/rec4.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（护工）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
			</div>
			<div class="filter-tab">
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/jiadian.html">
							<img src="${pageContext.request.contextPath}/img/index/rec5.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（家电清洗）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/jiadian.html">
							<img src="${pageContext.request.contextPath}/img/index/rec5.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（家电清洗）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/jiadian.html">
							<img src="${pageContext.request.contextPath}/img/index/rec5.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（家电清洗）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="re-info">
						<a href="${pageContext.request.contextPath}/html/jiadian.html">
							<img src="${pageContext.request.contextPath}/img/index/rec5.jpg" alt=""/>
							<p class="name-age">
								<span class="name">易兰英（家电清洗）</span>
								<span class="age">45岁</span>
							</p>
							<p class="skill">能力特长：做家务，辅助带孩子</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="footer-text" id="footer-text">
				<ul class="other-contact text-float text-ul">
					<h5>部门客服</h5>
					<li><a href="${pageContext.request.contextPath}/html/service_alert.html">鼓楼区客服</a></li>
					<li><a href="${pageContext.request.contextPath}/html/service_alert.html">晋安区客服</a></li>
					<li><a href="${pageContext.request.contextPath}/html/service_alert.html">月嫂部客服</a></li>
					<li><a href="${pageContext.request.contextPath}/html/service_alert.html">保姆部客服</a></li>
					<li><a href="${pageContext.request.contextPath}/html/service_alert.html">钟点工客服</a></li>
				</ul>
				<ul class="friendly-link text-ul" >
					<h5>友情链接</h5>
					<li><a href="" target="_blank">福建家政</a></li>
					<li><a href="" target="_blank">福州洁丽保洁</a></li>
					<li><a href="" target="_blank">福州金牌月嫂</a></li>
					<li><a href="http://www.bootstrapmb.com" target="_blank">福州家政公司</a></li>
				</ul>
				<ul class="contact-us text-ul">
					<h5>联系我们</h5>
					<li>客服热线：400-1234-567</li>
					<li>总公司地址：北京市海淀区西北旺东路10号院 中关村软件园二期西区　<br/>联系电话： 82558163</li>
					<li>南平分公司地址：苏州市江宁开发区将军大道133号　<br/>联系电话:0599-5838533</li>
				</ul>
			</div>
			<div class="bottom-code">
				<img src="${pageContext.request.contextPath}/img/index/code.jpg" alt=""/>
				<p>扫码关注家政平台公众号，更多好礼期待你的关注</p>
			</div>
		</div>	
	</div>
	<p class="address">福建省家政平台网络科技股份有限公司　-　家政综合信息服务平台</p>
	<div class="fix-service">
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
				<div class="icon" onClick="location.href='${pageContext.request.contextPath}/html/service_alert.html'">
					<img src="${pageContext.request.contextPath}/img/index/qq.png" class="service"/>
				</div>
			</li>
			<li id="btn" class="top-item fix-item">
				<div class="icon">
					<img src="${pageContext.request.contextPath}/img/index/top.png" class="top"/>
				</div>
			</li>
		</ul>
	</div>
	<script>
	$('#bootstrap-touch-slider').bsTouchSlider();<!--轮播-->
	new WOW().init();<!--动画延迟加载-->
	</script>
	<script>
	$(".search-input li").hide().first().show();
	$(".filter-tab").hide().first().show();
	$(document).ready(function(e) {
		$(".nav-more").click(function(){
			$(".hide-nav").slideToggle();
		});
		$(".drop-menu").click(function(){
			$(".header-nav").slideToggle();
		});
		$(".three li").click(function(){
			$(this).addClass("current").siblings().removeClass("current");
			$(".search-input li").hide().eq($(this).index()).show();
		});
		$(".filter-wrap span").click(function(){
			$(this).addClass("active").siblings().removeClass("active");
			$(".filter-tab").hide().eq($(this).index()).show();
		});
		//返回顶部
		$(".top-item").click(function(){
			$('body,html').animate({ scrollTop: 0 }, 500);
			return false;
		});
		$(".phone-refer").click(function(){
			$(".public-dom").css("display","block");
		});
		$(".close-alert,.cancel").click(function(){
			$(".public-dom").fadeOut('fast');
		});
	});
	</script>
	<script>
		var cityPicker = new IIInsomniaCityPicker({
			data: cityData,
			target: '#cityChoice',
			valType: 'k-v',
			hideCityInput: '#city',
			hideProvinceInput: '#province',
			callback: function(city_id){
			}
		});
		cityPicker.init();
	</script>
	<script>
	$(document).ready(function(){
	  $('.owl-carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		navigation:true,
		responsive:{
				0:{
					items:1
				},
				600:{
					items:3
				},
				1000:{
					items:5
				}
			}
		});
	});
	</script>
</body>
</html>
