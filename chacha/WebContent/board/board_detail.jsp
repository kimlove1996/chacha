<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--   index.jsp 페이지에 header.jsp 페이지를 추가 한것. -->
 <%@ include file="../include/header.jsp" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#detail_board, ul, li, a, input{
          margin: 0;
          padding: 0;
          outline: 0;
          text-decoration: none;
          list-style-type: none;
     }
     
     .clr{
     	clear: both;
     }
     
     /* div전체 */
     #detail_board_all{
	    padding-top: 210px;
	    display: block;
	    margin: 0 auto;
	    width: 1400px;
	    margin-bottom: 42px;
     }
     #board_in_icon > span{
	    display: inline-block;
	    line-height: 37px;
	    float: right;
	    padding-right: 14px;
	    font-size: 15px;
	    color: #a0a0a0;
     }
     
     
     
          
     #detail_board_in{
	    border: 6px solid #fbe9ff;
	    border-radius: 30px;
    	position: relative;
     }    
     
     .detail_board_head{
     	margin: 0 31px;
     	padding-top: 12px;
     	position: relative;
     }
     
     .detail_board_head a{
     	float: right;
	    padding: 9px 27px;
	    border: 1px solid #c4c4c4;
	    border-radius: 5px;
	    color: #ffffff;
	    background-color: #c4c4c4;
     }
     
     .detail_board_head h1{
     	font-size: 25px;
     	display: inline-block;
     }
     
     .detail_board_head button{
	    width: 100px;
	    height: 33px;
	    position: absolute;
	    right: 0;
	    top: 23px;
	    line-height: 1px;
     }
     
     
     /* div 전체 2*/
     #detail_board{
	    border: 1px solid #f1ebeb;
	    margin: 0px auto;
	    margin-top: 43px;
	    border-radius: 0 0px 22px 22px;
	    padding: 43px;
	    width: 93%;
	    margin-bottom: 4px;
     }
     
          
     #detail_board_main{
     }
     #nameboard{
	    height: 46px;
	    margin: 0 auto;
	    margin-top: 33px;
	    line-height: 46px;
	    background-color: #f1ebeb;
	    border-radius: 5px;
	    padding: 0 0 0 14px;
     }
     
     #nameboard span:first-child{
	    color: #a3a3a3;
	    font-weight: bold;
	    font-size: 13px;
     }
     #nameboard span:nth-child(2){
	    color: #7a7a7a;
	    font-size: 17px;
	    font-weight: bold;
     }
     
     .fa.fa-gittip{
     	float: right;
	    line-height: 45px;
	    position: relative;
	    right: 20px;
	    font-size: 25px;
	    color: red;
     }
     
     #nameboard span:nth-child(4){
     	float: right;
     	padding-right: 28px;
     	color: #a2a2a2;
     }
     
     
     
    /*  #nameboard span:nth-child(3){
	    float: right;
	    font-size: 14px;
	    font-weight: bold;
	    color: #656565;
	    padding-right: 26px;
     } */
     
     
     #board_title{
	    margin-top: 18px;
	    border-top: 7px solid #ebd1ef;
	    padding: 10px 12px 1px 12px;
	    border-bottom: 1px solid #f1ebeb;
	    background-color: #fdfdfd;
	    border-radius: 5px;
     }
     #board_title span:nth-child(1){
		font-size: 10px;
	    font-weight: bold;
	    color: #bca5c0;
     }
     #board_title span:nth-child(2){
     	float: right;
	    font-size: 14px;
	    color: #9f9f9f;
     }	
     	
     
     #board_title h2{
     	font-size: 35px;
     }
     
     #board_in{
          margin-top: 30px;
     }
     #board_in_icon{
	    border-top: 1px solid #f1ebeb;
	    border-bottom: 1px solid #f1ebeb;
	    height: 36px;
     }
     #content{
          border: 1px solid gray;
     }
     #board_clip{
	    border-bottom: 1px solid #f1ebeb;
	    height: 27px;
    	margin-top: 2px;
     }
     #board_clip > span{
		line-height: 24px;
	    color: gray;
	    padding-left: 22px;
     }
     
     
     
     
     .border_in_button{
		margin: 2px;
	    width: 81px;
	    height: 30px;
	    line-height: 30px;
	    text-align: center;
     }
     
     #board_button{
		padding: 11px 0px 46px 0px;
	    height: 24px;
     }
     
     #text{
	    border-bottom: 1px solid #f1ebeb;
	    padding: 45px 0 45px 12px;
	    background-color: #fdfdfd;
     }
     
     #detail_board_reply{
        clear: both;
	    border: 1px solid #cfcfcf;
	    border-radius: 5px;
     }
     
     #detail_board_reply_top{
	    height: 19px;
	    padding: 11px 0 11px 8px;
	    border-bottom: 1px solid #e7e7e7;
	    background-color: #ededed;
	    line-height: 22px;
     }
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     /* 댓글 무, 로그인필요 */
     #writed_reply{
	    margin: 10px auto;
	    margin-top: 39px;
	    width: 97%;
	    border: 1px solid #cfcfcf;
	    border-radius: 5px;
	    height: 126px;
	    background-color: #ededed;
     }
     
     #writed_reply_in{
	    border: 1px solid #ededed;
	    width: 96%;
	    margin: 0 auto;
	    height: 53px;
	    border-radius: 5px;
	    background-color: white;
	    padding: 14px;
     }
     
     #writed_reply_in > input{
     	width: 100%;
	    height: 100%;
	    border: none;
     }
     
     
     #board_button a:nth-child(1){
     	float: left;
	    background-color: #a9a9b5;
	    color: white;
	    border: 0px;
	    border-radius: 6px;
	 }
	 #board_button a:nth-child(2){
     	float: left;
	    background-color: #7997ff;
	    color: white;
	    border: 0px;
	    border-radius: 6px;
	 }
	 #board_button a:nth-child(3){
     	float: right;
	    background-color: #fdaf70;
	    color: white;
	    border: 0px;
	    border-radius: 6px;
	 }
	 #board_button a:nth-child(4){
     	float: right;
	    background-color: #fd7070;
	    color: white;
	    border: 0px;
	    border-radius: 6px;
	 }
	 
	 #writed_reply_his{
	 	padding: 9px 0px 8px 11px;
	 }
	 
	 #writed_reply_his span:nth-child(1) {
		padding: 9px 0px 8px 2px;
		font-weight: bold;
	 }
	 
	 #writed_reply_his span:nth-child(2) {
	    font-size: 12px;
	    font-weight: bold;
	    color: red;
	 }
	 
	 #writed_reply_his span:nth-child(3) {
	    float: right;
	    font-size: 12px;
	    padding-right: 11px;
	    color: #9b9696;
	 }
	 
	 
	 
	 
	 /* 로그인시 덧글작성 가능합니다. */
	 #essential_login{
	 	margin: 10px auto;
	    margin-top: 39px;
	    width: 97%;
	    border: 1px solid #cfcfcf;
	    border-radius: 5px;
	    height: 126px;
	    background-color: #ededed;
	    position: absolute;
	 }
	 
	 #essential_login_text{
		margin: 0 auto;
	    width: 229px;
	    height: 100%;
	    line-height: 127px;
	 }
	 
	 #write_reply{
	 	border: 7px double #cfcfcf;
	    height: 119px;
	    border-radius: 5px;
	    margin-top: 14px;
	    padding: 19px;
	    background-color: #f4f4f4;
	    padding-bottom: 31px;
	 }
	 
	 #write_reply > span:nth-child(1){
	 	 font-weight: bold;
   		 color: #6a716a;
	 }
	 #write_reply > span:nth-child(2){
	    border: 1px solid #c3c3c3;
	    border-radius: 5px;
	    color: white;
	    padding: 5px;
	    background-color: #7b7b7b;
	    float: right;
	    margin-bottom: 6px;
	 }
	 
	 
	 
	 
	 
	 
	 #write_reply p{
		margin: 52px auto;
	    width: 292px;
	    font-weight: bold;
	 }
	 
	 
	 #write_reply_in{
		border: 1px solid #cfcfcf;
	    height: 93px;
	    margin-top: 10px;
	    border-radius: 5px;
	    background-color: white;
	    display: block;
	    width: 100%;
	    outline: 0;
	 }
	 
	 
	 
	 
	 
	 #writing_reply{
	 	border: 3px solid #cfcfcf;
	    height: 119px;
	    border-radius: 5px;
	    margin-top: 14px;
	    background-color: #f3f3f3;
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 #detail_board_reply01{
	 }
	 
	 #detail_board_reply02{
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 /* 삭제 확인/취소 모달 */
     #delete_modal_all{
     	z-index: 10;
     	position: fixed;
     	top: 0;
     	left: 0;
     	width: 100%;
     	height: 100%;
     	background-color: rgba(0, 0, 0, 0.4);
     	display: block;
     }
     
     #delete_modal_line{
	    margin: 0 auto;
	    width: 500px;
	    height: 250px;
	    border: thin solid #EAEAEA;
	    background-color: white;
	    border-radius: 72px;
	    display: block;
	    position: relative;
	    top: 380px;
	    border: 7px double #ffb0b0;
     }
     
     
     
     #modal_close_btn{
		position: absolute;
	    right: 32px;
	    top: 24px;
	    color: #706464!important;
	    font-size: 25px;
	    padding: 5px;
	    display: block;
	    font-size: 19px;
     }
     
     #delete_modal_line span:nth-child(1){
     	    position: absolute;
		    right: 32px;
		    top: 24px;
		    color: #706464!important;
		    font-size: 25px;
		    padding: 5px;
		    display: block;
		    font-size: 19px;
     }
     #delete_modal_line span:last-child{
     	    position: absolute;
		    right: 32px;
		    top: 24px;
		    color: #706464!important;
		    font-size: 25px;
		    padding: 5px;
		    display: block;
		    font-size: 19px;
     
     }
     
     
     #modal_close_btn:hover {
     	background-color: #d4d4d4;
     	border-radius: 30px;
     }
     

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
</style>
<script type="text/javascript">

