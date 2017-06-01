<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML>
<html>
<head>
<title>OTO家教网首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="oTo" />
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/mine.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!--字体，图标引用-->
<link href="css/font-awesome.css" rel="stylesheet">
<script src="js/jquery-1.7.min.js"></script> 
<script src="js/jquery.fly.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#addToCart").click(function(){
			var tid = $("#tid").val();
			var months = $("#months").val();
			alert(months);
			$.ajax({
				type: "get",
				url: "AddToCart",
				datatype: "json",
				data: {
					"tid":tid,
					"months":months
					},
				success: function(data){
					alert(data);
				},
				error: function(){
					alert("error");
				}
			});
		})
	})
</script>
<script>

    $(function () {
    	   var h= document.body.clientHeight;//页面宽度
    	   $('.click_pop').click(function () {
             
              $('.bgPop,.pop').show();
              $('.bgPop').height(h);
              // salert($('.bgPop').height());
              
          });
          $('.close').click(function () {
        	  
              $('.bgPop,.pop').hide();
              return false;
          });
         
    })
     $(function () {
    	   var h= document.body.clientHeight;//页面宽度
    	   $('.click_pop1').click(function () {
             
              $('.bgPop,.pop1').show();
              $('.bgPop').height(h);
              // salert($('.bgPop').height());
              
          });
          $('.close1').click(function () {
        	  
              $('.bgPop,.pop1').hide();
              return false;
          });
         
    })
</script>

</head>
<body>
<div class="bgPop" id="bgPop"></div>
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
            <a class="navbar-brand" href="index.html">OTO家教网</a>
        </div>

	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav ">

				<li class="dropdown">
		            <a href="myTeacher.jsp"><i class="fa fa-list"></i><span>我的老师</span></a>
		            
		        </li>

				<li class="dropdown">
		            <a href="listCart.jsp"><i class="fa fa-shopping-cart"></i><span>购物车</span></a>
		            
		        </li>
		        <li class="dropdown toggle1">
		            <a href="login.jsp"><i class="fa fa-user"></i><span>登录</span></a>     
		        </li>
		         <li class="dropdown toggle1">
		            <a href="reg.jsp"><i class="fa fa-plus-circle"></i><span>注册</span></a>
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
		          <li class="dropdown toggleout">
		            <a href="out.jsp"><i class="fa fa-sign-out"></i><span>退出</span></a>
		        </li>
		        <li class="dropdown">
		        <div id="loginid" style="color:#fff;float:right;margin:20px 0 0 20px;">你好，
		        <span style="color:red" id="cont">${sessionScope.user.username }</span>
		        </div>
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
            <li><a href="about.jsp">关于</a></li>
    	
        </ul>
     </div>
   </div>
</nav>
<div class="courses_banner"><!--bacgroung-size设为cover  把背景图像扩展至足够大，以使背景图像完全覆盖背景区域。-->
    <div class="container">

        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="index.html">首页</a></li>
                <li class="current-page">教师详情</li>
            </ul>
        </div>
    </div>
</div>
<!--pre teacher content strat -->
<div class="courses_box1">
    <div class="container">
        <c:forEach var="t" items="${requestScope.teacher}">
        <div class="col-md-4">
            <img src="images/${t.timgsrc }" class="img-responsive" alt=""/>
        </div>
        <div class="col-md-8 about_left">
        <input type="hidden" value="${t.tid }" id="tid">
            <div class="col-md-12 col-bg-12"><h1>${t.tname}</h1></div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-smile-o"> </i></span>${t.sex}</div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-magic"> </i></span>${t.edulevel }</div>

            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-bookmark-o"> </i></span>${t.college } </div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-trophy"> </i></span>  四六级：${t.englishlevel }</div>




            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-list-ul"> </i></span>  可教课程：${t.course }</div>



            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-money"> </i></span>  薪水要求：一小时${t.price }</div>
            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-hand-o-right"> </i></span>  家庭住址：${t.address }</div>
            <div class="col-md-12 col=bg-12"><span ><i class="fa fa-phone"> </i></span>  ${t.phone }</div>


            <div class="col-md-12 col-bg-12">
            <p ><span ><i class="fa fa-globe"> </i></span>&nbsp;${t.experience }
                <br>
             </div>

            <br>
           
            <div class="col-md-12 col-bg-12 col-xs-12 col-sm-12 button_add" id="cart" >
             <input type="button" class="radial_but click_pop" value="加入购物车"  >
             
              <input type="button" class="radial_but click_pop1" value="直接预约"  >
            </div>
          
          
          
           <!--弹出框-->
           <!-- 加入购物车 -->
			 <div class="pop col-md-6">
			    <div class="">
			    <label>协议月份：</label>
			    <input type="text" id="months">
			    </div>
			    
			    <button type="button" class="close" ><span ><i class="fa fa-times-circle"></i></span></button>
			    <input type="button" value="确定" class="ok addcar" id="addToCart" /> 
			    
			 </div>
			 
			<!-- 直接下单 -->
  			 <div class="pop1 col-md-6">
			    <div class="">
			    <label>协议月份：</label>
			    <input type="text" name="month" id="month">
			    </div>
			    
			    <button type="button" class="close close1" ><span ><i class="fa fa-times-circle"></i></span></button>
			    <a href="buy?method=comBuy&tid=${t.tid }" id="comBuy" class="ok1">确定</a>
			    
			 </div>
            <script type="text/javascript">
            	$("#comBuy").click(function(){
            		var tid = $("#tid").val()
            		var month = $("#month").val();
            		alert(tid+month);
            		$(this).attr("href","buy?method=comBuy&tid="+tid+"&months="+month);
            		alert($(this).attr("href"));
            	})
            </script>
 
       </div>
     </c:forEach>
           
           
           
           <!-- 右侧购物车 -->
             <div class="sidecart"><img id="end" src="images/car.png"/><span>购物车</span></div>
             <div id="msg">已成功加入购物车！</div>
        </div>
        <div class="clearfix"> </div>
    </div>



<div class="footer1">
    <div class="container">

        <div class="clearfix"> </div>
        <div class="copy">
            <p>Copyright &copy; 2016.OTO教育网 </p>
        </div>
    </div>
</div>
<script src="js/jquery.countdown.js"></script>
<script src="js/script.js"></script>
</body>
</html>	