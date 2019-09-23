<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../include/sidebar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style type="text/css">

   .big{
      width:1520px;
      height:2000px;
      background: #999;
      margin: 0 10px 0 0;
      align:center;
   }
   
   .small{
      width:490px;
      height:200px;
      border: 1px solid #444444;
      float: left;
      background: #333;
      color: #fff;
      margin: 1px;
   }
   
   img {
   		width: 150px;
   		height: 150px;
   		float: left;
    }
    
    
   
   
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 
</script>

<meta charset="UTF-8">
<title>main1</title>
</head>
<body>
<section id="main-content">
   <section class="wrapper">
      <div class="row">
         <div class="com-md-12">
            <div class="box1">
			
			   <div class="big">
			   <c:forEach var="list" items="${allList }">
			      <div class="small">
			      <img src="/resources/images/${list.member_Image }" alt="디폴트!" />
			   	   ID : ${list.member_Id } <br />
			     	 관심분야 : ${list.member_Interesting } <br />
			      <input type="button"  value="상세보기" />
			      <input type="button"  value="메시지보내기" />
			      <input type="button"  value="친구신청" />
			      </div>
			   </c:forEach>
			   </div>
          </div>
         </div>
      </div>
   </section>
</section>
   
</body>
</html>
<%@include file="../include/footer.jsp" %>