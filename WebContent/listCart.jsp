<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>购物车</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
                <li class="current-page">购物车</li>
            </ul>
        </div>
    </div>
</div>
 
    <!-- //banner -->
     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
    <div class="shopping_bar">我的购物车</div>
    </div>
    
   <div class="user_cart" style="min-height:600px;">
   <div class="container">
      <form action="buy" id="form" method="post">
       
       <div class="cart_head col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <ul class="">
             <li class="col-md-1 col-xs-4"><input type="checkbox" name="all" id="all" >全选</li>
             <li class="col-md-2 col-xs-4">图片</li>
          	 <li class="col-md-2 col-xs-4">姓名</li>
          	 <li class="col-md-2 col-xs-4">价格</li>
          	 <li class="col-md-2 col-xs-4">月份</li>
          	 <li class="col-md-2 col-xs-4">小计</li>
          	 <li></li>
          	 
          </ul>
         
        </div>
          <!-- 循环开始 -->
          <c:forEach var="t" items="${sessionScope.Cart }">
        <div class="cart_body col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
          <ul class="list" ><!-- 供jquery取值 -->
          
          <li class="col-md-1 col-xs-2"><input name="pid" class="pid"  type="checkbox" value="${t.tid}" ></li>
          
          <li class="col-md-2 col-xs-8"><img src="images/t15.jpg" class="img-responsive" alt="" style="width:100px;height:100px;"/></li>
          <li class="col-md-2 col-xs-2">${t.tname}</li>
          <li class="col-md-2 col-xs-3 "><span class="price">${t.price}</span></li>
          <li class="col-md-2 col-xs-4">
          <input class="min" type="button" value="-" style="width:20px">
          <input class="text_box nn" type="text" value="2" style="width:30px;text-align:center;" readonly>
          <input class="add" type="button" value="+" style="width:20px">
          
          </li>
          <li class="col-md-2 col-xs-2"><span class="totle">4000</span></li>
          <li class="col-md-1 col-xs-3"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"><i class="fa fa-times-circle"></i></span><span class="sr-only">Close</span></button><br>
		  </li>
          
          </ul>
        
        
       
          </div>
          </c:forEach>
          <div class="cart_body col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
          <ul class="list" >
          
          <li class="col-md-1 col-xs-2"><input name="pid" class="pid" type="checkbox"  value="2" ></li>
          
          <li class="col-md-2 col-xs-8"><img src="images/t15.jpg" class="img-responsive" alt="" style="width:100px;height:100px;"/></li>
          <li class="col-md-2 col-xs-2">张俊</li>
          <li class="col-md-2 col-xs-3"><span class="price">2000</span></li>
          <li class="col-md-2 col-xs-4" >
          <input class="min" type="button" value="-" >
          <input class="text_box nn" type="text" value="1" style="width:30px;height:28px;text-align:center;" readonly>
          <input class="add" type="button" value="+" >
		  </li>
          <li class="col-md-2 col-xs-2 tot"><span class="totle">2000</span></li>
          <li class="col-md-1 col-xs-3"><button type="button" class="close" ><span ><i class="fa fa-times-circle"></i></span></button><br>
		  </li>
          
          </ul>
        
        
       
          </div>
          
          <div class="cart_body col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
          <ul class="list" >
          
          <li class="col-md-1 col-xs-2"><input name="pid" class="pid" type="checkbox"  value="2" ></li>
          
          <li class="col-md-2 col-xs-8"><img src="images/t15.jpg" class="img-responsive" alt="" style="width:100px;height:100px"/></li>
          <li class="col-md-2 col-xs-2">张俊</li>
          <li class="col-md-2 col-xs-3"><span class="price">2000</span></li>
          <li class="col-md-2 col-xs-4">
          <input class="min" type="button" value="-" >
          <input class="text_box nn" type="text" value="2" style="width:30px;text-align:center;">
          <input class="add" type="button" value="+">
		  </li>
          <li class="col-md-2 col-xs-2 tot"><span class="totle">2000</span></li>
          <li class="col-md-1 col-xs-3"><button type="button" class="close" ><span ><i class="fa fa-times-circle"></i></span></button><br>
		  </li>
          
          </ul>
        
        
       
          </div>
           <div class="cart_body col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
          <ul class="list" >
          
          <li class="col-md-1 col-xs-2"><input name="pid" class="pid" type="checkbox"  value="${p.pid}" ></li>
          
          <li class="col-md-2 col-xs-8"><img src="images/t15.jpg" class="img-responsive" alt="" style="width:100px;height:100px"/></li>
          <li class="col-md-2 col-xs-2">张俊</li>
          <li class="col-md-2 col-xs-3"><span class="price">2000</span></li>
          <li class="col-md-2 col-xs-4">
          <input class="min" type="button" value="-" >
          <input class="text_box nn" type="text" value="3" style="width:30px;text-align:center;" readonly>
          <input class="add" type="button" value="+" >
		  </li>
          <li class="col-md-2 col-xs-2 tot"><span class="totle">2000</span></li>
          <li class="col-md-1 col-xs-3"><button type="button" class="close" ><span ><i class="fa fa-times-circle"></i></span></button><br>
		  </li>
          
          </ul>
        
        
       
          </div>
       
        <div class="cart_bottom col-xs-12 col-sm-12 col-md-12 col-lg-12">
         <ul class="cart_bottom_left col-xs-12 col-sm-12 col-md-6 col-lg-6">
           <li class="col-sm-3"><input type="checkbox"  name="all1" id="all1" >全选</li>
           <li class="col-sm-2"><a href="MoreTeacher.jsp">继续挑选|</a></li>
           <li class="col-sm-1 clearAll"><a href="">清空|</a></li>
           <li class="col-sm-2 delSelected"><a href="">删除所选</a></li>
           </ul>
           <ul class="cart_bottom_right col-xs-12 col-sm-12 col-md-6 col-lg-6">
           <li class="col-sm-3" >共<span id="num"></span>个</li>
           <li class="col-sm-3">合计：<span>￥</span><label id="total">0.00</label></li>
           <li class="col-sm-6"><input type="button" id="btn buy" class="buybtn" value="结算" disabled/></li>
         </ul>
        </div>
   
    </form>
    </div>
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

