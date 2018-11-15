<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script type="text/javascript">
/* 	$(document).ready(function(){
		$("#reply_delete_button").click(function(){
			location.href="deleteReply.bizpoll?bno=${boardview.bno}";

		});
	}); */
</script>





</head>
<body>





<c:choose>
     <c:when test="${empty sessionScope.loginUser}">
              <div id="detail_board_reply01">
                   <div id="detail_board_reply">
                        <div id="detail_board_reply_top">
                             <span>댓글 ${replyList.size()}</span>
                        </div>
                        
       <c:if test="${replyList.size()== 0}">
     			<div class="noreply_text">
     				등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요.
     			</div>
     	</c:if>
     		
     		
     		
     		
     		
     		
     		
     		
     		
     		
     		
     		
     		 <c:forEach items="${replyList}" var="replyview">
                  		 <div id="writed_reply">
                             <div id="writed_reply_his">
                                  <span>${replyview.writer}</span>
                                  <span id="reply_regdate">작성일 : ${replyview.regdate}</span>
                             </div>
                             
                             
                             <div id="writed_reply_in" name="replylist_textarea">
                                  <span>${replyview.content}</span>
                             </div>
                        </div>
              </c:forEach>   
                   
                   </div>
                   <div class="clr"></div>
              </div>        
     </c:when>
     
     

     
     
     
     
     <c:otherwise>
              <div id="detail_board_reply02">
                   <div id="detail_board_reply">
                        <div id="detail_board_reply_top">
                             <span>댓글 ${replyList.size()}</span>
                        </div>
                        
     	<c:if test="${replyList.size()== 0}">
     			<div class="noreply_text">
     				등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요.
     			</div>
     	</c:if>
     	 <c:forEach items="${replyList}" var="replyview">
                  		 <div id="writed_reply">
                             <div id="writed_reply_his">
                                  <span data_num="${replyview.rno}">${replyview.rno}]번 덧글</span>
                                  <span>${replyview.writer}</span>
                                  <c:if test="${sessionScope.loginUser.id == replyview.writer}">
                                 	 <a data_num="${replyview.rno}" class="reply_delete" id="reply_delete_button">삭제</a>
                                  </c:if>
                                  
                                  
                                  <span id="reply_regdate">작성일 : ${replyview.regdate}</span>
                             </div>
                             
                             
                             <div id="writed_reply_in" name="replylist_textarea">
                                  <span>${replyview.content}</span>
                                 
                             </div>
                          </div>
           </c:forEach>
                   </div>
                   
              </div>
              
     </c:otherwise>
</c:choose>



<!-- 댓글이 없으면 댓글을 등록하라 말하는 것과 댓글 리스트 출력은 커맨트리스트에 남아있어야함. -->
<!-- 로그인을 하셔야 댓글을 등록할 수 있습니다, 댓글등록은 보드 디테일에 있어야함. -->















</body>
</html>