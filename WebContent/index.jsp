<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
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
<script>
	$(function(){
		
		$.ajax({
			type: "post",
			url: "IndexLoad",
			dataType: "json",
			success: function(data){
				console.log(data);
				for(var i=0; i<data.length; i++){
					$(".grid_2").append("<div class='col-md-4 portfolio-left'><div class='portfolio-img event-img imgindex'><img src='images/"+data[i].timgsrc+
							"' class='img-responsive' alt=''/><div class='over-image'></div> </div><div class='portfolio-description'><h4><a href='#'>"+data[i].tname+
							"</a></h4><p>"+data[i].experience+
							"</p><span><a href='#'>"+data[i].course+
							"</a><a href='#'>"+data[i].college+
							"</a><a>"+data[i].sex+
							"</a></span><a href='TeacherContent?tid="+data[i].tid+"'><span><i class='fa fa-chain chain_1'></i>详情</span></a></div><div class='clearfix'></div></div>");
					 if((i+1)%3==0){
							//alert(i)
							$(".grid_2").append("<div class='col-md-12 col-lg-12' style='height:50px;'></div>")
						}
				}
			},
			errror: function(XMLHttpRequest, textStatus, errorThrown){
				alert("error");
			}
		});
		
		$("#likesearch").click(function(){
			var sex = $("#sex").val();
			var address = $("#address").val();
			var edulevel = $("#edulevel").val();
			var course = $("#course").val();
			
			$.ajax({
				type: "post",
				url: "TeacherSearch",
				data:{
					  "sex":sex,
					  "address":address,
					  "edulevel":edulevel,
					  "course":course
					  },
				dataType: "json",
				success: function(data){
					console.log(data);
					$(".grid_2").empty();
					for(var i=0; i<data.length; i++){
						$(".grid_2").append("<div class='col-md-4 portfolio-left'><div class='portfolio-img event-img'><img src='images/"+data[i].timgsrc+
								"' class='img-responsive' alt=''/><div class='over-image'></div> </div><div class='portfolio-description'><h4><a href='#'>"+data[i].tname+
								"</a></h4><p>"+data[i].experience+
								"</p><span><a href='#'>"+data[i].course+
								"</a><a href='#'>"+data[i].college+
								"</a><a>"+data[i].sex+
								"</a></span><a href='TeacherContent?tid="+data[i].tid+"'><span><i class='fa fa-chain chain_1'></i>详情</span></a></div><div class='clearfix'></div></div>");					}
				},
				errror: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
	})
	
	$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
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
            <a class="navbar-brand" href="index.html">OTO家教网</a>
           
        </div>

	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav ">

				<li class="dropdown">
		            <a href="#"><i class="fa fa-list"></i><span>我的老师</span></a>
		            
		        </li>

				<li class="dropdown">
		            <a href="ListCart"><i href="list" class="fa fa-shopping-cart"></i><span>购物车</span></a>
		            
		        </li>
		        <li class="dropdown toggle1">
		            <a href="login.jsp"><i class="fa fa-user"></i><span>登录</span></a>     
		        </li>
		         <li class="dropdown toggle1">
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
		       
		        <li><div id="loginid" style="color:#fff;float:right;margin:20px 0 0 20px;">你好，<span style="color:red" id="cont">${sessionScope.user.username }</span></div></li>
		       <li class="dropdown toggleout">
		            <a href="login.jsp"><i class="fa fa-sign-out"></i><span><a href="out.jsp">退出</a></span></a>
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
            <li><a href="index.html">首页</a></li>
            <li><a href="about.html">关于</a></li>
    		
        </ul>
         
     </div>
   </div>
</nav>
<!-- 导航部分结束 -->
	<div class="banner">
			<!-- banner Slider starts Here -->
					<script src="js/responsiveslides.min.js"></script>
					
					<!--//End-slider-script -->
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="banner-bg">
									<div class="container">
										<div class="banner-info">
											<h3>第一步：<span>知识的朋友</span></h3>
											<p>Inspired by Brasil’s bold colors and matching up to football’s on-pitch
												playmakers, these kicks are ready to stand out.
											</p>
											</div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-bg banner-img2">
									<div class="container">
										<div class="banner-info">
											<h3>Stay in touch<span>Lorem Ipsum</span></h3>
											<p>Inspired by bold colors and matching up to football’s on-pitch
												playmakers, these kicks are ready to stand out.
											</p>
											</div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-bg banner-img">
									<div class="container">
										<div class="banner-info">
											<h3>therefore always<span>looks reasonable</span></h3>
											<p>Inspired by Brasil’s bold colors and matching up to football’s on-pitch
												playmakers, these Brasil’s kicks are ready to stand out.
											</p>
											</div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-bg">
									<div class="container">
										<div class="banner-info">
											<h3>dolore magna<span>eaque ipsa</span></h3>
											<p>Inspired by bold colors and matching up to football’s on-pitch
												playmakers, these kicks are ready to stand out.
											</p>
											</div>
									</div>
								</div>
							</li>
							<li>
								<div class="banner-bg banner-img2">
									<div class="container">
										<div class="banner-info">
											<h3> trivial example,<span>who chooses</span></h3>
											<p>Inspired by Brasil’s bold colors and matching up to football’s on-pitch
												playmaskers, these kicks Brasil’s are ready to stand out.
											</p>
											</div>
									</div>
								</div>
							</li>
							
						</ul>
		          </div>
	</div>
	<!--条件搜索-->
	<div class="details">
       <div class="container">
		 <div class="col-sm-10 dropdown-buttons">   
			<div class="col-sm-3 dropdown-button">           			
    		   <div class="section_1">
				 <select id="sex" onChange="change_country(this.value)" class="frm-field required">
				    <option value="">性别不限</option>         
					<option>男</option>
					<option>女</option>
				 </select>
			  </div>
			</div>
			<div class="col-sm-3 dropdown-button">           			
    		  <div class="input-group">
                <input class="form-control has-dark-background" name="slider-name" id="address" placeholder="南京" type="text" required="">
              </div>
			</div>
    	   <div class="col-sm-3 dropdown-button">           			
    		  <div class="section_1">
				 <select id="edulevel" onChange="change_country(this.value)" class="frm-field required">
					<option value="">学历不限</option>
					<option>硕士博士</option>         
					<option>本科</option>
					<option>大专</option>
					<option>其他</option>
				 </select>
			  </div>
			</div>
		     <div class="col-sm-3 dropdown-button">
			  <div class="section_1">
				 <select id="course" onChange="change_country(this.value)" class="frm-field required">
					<option value="">课程不限</option>
					<option>语文</option>         
					<option>数学</option>
					<option>英语</option>
				 </select>
			  </div>
			 </div>
			 <div class="clearfix"> </div>
		  </div> 
		  <div class="col-sm-2 submit_button"> 
		   	  <form class="button_search">
		   	     <input type="button"  value="搜索" id="likesearch"/>
		   	  </form>
		   </div>
		   <div class="clearfix"> </div>
	     </div>
     </div>
   
   <div class="bottom_content">  
   	 <h3>老师</h3>
   	  <div class="nav3d col-md-12 col-md-offset-10">
   	     <div class="bg2">
   	     <a href="MoreTeacher">More&nbsp;<i class="fa fa-caret-right"></i></a>
   	     <a href="MoreTeacher">更多&nbsp;<i class="fa fa-caret-right"></i></a>
   	   </div>
   	  </div>
     <div class="grid_2">
     </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    
 
     	
   <div class="bottom">
     <div class="container">
        <div class="col-md-4 grid_4">
    		   <h3>关于我们</h3>	
    		   <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.."</p>
    		      <!-- <ul class="social-nav icons_2 clearfix">
    		                          <li><a href="#" class="twitter"><i class="fa fa-weibo"></i></a></li>
    		                          <li><a href="#" class="facebook"> <i class="fa fa-github"></i></a></li>
    		                          <li><a href="#" class="google-plus"><i class="fa fa-github"></i></a></li>
    		                       </ul> -->
    		</div>
    		<div class="col-md-4 grid_4">
    		   <h3>Quick Links</h3>
    			<ul class="footer_list">
    				<li><a href="#">-  PRIOR LEARNING ASSESSMENT </a></li>
    				<li><a href="#">-  INTERNATIONAL STUDENTS</a></li>
    				<li><a href="#">-  CAREER OPPORTUNITIES</a></li>
    				<li><a href="#">-   NEW STUDENT ORIENTATION</a></li>
    				<li><a href="#">-   NEW CLASSROOM TECHNOLOGY</a></li>
    			</ul>
    		</div>
    		<div class="col-md-4 grid_4">
    		   <h3>Contact Us</h3>
    			<address>
                    <strong>Contrary to popular belief</strong>
                    <br>
                    <span>4877 It is a long established</span>
                    <br><br>
                    <span>Contrary to popular , 15089</span>
                    <br>
                    <abbr>Telephone : </abbr> +1 (734) 123-4567
                    <br>
                    <abbr>Email : </abbr> <a href="mailto@example.com">info(at)Learn.com</a>
               </address>
    		</div>
    		<div class="clearfix"> </div>
     </div>
   </div>
   <div class="clearfix"> </div>
   <div class="footer1">
    <div class="container">

        <div class="clearfix"> </div>
        <div class="copy">
            <p>Copyright &copy; 2016.OTO教育网 </p>
        </div>
    </div>
</div>
     <!-- Scroll To Top --> 
       <a href="#" id="scrollup"><i class="fa fa-arrow-up"></i></a>
<script src="js/jquery.countdown.js"></script>
<script src="js/script.js"></script>


</body>
</html>	