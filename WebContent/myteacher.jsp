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
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
	    if($(window).scrollTop() == $(document).height() - $(window).height()){
	        alert("滚动到底部啦！");
	    }
	});
	$.ajax({//被过滤器过滤掉了
		type: "post",
		url: "MyTeacher",
		dataType: "json",
		success: function(data){
			console.log(data);
			alert(data[0].product[1].price);
			
			for(var i=0; i<data.length; i++){
				$(".order_head").after("  <div class='order_body col-xs-12 col-sm-12 col-md-10 col-lg-10'><table border='1' class='mytable col-sm-12 col-xs-12'>"+
	             "<thead><tr><td colspan='2'><i class='fa fa-calendar'></i>&nbsp; 2016-12-09</td><td colspan='2'>订单号："+data[i].oid+" </td><td><i class='fa fa-trash-o'></i></td>"+
	                "</tr></thead><tbody><tr><td colspan='3' class='col-sm-8'><table class='pertable col-sm-12'>");
				for(var j=0; j<data[0].product.length; j++){
					$(".pertable").append( "<tr><td class='col-sm-4'>"+data[i].product[j].imgsrc+"</td><td class='col-sm-6'><span>"+data[i].product[j].tname+"老师   &nbsp; &nbsp;"+data[i].product[j].sex+"&nbsp; &nbsp;"+data[i].product[j].edulevel+
							"</span> <span>"+data[i].product[j].college+""+data[i].product[j].course+"</span> </td><td class='col-sm-1 tprice'>"+data[i].product[j].price+"</td><td class='col-sm-1 tnum'>"+data[i].product[j].month+"</td></tr>")
				}
				$(".order_body").append("</table></td><td class='col-sm-2 ttotal'><i class='fa fa-money'></i>&nbsp;&nbsp;<span>3000</span></td><td class='col-sm-2'><i class='fa fa-list'>&nbsp; &nbsp;订单详情</i></td></tr></tbody></table>")
			}
		},
		error: function(XMLHttpRequest, textStatus, errorThrown){
			alert("error");
		}
	});
})
</script>
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
                <li class="current-page">我的订单</li>
            </ul>
        </div>
    </div>
