<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="../include/header.jsp"%>
<%@include file="../include/sidebar.jsp"%>
<!-- 	<nav class="navbar navbar-default">
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
						<li><a href="login.jsp">로그인</a></li>
						<li  class="active"><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>		
			</ul>
		</div>
	</nav> -->
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 	 $(function(){
 		 
		$('#id').on('keyup', function(){
			var member_Id = $('#id').val();
			$.ajax({
				async : true,
				type : 'post',
				data : member_Id,
				url : "IdCheck",
				datatype : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					if(data.result == 1){
						$('#msg').html("아이디가 존재합니다.")
					}else{
						$('#msg').html("사용 가능한 아이디입니다.")
					}
				}
			});
			
			
		});//keyup end
		
		$('#btn').click(function(){
			/* console.log($('#checkbox').is(":checked"));
			 if($('#checkbox').is(":checked") == true){
				$('#member_OpenInfo').val(1);
			} else{
				$('#member_OpenInfo').val(0);
			} */

			/*  console.log("value ::::: "+$('#member_OpenInfo').val()); */
			
			if($('#msg').text() == "아이디가 존재합니다."){
				alert("아이디를 다시 확인해주세요");
				return;
			/* }else if($('#member_Password').val() !=$('#confirmPassword').val()){
				alert("비밀번호를 확인하십시오");
				return; */
			}else if($('#name').val() == "" ){
				alert("이름을 적어주세요");
				return;
			}else if($('#email').val() == "" ){
				alert("email을 적어주세요");
				return;
			}else if($('#pw').val() == "" ){
				alert("비밀번호를 확인하십시오");
				return;
			}else if($('#id').val() == ""){
				alert("아이디를 다시 확인해주세요");
				return;
			}else if($('#phone').val() == ""){
				alert("연락처를 다시 확인해주세요");
				return;
			}else if($('#account').val() == ""){
				alert("계좌를 다시 확인해주세요");
				return;
			}else if($('#gender').val() == ""){
				alert("성별을 다시 확인해주세요");
				return;
			}
			
			document.frm.method ='post';
		    document.frm.submit(); 
		});//btn end 
		 
		
 	});//Jquery end 
	
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
								<!-- <form enctype="multipart/form-data" name="frm"> -->
									<h3 style="text-align: center;">회원가입</h3>
									
									<div class="form-group">
										ID<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20" required="required" autofocus="autofocus">
									</div>
									<div class="form-group">
										PW<input type="text" class="form-control" placeholder="비밀번호" name="pw" maxlength="20" required="required">
									</div>
									<div class="form-group">
										이름<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20" required="required">
									</div>
									<div class="form-group">
										이메일<input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20" required="required">
									</div>
									<div class="form-group">
										연락처<input type="text" class="form-control" placeholder="연락처" name="phone" maxlength="20" required="required">
									</div>
									<div>
										계좌번호<input type="text" class="form-control" placeholder="계좌번호" name="account" maxlength="20" required="required">
									</div>
									<div class="form-group"></div>
									<div class="form-group" style="text-align: center;">
										<div class="btn-group" data-toggle="buttons">
											성별 : 
											<label class="btn btn-primary active">
												<input type="radio" name="gender" autocomplete="off" value="남자" checked>남자
											</label>
											<label class="btn btn-primary active">
												<input type="radio" name="gender" autocomplete="off" value="여자" checked>여자
											</label>
										</div>
									</div>
									<!-- <div class="form-group" style="text-align: center;">
										<div class="btn-group" data-toggle="buttons">
											<label class="btn btn-primary active">
												<input type="radio" name="userGender" autocomplete="off" value="등급" checked>관리자
											</label>
											<label class="btn btn-primary active">
												<input type="radio" name="userGender" autocomplete="off" value="등급" checked>일반
											</label>
										</div>
									</div> -->
									<input type="button" id="btn" class="btn btn-primary form-control" value="회원가입">
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


