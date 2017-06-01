<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - My Info</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/personal-info.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
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
                <a href="manage-index.html">
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
                    <li><a href="user-list.html" class="active">User list</a></li>
                    <li><a href="new-user.html">online users</a></li>
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
	<!-- main container .wide-content is used for this layout without sidebar :)  -->
    <div class="content">

        <!-- settings changer -->

        <div class="container-fluid">


        <div class="settings-wrapper" id="pad-wrapper">
                <!-- avatar column -->


                <!-- edit form column -->
                <div class="span7 personal-info">

                  <h5 class="personal-title">Teacher's Modify</h5>
                    <form action="MTeacherModify" method="post">
                        <input type="hidden" name="tid" value="<%=request.getParameter("tid") %>">
                        <div class="field-box">
                            <label>New Name:</label>
                            <input class="span5 inline-input" type="text" placeholder="用户名" name="tname"/>
                        </div>

                        <div class="field-box">
                            <label>Age:</label>
                            <input class="span5 inline-input" type="text" name="age" />
                        </div>

                        <div class="field-box">
                            <label>Phone:</label>
                            <input class="span5 inline-input" type="text" placeholder="电话号码" name="phone"/>
                        </div>
                        <div class="field-box">
                            <label>Englishlevel:</label>
                            <input class="span5 inline-input" type="text" name="englishlevel" />
                        </div>


                        <div class="field-box">
                            <label>Address:</label>
                            <input class="span5 inline-input" type="text" name="address" />
                        </div>
                        <div class="field-box">
                            <label>Price:</label>
                            <input class="span5 inline-input" type="password" name="price" />
                        </div>
                        <div class="field-box">
                            <label>competition:</label>
                            <textarea class="span5" rows="4" name="experience"></textarea>
                        </div>
                        <div class="field-box">
                            <label>Experience:</label>
                            <textarea class="span5" rows="4" name="experience"></textarea>
                        </div>

                        <div class="span6 field-box actions">
                            <input type="button" class="btn-glow primary" value="Save Changes" />
                            <span>OR</span>
                            <input type="reset" value="Cancel" class="reset" />
                        </div>
                    </form>
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
</head>
<body>
	<form action="MTeacherModify" method="post">
			<input type="hidden" name="tid" value="<%=request.getParameter("tid") %>">
	新姓名： <input type="text" name="tname">
	年龄：	<input type="text" name="age">
	电话：	<input type="text" name="phone">
	住址：	<input type="text" name="address">
	经历：	<input type="text" name="experience">
            英语等级：       <input type="text" name="englishlevel">
	获奖：	<input type="text" name="competition">
	单价：	<input type="text" name="price">
	</form>
</body>
</html> --%>