$(document).ready(function(){
	
	 /* Modal 창 켜기 */
    $("#write_qna").click(function(){
  	  $("#modal_all").css("display","block");
  	  
  	  
  	  
  	  
  	  
  	  
  	/* 로그인 버튼을 클릭했을 떄 유효성 체크 */
  	$(document).on("click","#btn_login",function(){
  		/* input의 id와 pw값을 입력. */
  		var val1 = $("#inputid").val();
  		var val2 = $("#inputpw").val();
  	/* 	alert(val1 + ", " + val2); */
  		
  		
  		
  		
  		/* 유효성체크 
  			id와 pw중 하나라도 값이 없으면 경고문 출력*/
  		if(val1 !="" && val2 !=""){
  			/* $("#frm_login").submit(); */
  			$.ajax({
  				  	   url : "LoginPlay.bizpoll",
  				  	   type: "POST",
  				  	   dataType: "json",
  				  	   data: "id="+val1+"&pw="+val2,
  				  	   success: function(data){
  				  		   if(data.message == "1"){
  				  			   location.href="boardInsert.bizpoll";
  				  	       	  $("#modal_all").css("display","none");
  				  		   }else{
  				  			   alert("로그인 실패")
  				  			   $("#err_check").text("아이디 또는 패스워드가 일치하지 않습니다.").css("display","block");
  				  		   }
  				  	   },
  				  	   error:function(){
  				  		   alert("System Error!!!");
  				  	   }
  				});
  			
  			
  			
  		}else{
  			$("#err_check").text("필수정보입니다.").css("display","block");
  			return;
  		}
  		
  		});
  	
	$(document).on("click","#boardUpdate", function(){
		location.href="boardUpdate.bizpoll?bno=${boardview.bno}";
	});
	
	
	
	
	
	
	
	
	
	
	
	});
	 
	 

    /* Modal 창 켜기 */
    $("#border_in_button").click(function(){
  	  $("#delete_modal_all").css("display","block");
    });
    
    /* Modal 창 닫기 */
    $("#modal_close_btn").click(function(){
  	  $("#delete_modal_all").css("display","none");
		});
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
});






















