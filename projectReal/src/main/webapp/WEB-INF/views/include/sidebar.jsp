<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<!-- <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>Project</title>

<!-- Bootstrap core CSS -->
<link href="/resources/assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="/resources/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/resources/assets/css/zabuto_calendar.css">
<!-- <link rel="stylesheet" type="text/css" href="/resources/assets/js/gritter/css/jquery.gritter.css" /> -->
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
<%--   	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%> --%>
<section id="container">
	<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
	<!--header start-->
	<header class="header black-bg">
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
		</div>
		
		<!--logo start-->
		<a href="index.html" class="logo"><b>HOME</b></a>
    				
		<!--logo end-->
		<div class="nav notify-row" id="top_menu">
			<!--  notification start -->
				
   			 	
   			 	
   			 	 <!-- Navbar Search -->
			    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			      <div class="input-group">
			        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
			      </div>
			        <div class="input-group-append" style="float:right;">
			          <button class="btn btn-primary" type="button">
			            <i>검색</i>
			          </button>
			        </div>
			    </form>
			 
			    
			<ul class="nav top-menu">
				
			    <!-- Navbar -->
						<!-- settings start -->
				<!-- <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Update</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Product Development</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Payments Sent</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    settings end
                    inbox dropdown start
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="/resources/assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    inbox dropdown end -->
			</ul>
			<!--  notification end -->
			
		</div>
		<%--             <%
				if(userID == null){
			%> --%>
		<div class="top-menu">
		       
			<ul class="nav pull-right top-menu">
				<li><a class="logout" href="login.html">Login</a></li>
				<li><span style="color: white;">${sessionScope.id }님 환영합니다.</span></li>
			</ul>
		</div>
		<%--              <% 
				}else{
			 %>	 --%>
		<!--            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="logout.html">Logout</a></li>
            	</ul>
            </div>  -->
		<%--              <% 
				}
			 %>	 --%>
	</header>
	<!--header end-->
</section>
<!-- 사이드바 -->
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
					<i class="fa fa-dashboard"></i> <span>main</span>
				</a>
			</li>

			<li class="sub-menu dcjq-parent-li">
			<a href="/board/list" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dcjq-parent">
					<i class="fa fa-desktop"></i> <span>게시판</span>
					<span class="dcjq-icon"></span>
			</a>
					
				<ul class="sub" style="display: none;">
					 <h6>Login Screens:</h6>
			          <li><a href="board/boardList?board_Id=야구">야구 게시판</a></li>
			          <li><a href="board/boardList?board_Id=IT">IT 게시판</a></li>
			          <li><a href="board/boardList?board_Id=경제">경제 게시판</a></li>
			          <li><a href="board/boardList?board_Id=실험용">실험용 게시판</a></li>
				</ul>
			

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
	
	 <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
</aside>