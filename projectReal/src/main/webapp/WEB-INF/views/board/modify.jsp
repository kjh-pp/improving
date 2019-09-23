<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript">

  	$(function(){
 		var frm = $('form[role="form"]');
 		$("#btn_modify").click(function(){
 			frm.submit();
 		});

 		$("#btn_list").click(function(){
 			self.location="/board/read?bno=${boardVO.bno }";
 		});
 	}); 
 
</script>
 <%@ include file="../include/header.jsp" %>   
 
 <!--main content start-->
      <section class="sorting">
          <section class="sorting">
          	<h3>Read Page</h3>

          	<form method="get" role="form">
          		<input type="hidden" name="bno" value="${boardVO.bno }" />
          	</form>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div align="center">
                      <form  method="post">
                          <div >
                          	
                              <label >작성자 : ${boardVO.userid }</label>
                            
                              <label >등록날짜 : <fmt:formatDate value="${boardVo.regdate }" pattern="yyyy/MM/dd HH:mm" /> </label>
                              <label >조회수 : ${boardVO.hit }</label>
							
                          </div>
                            <div >
                              <div class="sorting">
                              <label >제목</label>
                                  <input type="text"  name="subject" value="${boardVO.subject }">
                              </div>
                          	<div >
                              <label >내용</label>
                              <div >
                                  <!-- <input type="text" class="form-control"> -->
                                  <textarea  name="contents" rows="5" >${boardVO.contents }</textarea>
                                  <!-- input class와 이름을 맞춰주면 css가 같이 적용된다.  -->
                              </div>
                          </div>
                         
                          </div>
                           <div >
                              <div  align="center" class="sorting">
									<button type="submit" id="btn_modify" >수정</button>
									
									<button type="button" id="btn_list"  >취소</button>
                              </div>
                          </div>
               
                      </form>
          	</div><!-- /row -->
          	
      </section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->
      <!--main content end-->
 <%@ include file="../include/footer.jsp" %>   