</div>
 
    <!-- //banner -->
    
    <div class="sidebar col-lg-2 col-md-2 col-sm-12">
        <ul class="Breadcrumb">
           <li><h3>我的交易</h3></li>
           <li ><a class="current" href="#">我的老师&nbsp;&nbsp;</a></li>
           <li><a href="#">个人设置&nbsp;&nbsp;</a></li>
           <li><a href="#">我的购物车</a></li>
       </ul>
    </div>
    
   
    
  
   <div class="container" >
      <div class="allorder_head col-lg-10 col-md-10 col-sm-12 col-xs-12">
      <span class="block_order">所有订单</span>
      </div>
      
       
       <div class="order_head  col-xs-12 col-sm-12 col-md-10 col-lg-10">
          <ul>
            <li class="col-md-4 col-xs-4">老师</li>
          	<li class="col-md-2 col-xs-2">价格</li>
          	<li class="col-md-2 col-xs-2">月份</li>
          	<li class="col-md-2 col-xs-2">成交额</li>
          	<li class="col-md-2 col-xs-2">详情</li>
          	 <li></li>
          	 
          </ul>
         
        </div>
        <!-- 外循环 -->
        <div class="order_body col-xs-12 col-sm-12 col-md-10 col-lg-10">
           <table border="1" class="mytable col-sm-12 col-xs-12">
              <thead>
                　　　　　　　　　　<tr>
                <td colspan="2"><i class="fa fa-calendar"></i>&nbsp; 2016-12-09</td>
                
                <td colspan="2">订单号：1578737651</td>
                
                <td><i class="fa fa-trash-o"></i></td>
                </tr>
              </thead>
      		  <tbody>
      		  <tr>
      		  <td colspan="3" class="col-sm-8">
      		      <table class="pertable col-sm-12">
      		          <!-- 内循环 -->
      		         <tr>
      		         <td class="col-sm-4"><img src="images/t15.jpg" class="img-responsive" alt="" /></td>
      		         <td class="col-sm-6">
      		         <span>王俊老师   &nbsp; &nbsp;男&nbsp; &nbsp;硕士</span>
      		         <span>南京大学，教语文，数学，英语</span>
					 </td>
      		         <td class="col-sm-1 tprice">1000</td>
      		         <td class="col-sm-1 tnum">3</td>
      		         </tr>
      		         
      		        <tr>
      		         <td class="col-sm-4"><img src="images/t13.jpg" class="img-responsive" alt="" /></td>
      		         <td class="col-sm-6">
      		         <span>王俊老师   &nbsp; &nbsp;男&nbsp; &nbsp;硕士</span>
      		         <span>南京大学，教语文，数学，英语</span>
					 </td>
      		         <td class="col-sm-1 tprice">2500</td>
      		         <td class="col-sm-1 tnum">1</td>
      		         </tr>
      		         
      		      </table>
      		  
      		  </td>
      		  <td class="col-sm-2 ttotal"><i class="fa fa-money"></i>&nbsp;&nbsp;<span>3000</span></td>
      		  <td class="col-sm-2"><i class="fa fa-list">&nbsp; &nbsp;订单详情</i></td>
      		  </tr>
      		  </tbody>
           </table>
           
           
           
           <table border="1" class="mytable col-sm-12 col-xs-12">
              <thead>
                　　　　　　　　　　<tr>
                <td colspan="2"><i class="fa fa-calendar"></i>&nbsp; 2016-12-19</td>
                
                <td colspan="2">订单号：15987687991</td>
                
                <td><i class="fa fa-trash-o"></i></td>
                </tr>
              </thead>
      		  <tbody>
      		  <tr>
      		  <td colspan="3" class="col-sm-8">
      		      <table class="pertable col-sm-12">
      		         <tr>
      		         <td class="col-sm-4"><img src="images/t14.jpg" class="img-responsive" alt="" /></td>
      		         <td class="col-sm-6">
      		         <span>王俊老师   &nbsp; &nbsp;男&nbsp; &nbsp;硕士</span>
      		         <span>南京大学，教语文，数学，英语</span>
					 </td>
      		         <td class="col-sm-1 tprice">1000</td>
      		         <td class="col-sm-1 tnum">3</td>
      		         </tr>
      		         
      		      
      		         
      		      </table>
      		  
      		  </td>
      		  <td class="col-sm-2 ttotal"><i class="fa fa-money"></i>&nbsp;&nbsp;<span>3000</span></td>
      		  <td class="col-sm-2"><i class="fa fa-list">&nbsp; &nbsp;订单详情</i></td>
      		  </tr>
      		  </tbody>
           </table>
        
        
         <table border="1" class="mytable col-sm-12 col-xs-12">
              <thead>
                　　　　　　　　　　<tr>
                <td colspan="2"><i class="fa fa-calendar"></i>&nbsp; 2016-12-19</td>
                
                <td colspan="2">订单号：15987687991</td>
                
                <td><i class="fa fa-trash-o"></i></td>
                </tr>
              </thead>
      		  <tbody>
      		  <tr>
      		  <td colspan="3" class="col-sm-8">
      		      <table class="pertable col-sm-12">
      		         <tr>
      		         <td class="col-sm-4"><img src="images/t14.jpg" class="img-responsive" alt="" /></td>
      		         <td class="col-sm-6">
      		         <span>王俊老师   &nbsp; &nbsp;男&nbsp; &nbsp;硕士</span>
      		         <span>南京大学，教语文，数学，英语</span>
					 </td>
      		         <td class="col-sm-1 tprice">800</td>
      		         <td class="col-sm-1 tnum">5</td>
      		         </tr>
      		         
      		      
      		         
      		      </table>
      		  
      		  </td>
      		  <td class="col-sm-2 ttotal"><i class="fa fa-money"></i>&nbsp;&nbsp;<span>3000</span></td>
      		  <td class="col-sm-2"><i class="fa fa-list">&nbsp; &nbsp;订单详情</i></td>
      		  </tr>
      		  </tbody>
           </table>
        
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


<%--<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.7.min.js"></script>
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
	    if($(window).scrollTop() == $(document).height() - $(window).height()){
	        alert("滚动到底部啦！");
	    }
	});
	$.ajax({//被过滤器过滤掉了
		type: "post",
		url: "MyTeacher",
		dataType: "json",
		success: function(data){
			console.log(data);
			alert(data[0].product[1].price);
			
			for(var i=0; i<data.length; i++){
				$("#data").append(data[i].address+"  "+data[i].money+"  "+data[i].oid+"  "+data[i].phone+"  "+data[i].method+"  "+data[i].uid);
				for(var j=0; j<data[0].product.length; j++){
					$("#data").append(data[i].product[j].address+"  "+data[i].product[j].imgsrc+"  "+data[i].product[j].month+"  "+data[i].product[j].phone+"  "+data[i].product[j].tname);
				}	
			}
		},
		error: function(XMLHttpRequest, textStatus, errorThrown){
			alert("error");
		}
	});
})
</script>
</head>
<body>
	<div id="data"></div>
</body>
</html>

 --%>
 