</script>


</head>  
<body id="detail_boardlist">
<!-- 제목, 타입, 작성일자, 작성자, 좋아요, 조회수, 내용, 목록/답변버튼, 수정/삭제버튼, 첨부파일 -->
<div id="detail_board_all">
     <div id="detail_board_in">
          <!-- Q&A 게시판 -->
          <c:choose>
				<c:when test="${empty sessionScope.loginUser}">
						<div class="detail_board_head" >
				              <h1>Q&A 게시판</h1>
				              <a href="#" id="write_qna">새글쓰기</a>
				        </div>
					
				</c:when>
				<c:otherwise>
						<div  class="detail_board_head">
				              <h1>Q&A 게시판</h1>
				              <a href="boardInsert.bizpoll">새글쓰기</a>
				        </div>
				</c:otherwise>
			</c:choose>
          
          
          
          
          <div id="detail_board">
              
              <div id="detail_board_main">
                   <div id="nameboard">
                        <span>작성자 : </span>	
                        <span>${boardview.writer}</span>
                       	<span class="fa fa-gittip"></span>
                       	<span>공감합니다</span>
                        
                        
                   </div>
                   
                   <div id="board_title">
                        <span>[${boardview.bno}]번째 글<img src=""></span>
                        <span>
                       		<fmt:formatDate pattern="작성일 : yyyy/MM/dd h:mm:ss" value="${boardview.regdate}"/>
                        </span>
                        <h2>${boardview.title}</h2>
                   </div>
                   
                   
                        <div id="board_in">
                             <div id="board_in_icon">
                                  <!-- 아이콘 집어넣는 곳 -->
                                 <span class="">조회 수 : ${boardview.viewcnt}</span>
                                 <span class="">공감 수 : ${boardview.goodcnt}</span>
                                  
                             </div>
                             
                             
                             <div id="text">
                                  <span>${boardview.content}</span>
                             </div>
                             
                             
                             <div id="board_clip">
                             	<span class="fa fa-floppy-o"> : ${boardview.filename}
                                 
                        		  (<fmt:formatNumber type="number" pattern="0.0" value="${boardview.filesize/1024}"/>kb)
                                  <a href="download.bizpoll?file=${boardview.filename}">다운로드</a>
                             	</span>
                             </div>
                             
                             
                             
                             <div id="board_button">
                                  <a href="boardList.bizpoll" type="button" class="border_in_button"> 목록</a>
                                  <a href="#" type="button" class="border_in_button"> 답변</a>
                                  
                                  <c:if test="${sessionScope.loginUser.id == boardview.writer}">
                                  <a href="boardUpdate.bizpoll?bno=${boardview.bno}" type="button" class="border_in_button" id=""> 수정</a>
                                  <a href="#" type="button" class="border_in_button"> 삭제</a>
                             	  </c:if>
                             </div>
                        </div>
              </div>
 