</html>
<script src="js/jquery-1.7.min.js"></script>
 <script type="text/javascript">

	$("#buy").click(function(){
		//添加校验，判断复选框让不为空
		$("#form").submit();
	})
	
	$("#del").click(function(){
		$("#form").attr("action","del");
		$("#form").submit();
	})
	var checkAll = $("#checkAll");
	var select = $("input:[name=flag]");
	var f = true;
	checkAll.click(function(){
		if(f==true){
			select.attr("checked",true);
			f=false;
		}else{
			select.attr("checked",false);
			f=true;
		}
	})
	
</script>     


<%-- <%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	ul li{
		width:80px;
		list-style: none;
		float: left;
	}
	ul {
		clear: both;	
	}
	.nav {
		width: 80%;
		margin: 0 auto;
		
	}
	.nav .right {
		margin-left: 50%;
		
	}
	input .pid{
		width: 10px;
		border: none;
	}
</style>
</head>
<body>
		
		<div class="nav">
			<div class="right">
				<a href="#" id="buy">下单</a>
				<a href="#" id="del">删除</a>
				<a href="#">退出</a>
			</div>
		</div>
		
		
		<div class="nav">
			<form action="buy" id="form" method="post">
			<div >
			<ul>
				<li><input type="button" value="全选" id="checkAll"/></li>
				<li>商品id</li>
				<li>商品名称</li>
				<li>商品数量</li>
				<li>商品单价</li>
				<li>是否促销</li>
				<li>供货商</li>
			</ul>
		<c:forEach var="p" items="${sessionScope.products }">
			<ul>
				<li><input type="checkbox" name="flag" value="${p.pid}"></li>
				<li><input type="text" value="${p.pid}" name="pid" class="pid"></li>
				<li><c:out value="${p.name} "></c:out></li>
				<li><c:out value="${p.nums} "></c:out></li>
				<li><c:out value="${p.price} "></c:out></li>
				<li><c:out value="${p.sale==true?'是':'否'} "></c:out></li>
				<li><c:out value="${p.provider} "></c:out></li>
			</ul>
		</c:forEach>
			</div>
			</form>
	  	  </div>
</body>
</html>
<script src="js/jquery-1.7.min.js"></script>
 --%>
 