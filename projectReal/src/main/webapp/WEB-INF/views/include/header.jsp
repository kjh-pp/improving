<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Bike</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="/resources/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="/resources/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="/resources/assets/css/style.css" rel="stylesheet">
    <link href="/resources/assets/css/style-responsive.css" rel="stylesheet">

    <script src="/resources/assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>Spring Project</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
              
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      <aside>
	<div id="sidebar" class="nav-collapse " tabindex="5000"
		style="overflow: hidden; outline: none;">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">

			<p class="centered">
				<!-- <a href="#"> -->
				<img src="/resources/assets/img/logo.png" class="img-circle" width="60">
				<!-- </a> -->
			</p>
			<h5 class="centered">Menu bar</h5>

			<li class="mt">
				<a class="active" href="../">
					<i class="fa fa-dashboard"></i> <span>home</span>
				</a>
			</li>

			<li class="sub-menu dcjq-parent-li">
			<a href="/board/list" id="pagesDropdown" role="button" class="dcjq-parent">
					<i class="fa fa-desktop"></i> <span>게시판</span>
					<span class="dcjq-icon"></span>
			</a>
					

			<li class="sub-menu dcjq-parent-li">
				<a href="/bike/addr" class="dcjq-parent">
					<i class="fa fa-cogs"></i> <span>지도</span> <!-- <span class="dcjq-icon"></span> -->
				</a>
			</li>
			
			<li class="sub-menu dcjq-parent-li">
				<!-- <a href="javascript:;" class="dcjq-parent"> -->
				<a href="myFriends">
					<i class="fa fa-book"></i> <span>친구목록</span> <!-- <span class="dcjq-icon"></span> -->
				</a>
					<!-- <ul class="sub" style="display: none;">
                          <li><a href="blank.html">Blank Page</a></li>
                          <li><a href="login.html">Login</a></li>
                          <li><a href="lock_screen.html">Lock Screen</a></li>
                      </ul> -->
			</li>
			<li class="sub-menu dcjq-parent-li">
				<!-- <a href="javascript:;" class="dcjq-parent"> -->
				<a href="myMsg">
					<i class="fa fa-tasks"></i> <span>메시지</span> <!-- <span class="dcjq-icon"></span> -->
				</a>
<!-- <ul class="sub" style="display: none;">
                          <li><a href="form_component.html">Form Components</a></li>
                      </ul> -->
			</li>
			<!-- <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="display: none;">
                          <li><a href="basic_table.html">Basic Table</a></li>
                          <li><a href="responsive_table.html">Responsive Table</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu dcjq-parent-li">
                      <a href="javascript:;" class="dcjq-parent">
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Charts</span>
                      <span class="dcjq-icon"></span></a>
                      <ul class="sub" style="display: none;">
                          <li><a href="morris.html">Morris</a></li>
                          <li><a href="chartjs.html">Chartjs</a></li>
                      </ul>
                  </li> -->

		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>

</body>
</html>