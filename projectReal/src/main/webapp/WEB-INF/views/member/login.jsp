<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta name="viewport" content="width=device-width" , initial-scale="1.0"> -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="../include/header.jsp"%>
<%@include file="../include/sidebar.jsp"%>
<!--
<nav class="navbar navbar-default">
	<div class="naver-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span> 
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
	</div>
		
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="main.jsp">메인</a>
			<li><a href="bbs.jsp">게시판</a>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" 
			data-toggle="dropdown" role="button" aria-haspopup="true" 
			aria-expanded="false">접속하기<span class="caret"></span></a>
				
				<ul class="dropdown-menu">
					<li class="active"><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>
			</li>		
		</ul>
	</div>
</nav> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#btn').click(function(){
		document.frm.method = 'post';
		document.frm.submit(); 
	});
		
});
</script>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="com-md-12">
				<div class="box1">
				
					<div class="container">
						<div class="col-lg-4"></div>
						<div class="col-lg-4">
							<div class="jumbotron" style="padding-top: 20px;">
								<form name="frm">
									<h3 style="text-align: center;">로그인 화면</h3>
									<div class="form-group">
										ID<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20" required="required" autofocus="autofocus">
									</div>
									<div class="form-group">
										PW<input type="text" class="form-control" placeholder="비밀번호" name="pw" maxlength="20" required="required">
									</div>
									<input type="button" id="btn" class="btn btn-primary form-control" value="로그인">
								</form>
							</div>
						</div>
						<div class="col-lg-4"></div>
					</div>

				</div>
			</div>
		</div>
	</section>
</section>


<%@include file="../include/footer.jsp"%>
