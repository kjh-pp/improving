<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript">

  	$(function(){
 		var frm = $('form[role="form"]');
 		$('#btn_modify').click(function(){
 			frm.attr('action', '/board/modify'); // 컨트롤러로 보낸다.
 			frm.attr('method','get');
 			frm.submit();
 		});
 		
 		$('#btn_delete').click(function(){
 			frm.attr('action', '/board/delete'); // 컨트롤러로 보낸다.
 			frm.submit();
 		});
 		$('#btn_list').click(function(){
		 	self.location="/board/list";
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
                                  <input type="text"  name="writer" readonly="readonly" value="${boardVO.subject }">
                              </div>
                          	<div >
                              <label >내용</label>
                              <div >
                                  <!-- <input type="text" class="form-control"> -->
                                  <textarea  name="contents" rows="5" readonly="readonly">${boardVO.contents }</textarea>
                                  <!-- input class와 이름을 맞춰주면 css가 같이 적용된다.  -->
                              </div>
                          </div>
                         
                          </div>
                           <div >
                              <div  align="center" class="sorting">
									<button type="button" id="btn_modify" class="btn btn-cyan btn-sm" >수정</button>
									<button type="button" id="btn_delete" class="btn btn-danger btn-sm" >삭제</button>
									<button type="button" id="btn_list"  class="btn btn-success btn-sm">취소</button>
                              </div>
                          </div>
               
                      </form>
          	</div><!-- /row -->
          	
      </section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->
      <!-- 댓글 -->
      <div class="comment-widgets scrollable ps-container ps-theme-default" data-ps-id="9b1ab052-dd4a-1695-adae-2b5c05199254">
           <!-- Comment Row -->
           <div class="d-flex flex-row comment-row m-t-0">
               <div class="comment-text w-100">
                   <h6 class="font-medium">${replyVO.userid }</h6>
                   <span class="m-b-15 d-block">${replyVO.rcontent }</span>
                   <div class="comment-footer">
                       <span class="text-muted float-right">${replyVO.regdate }</span> 
                       <button type="button" class="btn btn-cyan btn-sm">수정</button>
                       <button type="button" class="btn btn-danger btn-sm">Delete</button>
                   </div>
               </div>
           </div>
                                
     <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 3px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>

      <!--main content end-->
 <%@ include file="../include/footer.jsp" %>   
