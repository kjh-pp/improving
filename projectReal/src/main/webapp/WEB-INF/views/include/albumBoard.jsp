<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	
	.f{
	float: left;
	}
	img {
		height: 100%;
		width: 100px;
	}
	.account{
		float: left;
		border: 1px solid black;
		width: 45%;
	
	}
	.buttoncss{
		text-align: right;
	}
</style>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		
		var member_Id = ${sessionScope.id};
		out.print("멤버 아이디 ::::::::::::" + member_Id);
		
		$.ajax({
			async : true,
			type : 'post',
			data : member_Id,
			url : "DataInsert",
			datatype : "json",
			contentType : "application/json; charset=UTF-8",
			success : function(data){
				out.print("시작후");		
			}
		});
	});
	


</script>

<body>

<c:forEach var="list" items="allList">
<div style="display: block;">
<div class="account">
		<div class="f">
		<img src="resources/images/default.jpg" alt="디폴트!" />
		</div>
		
		<div>
			<h4>ID : 아이디 들어갈 자리</h4>
			<h4>관심분야  : 관심분야 들어갈자리</h4>
		</div>	
		<div class="buttoncss">
			<input type="button" value="상세보기" />
			<input type="button" value="쪽지쓰기" />
			<input type="button" value="친구맺기" />
		</div>
</div>
</c:forEach>



</body>
</html>