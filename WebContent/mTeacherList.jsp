<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - User list</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
  
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/index.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!-- lato font -->
    <link href='http://fonts.useso.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="js/jquery-1.7.min.js"></script>

<script type="text/javascript">
	$(function(){
		$(".tdelete").click(function(){
			 $(this).parent().parent().parent().remove()
			var tid = $(this).find(".tdel").attr("name");
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

    <!-- navbar -->
    <div class="navbar navbar-inverse" >
        <div class="navbar-inner" >
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="index.jsp">OTO家教网</a>

            <ul class="nav pull-right">                
                <li class="hidden-phone">
                    <input class="search" type="text" />
                </li>
               
                <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-envelope-alt" style="color:#fefefe"></i>
                    </a>
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign" ></i></a>
                            <div class="messages">
                                <a href="#" class="item">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <img src="img/contact-img2.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 26 min.</span>
                                </a>
                                <a href="#" class="item last">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 48 min.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all messages</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle hidden-phone" data-toggle="dropdown">
                        Your account
                        <b class="caret" style="color:#fefefe"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="personal-info.html">Personal info</a></li>
                        <li><a href="#">Account settings</a></li>
                        <li><a href="#">Billing</a></li>
                        <li><a href="#">Export your data</a></li>
                        <li><a href="#">Send feedback</a></li>
                    </ul>
                </li>
                <li class="settings hidden-phone">
                    <a href="personal-info.html" role="button">
                        <i class="icon-cog" style="color:#fefefe"></i>
                    </a>
                </li>
                <li class="settings hidden-phone">
                    <a href="out.jsp" role="button">
                        <i class="icon-share-alt" style="color:#fefefe"></i>
                    </a>
                </li>
            </ul>            
        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
     <ul id="dashboard-menu">
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="mManageIndex.jsp">
                    <i class="icon-home"></i>
                    <span>Home</span>
                </a>
            </li>            
           
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>Users</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="MUserList">User list</a></li>

                    <li><a href="mManageIndex.jsp">online users</a></li>
                    <li><a href="addUser.jsp">New user form</a></li>

                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>Teacher</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                   <li><a href="MTeacherList">Teachers List</a></li>
                    <li><a href="addTeacher.jsp">New Teachers form</a></li>
                </ul>
            </li>
           
           
           
            <li>
                <a href="#">
                    <i class="icon-cog"></i>
                    <span>My Info</span>
                </a>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>Extras</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="login.jsp">Login in</a></li>
                    <li><a href="reg.jsp">Sign in</a></li>
                    <li><a href="out.jsp">Exit</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->

        <div class="container-fluid">
            <div id="pad-wrapper">
                <div class="table-products ">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>ONLINE USERS</h4>
                        </div>
                    </div>
 					<!-- info -->
		            <div class="alert alert-success addinfo span6 offset5" style="display:none;" >
		            
		                 <i class="icon-ok-sign"></i><div id="info">${message }</div>
		                                
		            </div>
                  <!-- info end -->
                    <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <a href="addTeacher.jsp" class="btn-flat success pull-right">
                            <span>&#43;</span>
                            Add Teacher
                        </a>
                            <input type="text" class="search" />
                        </div>
                    </div>

                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th class="span3">
                                    <input type="checkbox" />
                                    photo
                                </th>
                                <th class="span3">
                                    <span class="line"></span>id
                                </th>
                                <th class="span3">
                                    <span class="line"></span>name
                                </th>
                                <th class="span3">
                                    <span class="line"></span>Status
                                </th>

                            </tr>
                            </thead>
                            <tbody>
                           
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                        <img src="img/contact-img.png" class="display" />
                                        
                                    </td>
                                    <td class="description">
                                       12345675
                                    </td>
                                     <td class="description">
                                      <a href="#">tom </a>
                                    </td>
                                    <td>
                                         <ul class="actions">
                                        <li class="last">
                                        <i class="icon-pencil icon-2x" >  <a href="mTeacherModify.jsp?tid=${t.tid}"></a></i>
                                       
                                        </li>
                                       
                                        <li class="last tdelete">
                                        <i class=" icon-remove  icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="tdel" value="删除用户" name="2" ></div>
                                        </li>
                                        </ul>
                                    </td>
                                </tr>
                            <c:forEach var="t" items="${requestScope.mallteacher}">
                            <tr class="first">
                               <td><input type="checkbox" value="${t.tid }" /> <img src="images/${t.timgsrc}" class="display" style="width:50px;height:50px;"/></td>
                                <td>
                                    ${t.tid}
                                </td>
                                <td class="description">
                                   ${t.tname}
                                </td>
                                
                                <td>

                                    <ul class="actions">
                                        <li class="last">
                                        <a href="mTeacherModify.jsp?tid=${t.tid}" style="text-decoration: none;">
                                         <i class="icon-pencil icon-2x" ></i></a>
                                       </li>
                                      
                                        <li class="last delicon">
                                        <i class="icon-remove tdelete icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="tdel" value="删除用户"  name="${t.tid}"></div>
                                        </li>
                                       <!-- <input type="button" class="del" value="删除用户" name="${u.uid}">
                                        <input type="button" class="upgrade" value="升级用户为管理员" name="${u.uid}">
                                        <input type="button" value="禁止用户访问" class="forbid" name="${u.uid}">-->
                                    </ul>
                                </td>
                            </tr>

                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="pagination">
                        <ul>
                            <li><a href="#">&#8249;</a></li>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">&#8250;</a></li>
                        </ul>
                    </div>
                   
                </div>

            </div>
        </div>

    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

</body>
</html>









<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - User list</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/index.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!-- lato font -->
    <link href='http://fonts.useso.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

    <!-- navbar -->
    <div class="navbar navbar-inverse" >
        <div class="navbar-inner" >
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="index.html">OTO家教网</a>

            <ul class="nav pull-right">                
                <li class="hidden-phone">
                    <input class="search" type="text" />
                </li>
               
                <li class="notification-dropdown hidden-phone">
                    <a href="#" class="trigger">
                        <i class="icon-envelope-alt" style="color:#fefefe"></i>
                    </a>
                    <div class="pop-dialog">
                        <div class="pointer right">
                            <div class="arrow"></div>
                            <div class="arrow_border"></div>
                        </div>
                        <div class="body">
                            <a href="#" class="close-icon"><i class="icon-remove-sign" ></i></a>
                            <div class="messages">
                                <a href="#" class="item">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 13 min.</span>
                                </a>
                                <a href="#" class="item">
                                    <img src="img/contact-img2.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 26 min.</span>
                                </a>
                                <a href="#" class="item last">
                                    <img src="img/contact-img.png" class="display" />
                                    <div class="name">Alejandra Galván</div>
                                    <div class="msg">
                                        There are many variations of available, but the majority have suffered alterations.
                                    </div>
                                    <span class="time"><i class="icon-time"></i> 48 min.</span>
                                </a>
                                <div class="footer">
                                    <a href="#" class="logout">View all messages</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle hidden-phone" data-toggle="dropdown">
                        Your account
                        <b class="caret" style="color:#fefefe"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="personal-info.html">Personal info</a></li>
                        <li><a href="#">Account settings</a></li>
                        <li><a href="#">Billing</a></li>
                        <li><a href="#">Export your data</a></li>
                        <li><a href="#">Send feedback</a></li>
                    </ul>
                </li>
                <li class="settings hidden-phone">
                    <a href="personal-info.html" role="button">
                        <i class="icon-cog" style="color:#fefefe"></i>
                    </a>
                </li>
                <li class="settings hidden-phone">
                    <a href="signin.html" role="button">
                        <i class="icon-share-alt" style="color:#fefefe"></i>
                    </a>
                </li>
            </ul>            
        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>                
                <a href="mManageIndex.jsp">
                    <i class="icon-home"></i>
                    <span>Home</span>
                </a>
            </li>            
           
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>Users</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="active submenu">
                    <li><a href="MUserList" class="active">User list</a></li>
                    <li><a href="mManageIndex.jsp">online users</a></li>
                    <li><a href="new-user.html">New user form</a></li>
                 </ul>
            </li>
           
             <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>Teacher</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="user-list.html">add</a></li>
                    <li><a href="new-user.html">query</a></li>
                    <li><a href="user-profile.html">delete</a></li>
					 <li><a href="user-profile.html">update</a></li>
                </ul>
            </li>
          
            <li>
                <a href="personal-info.html">
                    <i class="icon-cog"></i>
                    <span>My Info</span>
                </a>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>Extras</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                  
                   
                    <li><a href="signin.html">Sign in</a></li>
                    <li><a href="signup.html">Sign up</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- end sidebar -->
    

	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->

        <div class="container-fluid">
            <div id="pad-wrapper">
                <div class="table-products ">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>ONLINE USERS</h4>
                        </div>
                    </div>

                    <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <a href="addTeacher.jsp" class="btn-flat success pull-right">
                            <span>&#43;</span>
                            Add Teacher
                        </a>
                            <input type="text" class="search" />
                        </div>
                    </div>

                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th class="span3">
                                    <input type="checkbox" />
                                    photo
                                </th>
                                <th class="span3">
                                    <span class="line"></span>id
                                </th>
                                <th class="span3">
                                    <span class="line"></span>name
                                </th>
                                <th class="span3">
                                    <span class="line"></span>Status
                                </th>

                            </tr>
                            </thead>
                            <tbody>
                           
                                <tr>
                                    <td>
                                        <input type="checkbox" />
                                        <img src="img/contact-img.png" class="display" />
                                        
                                    </td>
                                    <td class="description">
                                       12345675
                                    </td>
                                     <td class="description">
                                      <a href="#">tom </a>
                                    </td>
                                    <td>
                                         <ul class="actions">
                                        <li class="last">
                                        <i class="icon-pencil icon-2x" >  <a href="mTeacherModify.jsp?tid=${t.tid}"></a></i>
                                       
                                        </li>
                                       
                                        <li class="last">
                                        <i class="icon-remove icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="del" value="删除用户" name="2" ></div>
                                        </li>
                                        </ul>
                                    </td>
                                </tr>
                            <c:forEach var="t" items="${requestScope.mallteacher}">
                            <tr class="first">
                               <td><input type="checkbox" /> <img src="src="images/${t.timgsrc}" class="display" /></td>
                                <td>
                                    <a href="#">${t.tid} </a>
                                </td>
                                <td class="description">
                                   ${t.tname}
                                </td>
                                
                                <td>

                                    <ul class="actions">
                                        <li class="last">
                                         <i class="icon-pencil icon-2x" >  <a href="mTeacherModify.jsp?tid=${t.tid}"></a></i>
                                       
                                      
                                          
                                       
                                        </li>
                                      
                                        <li class="last delicon">
                                        <i class="icon-remove icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="del" value="删除用户" name="2" name="${t.tid}"></div>
                                        </li>
                                       <!-- <input type="button" class="del" value="删除用户" name="${u.uid}">
                                        <input type="button" class="upgrade" value="升级用户为管理员" name="${u.uid}">
                                        <input type="button" value="禁止用户访问" class="forbid" name="${u.uid}">-->
                                    </ul>
                                </td>
                            </tr>

                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="pagination">
                        <ul>
                            <li><a href="#">&#8249;</a></li>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">&#8250;</a></li>
                        </ul>
                    </div>

                </div>

            </div>
        </div>

    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

</body>
</html> --%>