<c:choose>
     <c:when test="${empty sessionScope.loginUser}">
              <div id="detail_board_reply01">
                   <div id="detail_board_reply">
                        <div id="detail_board_reply_top">
                             <span>댓글1</span>
                        </div>
                        
                        
                        
                        <div id="writed_reply">
                             <div id="writed_reply_his">
                                  <span>짱이쁜이</span>
                                  <span>삭제</span>
                                  <span>작성일 : 2018.01.01 21:23</span>
                             </div>
                             <div id="writed_reply_in">
                                  <span>야 it쪽 코인 떡상 각이냐?</span>
                             </div>
                        </div>
                   </div>
              
              
              
                   <div id="write_reply">
                  	 <p>로그인을 하시면 덧글을 작성할 수 있습니다.</p>
                   </div>
                   
                   <div class="clr"></div>
                   
                   
                   
                   
              </div>        
                   
     </c:when>
     
     <c:otherwise>
              <div id="detail_board_reply02">
                   <div id="detail_board_reply">
                        <div id="detail_board_reply_top">
                             <span>댓글0</span>
                        </div>
                   </div>
              
              
                   <div id="write_reply">
                   			<span>${sessionScope.loginUser.name}</span>
                   			<span>등록하기</span>
                   				<textarea id="write_reply_in" name="border_reply"></textarea>
                   		
                   </div>
              </div>
              
     </c:otherwise>
</c:choose>









<!-- 삭제버튼 확인/취소 모달창 -->
<div id="delete_modal_all">
     <div id="delete_modal_line">
			<i class="fa fa-close" id="modal_close_btn"></i>
			<span>게시물을 삭제하시면 복구할 수 없습니다.</span>
			<span>정말 삭제하시겠습니까?</span>
     </div>
</div>














          </div>
     </div>
</div>



</body>
</html>

<%@ include file="../include/footer.jsp" %>  