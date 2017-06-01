<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 
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
<script src="js/jquery-1.7.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!--字体，图标引用-->
<link href="css/font-awesome.css" rel="stylesheet"> 
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
          });
         
    })
</script>
</head>
<body >
<!--遮罩层-->
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
            <a class="navbar-brand" href="index.jsp">OTO家教网</a>
        </div>

	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav ">

				<li class="dropdown">
		            <a href="#"><i class="fa fa-list"></i><span>我的老师</span></a>
		            
		        </li>

				<li class="dropdown">
		            <a href="#"><i class="fa fa-shopping-cart"></i><span>购物车</span></a>
		            
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
            <li><a href="about.jsp">关于</a></li>
    		<li><a href="faculty.html">Faculty</a></li>
           <li class="last"><a href="contact.html">Contacts</a></li>
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

        <div class="col-md-4">
            <img src="images/t14.jpg" class="img-responsive" alt=""/>
        </div>
        <div class="col-md-8 about_left">
            <div class="col-md-12 col-bg-12"><h1>张军</h1></div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-smile-o"> </i></span>  男</div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-magic"> </i></span>  目前身份：在校大二学生</div>

            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-bookmark-o"> </i></span>  毕业院校：南京晓庄学院</div>
            <div class="col-md-6 col-bg-6"><span ><i class="fa fa-trophy"> </i></span>  四六级：六级</div>




            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-list-ul"> </i></span>  可教课程：语文，英语，数学,物理，化学</div>



            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-money"> </i></span>  薪水要求：一小时80</div>
            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-hand-o-right"> </i></span>  家庭住址：江苏省南京市江宁区弘景大道3601</div>
            <div class="col-md-12 col-bg-12"><span ><i class="fa fa-phone"> </i></span>  183169767256</div>



            <div class="col-md-12 col-bg-12">
            <p ><span ><i class="fa fa-globe"> </i></span>&nbsp;经历：目前主修生物，高中物理考到105（满分110），初中数学中考差2分满分，小学毕业数学是满分。
                 本人所学专业为师范类，教育教学方法丰富，而且在大学期间就从事家教工作，经验丰富
       
             </div>

           
            <div class="col-md-12 col-bg-12" style="margin-top:30px;">
               <input type="button" class="radial_but click_pop" value="加入购物车"  >
             </div>
            
             <!--弹出框-->
 <div class="pop col-md-6">
    <div class="">
    <label>协议月份：</label>
    <input type="text" id="months">
    </div>
    
    <button type="button" class="close" ><span ><i class="fa fa-times-circle"></i></span></button>
    <input type="button" value="确定" class="ok" id="addToCart"/> 
    
 </div>
        </div>


        <div class="clearfix"> </div>
    </div>
</div>
<div class="sidecart"><img id="end" src="images/car.png"/><span>购物车</span></div>
<div id="msg">已成功加入购物车！</div>
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