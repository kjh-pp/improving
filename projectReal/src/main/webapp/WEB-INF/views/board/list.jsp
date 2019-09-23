<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		 $('#btn_write').click(function(){
	    	 self.location="write"; 
	      });
	});

</script>
<section id= "main-content">
	<section class="wrapper">
		<div class="row">
			<div class="com-md-12">
				<div class="box1">


	<div class="card-body">
          <h5 class="card-title">게시판</h5>
           <div class="table-responsive">
             <div id="zero_config_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="zero_config_length">
             <label>Show <select name="zero_config_length" aria-controls="zero_config" class="form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div>
             <div class="col-sm-12 col-md-6"><div id="zero_config_filter" class="dataTables_filter">
             <label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="zero_config"></label></div></div></div>
             
             <div class="row">
             <div class="col-sm-12">
             <table id="zero_config" class="table table-striped table-bordered dataTable" role="grid" aria-describedby="zero_config_info">
               <thead>
                   <tr role="row"><th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 251px;">게시물번호</th>
                   <th class="sorting_asc" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Position: activate to sort column descending" style="width: 388px;" aria-sort="ascending">작성자</th>
                   <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 188px;">제목</th>
                   <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 96px;">등록날짜</th>
                   <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 169px;">조회수</th>
                   <th class="sorting" tabindex="0" aria-controls="zero_config" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 164px;">보안</th></tr>
               </thead>
               
               <tbody>                                                              
               <c:forEach var="boardVo" items="${list }">
               <tr role="row" class="odd">
                       <td class="">${boardVo.bno }</td>
                       <td class="sorting_1">${boardVo.userid }</td>
                       <td><a href="/board/read?bno=${boardVo.bno }">${boardVo.subject }</a></td>
                       <td><fmt:formatDate value="${boardVo.regdate }" pattern="yyyy/MM/dd HH:mm" /></td>
                       <td>${boardVo.hit }</td>
                       <td>${boardVo.secret }</td>
                   </tr>
                   </c:forEach>
                   <!-- <tr role="row" class="even">
                       <td class="">Airi Satou</td>
                       <td class="sorting_1">Accountant</td>
                       <td>Tokyo</td>
                       <td>33</td>
                       <td>2008/11/28</td>
                       <td>$162,700</td>
                   </tr> -->
                   </tbody>
            </table></div></div>
            <div >
            	<button id="btn_write" class="btn btn-outline-secondary">글쓰기</button>
            </div>
               
           <div class="row">
           <div class="col-sm-12 col-md-5">
           <div class="dataTables_info" id="zero_config_info" role="status" aria-live="polite">Showing ${pagingMaker.startPage } to ${pagingMaker.endPage } of  ${pagingMaker.totalData }</div>
           </div>
           <div class="col-sm-12 col-md-7">
           <div class="dataTables_paginate paging_simple_numbers" id="zero_config_paginate">
           <ul class="pagination">
          
           <li class="paginate_button page-item previous disabled" id="zero_config_previous">
          <c:if test="${pagingMaker.prev }">
           <a href="list${pagingMaker.makeUri(pagingMaker.startPage-1) }" aria-controls="zero_config" data-dt-idx="0" tabindex="0" class="page-link">
				<button type="button" class="btn btn-outline-info">◁</button></a>
		  </c:if>
           </li>
          
          <c:forEach begin="${pagingMaker.startPage }" end="${pagingMaker.endPage }" var="pNum">
           <li class="paginate_button page-item active">
           <a href="list${pagingMaker.makeUri(pNum) }" aria-controls="zero_config"  tabindex="0" 
           		class="<c:out value="${pagingMaker.pcri.page == pNum ? 'page-link' : 'mark' }"/>">${pNum }</a>
           </li>
           <!--  -->
		  </c:forEach>
	       
           <li class="paginate_button page-item next" id="zero_config_next">
           <c:if test="${pagingMaker.next && pagingMaker.endPage > 0 }">
           <a href="list${pagingMaker.makeUri(pagingMaker.endPage+1) }" aria-controls="zero_config" data-dt-idx="7" tabindex="0" class="page-link">
           <button type="button" class="btn btn-outline-info">▷</button></a>
		  </c:if>
		  
           </li></ul></div></div></div></div>
       </div>

   </div>
   				</div>
			</div>
		</div>
	</section>
</section>

<%@ include file="../include/footer.jsp" %>