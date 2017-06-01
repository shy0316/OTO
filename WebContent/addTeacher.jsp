<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html>
<head>
	<title>Detail Admin - Form Wizard</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="css/lib/bootstrap-wysihtml5.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/uniform.default.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/select2.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/bootstrap.datepicker.css" type="text/css" rel="stylesheet" />
    <link href="css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="css/layout.css" />
    <link rel="stylesheet" type="text/css" href="css/elements.css" />
    <link rel="stylesheet" type="text/css" href="css/icons.css" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="css/compiled/form-wizard.css" type="text/css" media="screen" />

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


	<!-- main container -->
    <div class="content">
        

        
        <div class="container-fluid">
            <div id="pad-wrapper">


                <div class="row-fluid">
                    <div class="span12">
                        <div id="fuelux-wizard" class="wizard row-fluid">
                            <ul class="wizard-steps">
                                <li data-target="#step1" class="active">
                                    <span class="step">1</span>
                                    <span class="title">Base <br /> information</span>
                                </li>
                                <li data-target="#step2">
                                    <span class="step">2</span>
                                    <span class="title">User <br /> information</span>
                                </li>
                                <li data-target="#step3">
                                    <span class="step">3</span>
                                    <span class="title">User <br /> settings</span>
                                </li>
                                <li data-target="#step4">
                                    <span class="step">4</span>
                                    <span class="title">User <br /> Content</span>
                                </li>
                            </ul>                            
                        </div>
                        <div class="step-content">
                            <form method="post" action="AddTeacher" enctype="multipart/form-data">
                            <div class="step-pane active" id="step1">
                                <div class="row-fluid form-wrapper">
                                    <div class="span8">

                                            <div class="field-box">
                                                <label>Name:</label>
                                                <input class="span8" type="text" name="name"/>
                                            </div>
                                            <div class="field-box ">
                                                <label>sex:</label>
                                                <input  type="radio" value="男" name="sex"/>男
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                <input  type="radio" value="女" name="sex"/>女
                                            </div>
                                            <div class="field-box">
                                                <label>Age:</label>
                                                <input class="span8" type="text" name="age"/>
                                            </div>


                                    </div>
                                </div>
                            </div>
                            <div class="step-pane" id="step2">
                                <div class="row-fluid form-wrapper">
                                    <div class="span8">

                                            <div class="field-box">
                                                <label>Address:</label>
                                                <input class="span8" type="text" name="address"/>
                                            </div>
                                            <div class="field-box">
                                                <label>Phone:</label>
                                                <input class="span8" type="text" name="phone"/>
                                            </div>
                                            <div class="field-box">
                                                <label>College:</label>
                                                <input class="span8" type="text" name="college"/>
                                            </div>
                                            <div class="field-box">
                                                <label>Course:</label>
                                                <input class="span8" type="text" name="course"/>
                                            </div>

                                    </div>
                                </div>
                            </div>
                            <div class="step-pane" id="step3">
                                <div class="row-fluid form-wrapper">
                                    <div class="span8">

                                            <div class="field-box">
                                                <label>Englishlevel:</label>
                                                <input class="span8" type="text" name="englishlevel"/>
                                            </div>
                                            <div class="field-box">
                                                <label>Photo:</label>
                                                <input type="file" name="uploadFile"/>
                                            </div>
                                            <div class="field-box">
                                                <label>Edulevel:</label>
                                                <input class="span8" type="text" name="edulevel"/>
                                            </div>
                                            <div class="field-box">
                                                <label>Price:</label>
                                                <input class="span8" type="text" name="price"/>
                                            </div>

                                    </div>
                                </div>
                            </div>
                            <div class="step-pane" id="step4">
                                <div class="row-fluid form-wrapper payment-info">
                                    <div class="span8">

                                            <div class="field-box">
                                                <label>Competition:</label>
                                                <textarea class="span8" rows="4" name="competition"></textarea>
                                            </div>
                                            <div class="field-box">
                                                <label>Experience:</label>
                                                <textarea class="span8" rows="4" name="experience"></textarea>
                                            </div>



                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>
                        <div class="wizard-actions">
                            <button type="button" disabled="" class="btn-glow primary btn-prev"> 
                                <i class="icon-chevron-left"></i> Prev
                            </button>
                            <button type="button" class="btn-glow primary btn-next" data-last="Finish">
                                Next <i class="icon-chevron-right"></i>
                            </button>
                            <button type="submit" class="btn-glow success btn-finish">
                               上传
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts for this page -->
    <script src="js/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
    <script src="js/fuelux.wizard.js"></script>

    <script type="text/javascript">
        $(function () {
            var $wizard = $('#fuelux-wizard'),
                $btnPrev = $('.wizard-actions .btn-prev'),
                $btnNext = $('.wizard-actions .btn-next'),
                $btnFinish = $(".wizard-actions .btn-finish");

            $wizard.wizard().on('finished', function(e) {
                // wizard complete code
            }).on("changed", function(e) {
                var step = $wizard.wizard("selectedItem");
                // reset states
                $btnNext.removeAttr("disabled");
                $btnPrev.removeAttr("disabled");
                $btnNext.show();
                $btnFinish.hide();

                if (step.step === 1) {
                    $btnPrev.attr("disabled", "disabled");
                } else if (step.step === 4) {
                    $btnNext.hide();
                    $btnFinish.show();
                }
            });

            $btnPrev.on('click', function() {
                $wizard.wizard('previous');
            });
            $btnNext.on('click', function() {
                $wizard.wizard('next');
            });
        });
    </script>

</body>
</html>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	增加教师
	
	<form method="post" action="AddTeacher" enctype="multipart/form-data">
	上传图片
	<input type="file" name="uploadFile" />
	<br/>
	姓名：<input type="text" name="tname">
	性别：<input type="text" name="sex">
	年龄：<input type="text" name="age">
	经历：<input type="text" name="experience">
	大学：<input type="text" name="college">
	课程：<input type="text" name="course">
	英语等级：<input type="text" name="englishlevel">
	参加的竞赛：<input type="text" name="competition">
	电话：<input type="text" name="phone">
	住址：<input type="text" name="address">
	学历：<input type="text" name="edulevel">
	单价：<input type="text" name="price">
	<br/>
	<input type="submit" value="上传" />
</form>
</body>
</html> -->