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
		 $(".delicon").click(function () {
             var uid = $(this).find(".del").attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserDel",
				data: {"uid": uid},
				success: function(data){
					alert(data);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
		
		
		
		
		$(".upgradeicon").click(function(){
			var uid = $(this).find(".upgrade").attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserUpGrade",
				data: {"uid": uid},
				success: function(data){
					alert(data);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
		
		$(".forbidicon").click(function(){
			var uid = $(this).find(".forbid").attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserForbid",
				data: {"uid": uid},
				success: function(data){
					alert(data);
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


            <div id="main-stats">
                <div class="row-fluid stats-row">
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number">2457</span>
                            visits
                        </div>
                        <span class="date">Today</span>
                    </div>
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number">3240</span>
                            users
                        </div>
                        <span class="date">February 2014</span>
                    </div>
                    <div class="span3 stat">
                        <div class="data">
                            <span class="number">322</span>
                            orders
                        </div>
                        <span class="date">This week</span>
                    </div>
                    <div class="span3 stat last">
                        <div class="data">
                            <span class="number">$2,340</span>
                            sales
                        </div>
                        <span class="date">last 30 days</span>
                    </div>
                </div>
            </div>
            <div id="pad-wrapper">






                <div class="table-products ">
                    <div class="row-fluid head">
                        <div class="span12">
                            <h4>ONLINE USERS</h4>
                        </div>
                    </div>

                    <div class="row-fluid filter-block">
                        <div class="pull-right">
                            <div class="ui-select">
                                <select>
                                    <option />Filter users
                                    <option />Signed last 30 days
                                    <option />Active users
                                </select>
                            </div>
                            <input type="text" class="search" />
                        </div>
                    </div>

                    <div class="row-fluid">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th class="span3">
                                    <input type="checkbox" />
                                    Name
                                </th>
                                <th class="span3">
                                    <span class="line"></span>signup time
                                </th>
                                <th class="span3">
                                    <span class="line"></span>signin time
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
                                       
                                        <a href="#">tom </a>
                                    </td>
                                    <td class="description">
                                       2018.07.08
                                    </td>
                                     <td class="description">
                                       2018.07.08
                                    </td>
                                    <td>
                                         <ul class="actions">
                                        <li class="last forbidicon">
                                        <i class="icon-minus-sign icon-2x" ></i>
                                        <div style="display:none">
                                          <input type="button" class="forbid" value="升级用户为管理员" name="2">
                                        </div>
                                        </li>
                                        <li class="last upgradeicon">
                                        <i class="icon-user icon-2x"></i>
                                        <div style="display:none">
                                          <input type="button" class="upgrade" value="升级用户为管理员" name="2">
                                        </div>
                                        </li>
                                        <li class="last delicon">
                                        <i class="icon-remove icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="del" value="删除用户" name="2" ></div>
                                        </li>
                                        </ul>
                                    </td>
                                </tr>
                            <c:forEach var="u" items="${requestScope.userlist }">
                            <tr class="first">
                                <td>
                                    <input type="checkbox" />

                                    <a href="#">${u.username } </a>
                                </td>
                                <td class="description">
                                    ${u.intime }
                                </td>
                                <td class="description">
                                    ${u.outtime}
                                </td>
                                <td>

                                    <ul class="actions">
                                        <li class="last forbidicon">
                                        <i class="icon-minus-sign icon-2x" ></i>
                                        <div style="display:none">
                                          <input type="button" class="forbid" value="升级用户为管理员" name="${u.uid}">
                                        </div>
                                        </li>
                                        <li class="last upgradeicon">
                                        <i class="icon-user icon-2x"></i>
                                        <div style="display:none">
                                          <input type="button" class="upgrade" value="升级用户为管理员" name="${u.uid}">
                                        </div>
                                        </li>
                                        <li class="last delicon">
                                        <i class="icon-remove icon-2x"></i>
                                        <div style="display:none"> 
                                        <input type="button" class="del" value="删除用户" name="2" ></div>
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
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.7.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".del").click(function(){
			var uid = $(this).attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserDel",
				data: {"uid": uid},
				success: function(data){
					alert(data);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
		
		$(".upgrade").click(function(){
			var uid = $(this).attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserUpGrade",
				data: {"uid": uid},
				success: function(data){
					alert(data);
				},
				error: function(XMLHttpRequest, textStatus, errorThrown){
					alert("error");
				}
			});
		})
		
		$(".forbid").click(function(){
			var uid = $(this).attr("name");
			alert(uid);
			$.ajax({
				type: "post",
				url: "MUserForbid",
				data: {"uid": uid},
				success: function(data){
					alert(data);
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
	<a href="addUser.jsp">增加用户</a>       
	<c:forEach var="u" items="${requestScope.userlist }">
		<span>${u.username }</span>
		<span>${u.uid }</span>
		<span>${u.level }</span>
		<span>${u.intime }</span>
		<span>${u.outtime }</span>
		<input type="button" class="del" value="删除用户" name="${u.uid}">  
		<input type="button" class="upgrade" value="升级用户为管理员" name="${u.uid}">
		<input type="button" value="禁止用户访问" class="forbid" name="${u.uid}"> 
		<br/>
	</c:forEach>
</body>
</html> --%>