<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-touch-slider.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
    <!--城市切换插件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cityPicker.css">
    <script src="${pageContext.request.contextPath}/js/jquery-2.0.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.touchSwipe.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-touch-slider.js"></script>
    <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/cityData.js"></script>
    <script src="${pageContext.request.contextPath}/js/cityPicker.js"></script>
</head>
<body>
<div class="container">
    <div class="jw-logo">
        <img src="${pageContext.request.contextPath}/img/index/logo2.png" alt="" onClick="location.href='${pageContext.request.contextPath}/html/index.jsp'"/>
        <div class="change-city">
            <em>
                <input type="text" id="cityChoice" value="福州" placeholder="请选择"/>
            </em>
            <p id="choose-city">[切换城市]</p>
        </div>
    </div>
    <div class="header-right">
        <ul class="header-nav">
            <li class="nav-list"><a href="${pageContext.request.contextPath}/index">首页</a></li>
            <li class="nav-list"><a href="${pageContext.request.contextPath}/html/baomu.jsp">保姆</a></li>
            <li class="nav-list"><a href="${pageContext.request.contextPath}/html/yuesao.html">月嫂</a></li>
            <li class="nav-list"><a href="${pageContext.request.contextPath}/html/linshi.html">临时钟点工</a></li>
            <li class="nav-list"><a href="${pageContext.request.contextPath}/html/changqi.html">长期钟点工</a></li>
            <li class="nav-list">
                <a href="javascript:void(0)" class="nav-more">更多服务<span class="fa fa-angle-down"></span></a>
                <ol class="hide-nav">
                    <li><a href="${pageContext.request.contextPath}/html/jiadian.html">家电清洗</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">干洗</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">搬家</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">护工</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">居家保养</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">皮具护理</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">居家便民</a></li>
                    <li><a href="${pageContext.request.contextPath}/html/no_date.html">家电维修</a></li>
                </ol>
            </li>
        </ul>
        <div class="drop-menu">
            <span class="fa fa-navicon"></span>
        </div>
        <div class="search-right">
            <ul class="three">
                <li class="hir-name current">雇员名字</li>
                <li class="phone">手机号码</li>
                <li class="role">角色</li>
            </ul>
            <ul class="search-input">
                <li>
                    <input type="text" placeholder="请输入雇员名称"/>
                    <span class="fa fa-search"></span>
                </li>
                <li>
                    <input type="text" placeholder="请输入手机号码"/>
                    <span class="fa fa-search"></span>
                </li>
                <li>
                    <input type="text" placeholder="请输入角色"/>
                    <span class="fa fa-search"></span>
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    $('#bootstrap-touch-slider').bsTouchSlider();<!--轮播-->
    new WOW().init();<!--动画延迟加载-->
</script>
<script>
    $(".search-input li").hide().first().show();
    $(".filter-tab").hide().first().show();
    $(document).ready(function (e) {
        $(".nav-more").click(function () {
            $(".hide-nav").slideToggle();
        });
        $(".drop-menu").click(function () {
            $(".header-nav").slideToggle();
        });
        $(".three li").click(function () {
            $(this).addClass("current").siblings().removeClass("current");
            $(".search-input li").hide().eq($(this).index()).show();
        });
        $(".filter-wrap span").click(function () {
            $(this).addClass("active").siblings().removeClass("active");
            $(".filter-tab").hide().eq($(this).index()).show();
        });
        //返回顶部
        $(".top-item").click(function () {
            $('body,html').animate({scrollTop: 0}, 500);
            return false;
        });
        $(".phone-refer").click(function () {
            $(".public-dom").css("display", "block");
        });
        $(".close-alert,.cancel").click(function () {
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
        callback: function (city_id) {
        }
    });
    cityPicker.init();
</script>
<script>
    $(document).ready(function () {
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            navigation: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        });
    });
</script>
</body>
</html>
