<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>教员库</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/mine.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<link href='https://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<script src="js/jquery-1.7.min.js"></script> 
<script type="text/javascript">
	$(function(){
		$(".radial_but").click(function(){
			var tid = $(this).attr("name");
			alert(tid);
			$.ajax({
				type: "post",
				url: "MTeacherDel",
				data: {"tid": tid},
				success: function(data){
					alert(data);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
		
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
					$("#contain").empty();
					for(var i=0; i<data.length; i++){
						$("#contain").append("<div class='blog_box1'>"+
				        "<div class='col-lg-9 col-md-9' >"+
				           "<div class='col-lg-4 col-md-4 col-sm-12 col-xs-12 event-img pre_teacher' >"+
				                "<img src='images/"+data[i].timgsrc+"' class='img-responsive'/>"+
				               "<div class='over-image'></div></div>"+
				            
				            "<div class='col-lg-8 col-md-8 col-sm-12 col-xs-12' style=''>"+
				            "<div>"+data[i].tname+" &nbsp;&nbsp;("+data[i].sex+")</div>"+
				            "<div>"+data[i].college+"</div>"+
				            "<div>经历："+data[i].experience+"。 </div>"+
				            "<div>教授课程："+data[i].course+"。</div>"+
				           "</div></div>"+
				        "<div class='col-lg-3 col-md-3 col-sm-12 col-xs-12'>"+
				        "<ul class='allteacher_btn'>"+
				          "<li style='padding:10px 0;''> <a href='TeacherContent?tid="+data[i].tid+"' class='radial_but'><i class='fa fa-file-o'></i><span>&nbsp;&nbsp;&nbsp;查看详情&nbsp;&nbsp;</span></a>"+
				          "<li style='padding:10px 0;'><input type='button' class='radial_but' value='加入购物车'></span></button>");				
						}
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
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
                <li class="current-page">所有教员</li>
            </ul>
        </div>
    </div>
</div>
 <a href="addTeacher.jsp">增加教师</a>
    <!-- //banner -->
    <!-- search area -->
    <div class="search_area">
       <div class="container">
		 <div class="col-sm-12 dropdown-buttons">   
			<div class="col-sm-2 dropdown-button">           			
    		   <div class="section_1">
				 <select id="sex" onChange="change_country(this.value)" class="frm-field required">
				    <option value="">性别不限</option>         
					<option>男</option>
					<option>女</option>
				 </select>
			  </div>
			</div>
    	   <div class="col-sm-2 dropdown-button">           			
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
		     <div class="col-sm-2 dropdown-button">
			  <div class="section_1">
				 <select id="course" onChange="change_country(this.value)" class="frm-field required">
					<option value="">课程不限</option>
					<option>语文</option>         
					<option>数学</option>
					<option>英语</option>
				 </select>
			  </div>
			 </div>
			  <div class="col-sm-2 dropdown-button">
			  <div class="section_1">
				 <select id="country" onChange="change_country(this.value)" class="frm-field required">
					<option value="null">所在区域</option>
					<option>南京</option>         
					<option>上海</option>
					<option>北京</option>
					<option>杭州</option>
					<option>南通</option>
					<option>无锡</option>
				 </select>
			  </div>
			 </div>
			  <div class="col-sm-1  button_search">
		   	     <input type="button" value="搜索" class="search" id="likesearch">
			 </div>
			 
			  <div class="col-sm-1 button_search ">
				 <form>
		   	     <input type="button" value="所有">
		   	     </form>
			 </div>
			 <div class="clearfix"> </div>
		  </div> 
	     </div>
     </div>
    
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
    <div class="div_teacher"><span class="block_teacher">全部教员</span></div>
    </div>
<!--all teacher list start -->
    <div class="features" >
	   <div class="container" id="contain">
        <div class="blog_box1">
        <div class="col-lg-9 col-md-9" >
           <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 event-img pre_teacher" >
                <img src="images/t15.jpg" class="img-responsive" alt=""/>
               <div class="over-image"></div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" style="">
            <div>甜丫丫老师 &nbsp;&nbsp;(女)</div>
            <div>东南大学 硕士 </div>
            <div>经历：我是一名在职英语教师，教学得到学生认可是我最大的荣誉。我曾在莫斯科和美国加州工作，精英语，通俄语。出生于中医世家，从小习书法，练太级拳，会多门技艺。我总结出一套独特的教学方法:1.复杂语法简单化 2.如何解决没有环境的江南听力和口语训练法。我的宗旨：教书重要，育人更重要！
                                    我坚信:每个孩子都能学好，每个孩子都有自己的特点，只是缺乏正确、专业的引导和自身的努力。很荣幸多年的教学得到学生和家长的认可，我会更加努力。 </div>
            <div>教授课程：托福，小学英语,初高中英语,新概念英语,俄语,书法,武术。</div>
           </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <ul class="allteacher_btn">
          <li style="padding:10px 0;"> <a href="#" class="radial_but "><i class="fa fa-file-o"></i><span>&nbsp;&nbsp;&nbsp;查看详情&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
          <li><a href="#" class="radial_but "><i class="fa fa-shopping-cart"></i><span>&nbsp;&nbsp;加入购物车</span></a>
         </ul>
        </div>
       </div>
       <div class="col-lg-12 col-md-12 pre_br" ></div>
       <div class="row" style="height:10px;"></div>
       <div class="blog_box1" >
       <form action="buy" id="form" method="post">
       <!-- --><c:forEach var="t" items="${requestScope.mallteacher}">
        <input type="hidden" name="flag" value="${t.tid}">
         <div class="col-lg-9 col-md-9">
           <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 event-img pre_teacher">
                <img src="images/${t.timgsrc}" class="img-responsive" alt=""/>
               <div class="over-image"></div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" style="">
            <div>${t.tname}老师 &nbsp;&nbsp;(${t.sex})</div>
            <div>${t.college} ${t.edulevel} </div>
            <div>${t.experience }</div>
            <div>${t.course}</div>
           </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <ul style="list-style:none;margin:30px 0;">
        <li> <a href="mTeacherModify.jsp?tid=${t.tid}"><i class="fa fa-file-o"></i><span>&nbsp;&nbsp;修改教师${t.tid}&nbsp;&nbsp;</span></a>
          <li style="padding:10px 0;"><input type="button" class="radial_but" name="${t.tid}" value="&nbsp;删除教师&nbsp;"/>
          
         </ul>
        </div>
        </c:forEach>
        </form>
       </div>
        
        
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
       
