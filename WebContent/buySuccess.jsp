<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>购物车</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/mine.js"></script>
<link rel="stylesheet" href="css/jquery.countdown.css" />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script src="js/jquery-1.7.min.js"></script>

</head>
<body>
<header class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">OTO家教网</a>
        </div>

        <!--/.navbar-header-->
        <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
            <ul class="nav navbar-nav ">

                <li class="dropdown">
                    <a href="#"><i class="fa fa-list"></i><span>我的老师</span></a>

                </li>

                <li class="dropdown">
                    <a href="list"><i class="fa fa-shopping-cart"></i><span>购物车</span></a>

                </li>
                <li class="dropdown">
                    <a href="login.jsp"><i class="fa fa-user"></i><span>登录</span></a>
                </li>
                <li class="dropdown">
                    <a href="register.jsp"><i class="fa fa-plus-circle"></i><span>注册</span></a>
                </li>


                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i><span>搜索</span></a>
                    <ul class="dropdown-menu search-form">
                        <form>
                            <input type="text" class="search-text" name="s" placeholder="Search...">
                            <button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
                        </form>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>

</header>


<!--头部-->
<nav class="navbar nav_bottom" role="navigation">
    <div class="container">
        <div class="navbar-header nav_2">
            <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
            <ul class="nav navbar-nav nav_1">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="about.html">关于</a></li>
                <li><a href="faculty.html">Faculty</a></li>
                <li class="last"><a href="contact.html">Contacts</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- 导航部分结束 -->
<!-- banner -->
<div class="courses_banner"><!--bacgroung-size设为cover  把背景图像扩展至足够大，以使背景图像完全覆盖背景区域。-->
    <div class="container">

        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="index.html">首页</a></li>
                <li class="current-page">状态</li>
            </ul>
        </div>
           
    </div>
   
</div>

<div style="min-height:400px;text-align:center;width:100%;margin-top:140px;">
<span style="font-size:28px;color:#3c763d;padding:20px;border:2px solid #3c763d;">购买成功!!</span>
</div>
  
        
<!--底部-->
<div class="footer1">
    <div class="container">

        <div class="clearfix"> </div>
        <div class="copy">
            <p>Copyright &copy; 2016.OTO教育网 </p>
        </div>
    </div>
</div>
<!-- scroll to top -->
 <a href="#" id="scrollup"><i class="fa fa-arrow-up"></i></a>
</body>



 

<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	购买成功
</body>
</html> --%>