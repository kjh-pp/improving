<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript">

  	$(function(){
/*  		var frm = $('form[role="form"]');
 		$('#btn_save').click(function(){
 			frm.attr('action', '/board/modify'); // 컨트롤러로 보낸다.
 			frm.attr('method','get');
 			frm.submit();
 		}); */
 		
 		$('#btn_cancel').click(function(){
		 	self.location="/board/list";
 		});
 	}); 
 
</script>
 <%@ include file="../include/header.jsp" %>   
 
<div class="card-body">
      <h4 class="card-title">게시물 쓰기</h4>
     <form method="post">
      <div class="form-group row">
          <label for="fname" class="col-sm-3 text-right control-label col-form-label">작성자</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="userid" ><!-- readonly="readonly" value="${boardVO.userid }"  -->
          </div>
      </div>
      <div class="form-group row">
          <label for="lname" class="col-sm-3 text-right control-label col-form-label">제목</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="subject" >
          </div>
      </div>
      <div class="form-group row">
          <label for="cono1" class="col-sm-3 text-right control-label col-form-label">내용</label>
          <div class="col-sm-9">
              <textarea name="contents" class="form-control" style="margin-top: 0px; margin-bottom: 0px; height: 87px;"></textarea>
          </div>
      </div>
      <div class="card-body" align="center">
          <button type="submit" class="btn btn-primary" id="btn_save">저장</button>
          <button type="button" class="btn btn-primary" id="btn_cancel">취소</button>
          <button type="reset" class="btn btn-primary" id="btn_reset">리셋</button>
      </div>
     </form>
  </div>
  
  
 <%@ include file="../include/footer.jsp" %>   
