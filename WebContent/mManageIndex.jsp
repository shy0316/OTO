<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>administrator</title>
    
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
                   <li><a href="mManageIndex.jsp">Teachers List</a></li>
                    <li><a href="new-user.html">New Teachers form</a></li>
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
    <div class="container-fluid">
    <div id="pad-wrapper" class="users-list">
    <div class="row-fluid header">
        <h3>Online Users</h3>
        <div class="span10 pull-right">
            <input type="text" class="span5 search" placeholder="Type a user's name..." />
            <div class="ui-dropdown">
                <div class="head" data-toggle="tooltip" title="Click me!">
                    Filter users
                    <i class="arrow-down"></i>
                </div>
                <div class="dialog">
                    <div class="pointer">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <div class="body">
                        <p class="title">
                            Show users where:
                        </p>
                        <div class="form">
                            <select>
                                <option />Name
                                <option />Email
                                <option />Number of orders
                                <option />Signed up
                                <option />Last seen
                            </select>
                            <select>
                                <option />is equal to
                                <option />is not equal to
                                <option />is greater than
                                <option />starts with
                                <option />contains
                            </select>
                            <input type="text" />
                            <a class="btn-flat small">Add filter</a>
                        </div>
                    </div>
                </div>
            </div>

            <a href="new-user.html" class="btn-flat success pull-right">
                <span>&#43;</span>
                NEW USER
            </a>
        </div>
    </div>


    <div class="row-fluid table">
        <table class="table table-hover">
            <thead>
            <tr>
                <th class="span4 sortable">
                    Id
                </th>
                <th class="span4 sortable">
                    Name
                </th>
                
                <th class="span4 sortable">
                    <span class="line"></span>Sign in Time
                </th>

            </tr>
            </thead>
            <tbody>

            <tr class="first">
            <td>
                  12345678675456
                </td>
                <td>

                    <a href="user-profile.html" class="name">Alejandra Galvan Castillo</a>

                </td>
                <td>
                    Mar 13, 2012
                </td>
               

            </tr>






            <tr>
            <td>
                  12345678675456
                </td>
                <td>
                    <a href="user-profile.html" class="name">Alejandra Galvan Castillo</a>

                </td>
                <td>
                    Feb 27, 2014
                </td>
                

            </tr>
            <c:forEach var="u" items="${applicationScope.onlineUserList }">
                <tr>
                <td>
                        ${u.uid }
                    </td>
                    <td>
                        <a href="user-profile.html" class="name"> ${u.username }</a>

                    </td>
                    <td>
                        ${u.intime }
                    </td>
                   

                </tr>




                <br/>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="pagination ">
        <ul>
            <li><a href="#">&#8249;</a></li>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&#8250;</a></li>
        </ul>
    </div>

    </div>
    </div>

    </div>


	<!-- scripts -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
   
    <script src="js/theme.js"></script>

    

</body>
</html>