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
	
	#qna_all{
		padding-top: 233px;
		padding-bottom: 36px;
		width: 70%;
		margin: 0 auto;
	}
	#qna_all P{
		display: inline-block;
	}
	
	
	#product_qna *{
		padding: 0;
		margin: 0;
	}
	#qna_all ul{
    	list-style-type: none;
    	margin: 0;
	}
	#product_qna a{
   		text-decoration: none;
	}
	#product_qna input{
		outline-width: 0;
	}
	#qnatitle{
	    width: 170px;
	    margin: 0 auto;
	    text-align: center;
	}
	#qnatitle > h1{
		font-size: 18px;
		letter-spacing: 7px;
	}
	#qnatitle > p{
	    font-size: 12px;
	    display: inline-block;
	    border-top: 1px dotted gray;
	    padding-top: 15px;
	    font-weight: bold;
	    color: #3e3e3e;
	}
	
	.clr{
		clear:both;
	}
	
	#qna_table table td a, #qna_table table td p{
		color: black;
	}
	
	
	
	
	
	
	
	/* 답변 전.후 셀렉트 박스 */
	#qna_selecting{
	    height:33px;
	    margin: 27px auto 0;
		
	}
	#qna_selecting select{
		width: 110px;
	    height: 29px;
	    float: left;
	    padding-bottom: 4px;
	    padding-left: 3px;
	    border: 1px solid #cbcbcb;
	}
	#qna_type{
		float: right;
	}
	
	
	
	
	
	
	/* 배송종류에 따른 버튼 */
	.type_box {
	    color: black;
	    font-size: 14px;
	    border: 1px solid #cbcbcb;
	    border-radius: 7px;
	    padding: 8px 15px;
	    margin: 0 7px;
	    box-sizing: border-box;
	}
	
	.type_box:hover{
		color: #000000;
	    padding-bottom: 10px;
	    font-weight: bold;
	    border: none;
	    border-bottom: 4px solid darkgray;
	    border-radius: 0;
	}
	
	
	
	
	
	
	
	
	
	/* 테이블 꾸미기 */
	
	#qna_all table{
		border-top: 1px solid darkgray;
		border-bottom: 1px solid darkgray;
		border-collapse: collapse;
		text-align: center;
	}
	#qna_all th{
		border-bottom: 1px solid darkgray;
		font-size: 12px;
		padding: 11px 0;
		background-color: #f9f9f9;
		height: 26px;
	}
	#qna_all td{
	   font-size: 15px;
 	   color: #423a3a;
	}
	#qna_all th:first-child{
		width: 98px;
	}
	#qna_all th:nth-child(2){
		width: 188px;
	}
	#qna_all th:nth-child(3){
		width: 108px;
	}
	#qna_all th:nth-child(4){
		width: 170px;
	}
	#qna_all th:nth-child(5){
		width: 550px;
	}
	#qna_all th:nth-child(6){
		width: 150px;
	}
	#qna_all th:nth-child(7){
		width: 150px;
	}
	
	
	
	
	#qna_table{
		margin: 32px auto 0;
	    width: 1324px;
	}
	
	#qna_table tr{
   		border-bottom: 1px solid #d3d3d3;
   		height: 49px;
	}
	
	#qna_table > table tr td:nth-child(5){
		text-align: left;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 새로운 글 (N)*/
	@Keyframes textColorAnimation{
		50% {color: white;}	/* 애니메이션 시작부분 : 0% = from 라고도 쓸 수잇음 */
		50% {color: black;}	/* 애니메이션 마지막부분 : 100% = to 라고도 쓸 수잇음 */
	}
	.new_time{
          border: 1px solid pink;
         background-color: #ff8b9f;
         border-radius: 2px;
         padding: 2px;
         font-size: 8px;
         vertical-align: middle;
         color: white;
		animation-name: textColorAnimation;	/* 설정한 애니메이션 이름 */
		animation-duration : 3s;	/* 1회 애니메이션 동작시간 : 5초 */
		animation-iteration-count: infinite;	/* 반복 횟수: 무한반복 */
     }
	/* 애니메이션 효과 만들기 */
	
	
	
	
	
	
	
	
	
	
	
	/* 좋아요와 조회 아이콘 */
	.fa.fa-github-alt{
		color: gray;
		padding: 0 6px;
	}
	.fa.fa-gittip{
		color: red;
		padding: 0 6px;
	}
	
	
	
	
	
	
	/* 조회 방식(제목,내용 등) 셀렉트 박스 */
	#serch_selecting{
		padding-bottom: 3px;
	}
	#serch_selecting select{
		height: 23.5px;
	}
	#serch_selecting input{
	    vertical-align: bottom;
	    height: 17.5px;
	    margin-right: 3px;
	}
	#serch_selecting button{
		height: 23.5px;
	}
	
	
	/* 찾기버튼 */
	#find{
	    border: 1px solid #ff9d9d;
	    padding: 4px 12px;
	    vertical-align: middle;
	    border-radius: 7px;
	    color: #ffffff;
	    background-color: #ff8989;
	}

	
	
	
	
	
	
	
	/* 페이지네이션 */
	#paging ul{
		display: inline-block;
	}
	
	#paging li{
	    border: 1px solid #d7d5d5;
	    font-size: 12px;
	    color: #757575;
	    line-height: 59px;
	    width: 34px;
	    height: 34px;
	}
	
	
	.pagenation{
		text-align: center;
		clear: both;
		height: 35px;
	}
	
	.pagenation a{
	    padding: 4px 8px;
	    border: 3px solid #d4d4d4;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #d5ced8;
	    border-left: none;
	}
	
	.pagenation .active{
	    font-weight: bold;
	    padding: 4px 8px;
	    border: 3px solid #9b9b9b;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #9b9b9b;
	    border-left: none;
	}
	
	
	
	
	
	
	/* 글쓰기 버튼 */
	.write_button{
	    border: 4px double #ffffff;
	    padding: 9px 39px;
	    border-radius: 9px;
	    position: relative;
	    float: right;
	    top: 33px;
	    background-color: #d6d6d6;
	    color: #000000;
	    font-weight: bold;
	}
	.write_button:hover{
		cursor: pointer;
		background-color: #ea7575;
		color: #393939;
	}
	
	
	
	
.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#find").click(function(){
		var flag = $("#selected").val();
		var keyword = $("#insert_input").val();
			alert("조건, 키워드  :  "+flag +","+keyword);
			
			location.href="boardList.bizpoll?flag="+flag+"&keyword="+keyword;
			
		});
		
		
        /* Modal 창 켜기 */
        $("#write_qna1").click(function(){
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
      	
      	
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
      	  
        });
		
		
		
		
		
		
		
		
		
		
		
		
	});
</script>

</head>
<body id="product_qna">
	<div id="qna_all">
	<form action="boardWriter.bizpoll" method="post" entype="multipart/form-data">
			<div id="qnatitle">
				<h1>고객문의게시판</h1>
				<p>상품 Q&A입니다.</p>
			</div>
			
			<div id="qna_selecting">
				<select>
					<option>
							전체글보기
					</option>
					<option>
							답변 전 글보기
					</option>
					<option>
							답변완료 글보기
					</option>
				</select>
				
				<div id="qna_type" >
				       
				<a href="#" class="type_box">전체보기</a>
				<a href="#" class="type_box">배송문의</a>
				<a href="#" class="type_box">주문취소</a>
				<a href="#" class="type_box">상품문의</a>
				<a href="#" class="type_box">주문서변경</a>
				<a href="#" class="type_box">교환반품</a>
				<a href="#" class="type_box">입금확인</a>
				<a href="#" class="type_box">기타문의</a>
				
				</div>
				
				
			</div>
			
			
			
			
			<div id="qna_table" class="clr">
			
			
								
			<table>
			<div id="serch_selecting">
				<select id="selected" name="flag">
					<option selected="selected" value="3">
							==선택==
					</option>
					<option value="1">
							제목
					</option>
					<option value="2">
							내용
					</option>
					<option value="3">
							제목+내용
					</option>
					<option value="4">
							글쓴이
					</option>
				</select>
				
				
				<input type="text" id="insert_input" name="keyword">
				<a href="#" id="find">찾기</a>
				
				
				
				
				</div>
					<thead>
					<tr>
						<th>NO</th>
						<th>PRODUCT</th>
						<th>CATEGORY</th>
						<th>SUBJECT</th>
						<th>CONTENTS</th>
						<th>WRITER</th>
						<th>DATE</th>
					</tr>
					</thead>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<tbody>
					<c:forEach items="${boardList}" var="bDto">
						<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/> <!-- 오늘날짜와 시간을 regdate2와 today2에 담음. -->
						<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
					<tr>	
						<!-- 게시번호 -->
						<td  class="">${bDto.bno}</td> 
						
						
						
						<!-- 파일유무 -->
						<td>
							<c:if test = "${bDto.filesize > 0}">
								<i class="fa fa-floppy-o"></i>
							</c:if>
						</td>
						
						<!-- 문의종류 -->
						<td>dddddddddd</td>
						
						<!-- 글 제목 -->
						<td  class="">
							<a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.title}</a>
						</td>
						
						<!-- 내용 -->
						<td>
							<a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.content}</a>
								<c:if test="${today2 == regdate2}">
									<span class="new_time">N</span>
								</c:if>
									<i class="fa fa-github-alt"></i><p>${bDto.viewcnt}</p>
									<i class="fa fa-gittip"></i><p>${bDto.goodcnt}</p>
									 <p>댓글 수 : ${replyList.size()}</p>
						</td>
						
						
						
						<td  class="">${bDto.writer}</td>
						
						<td  class="">
						
						

						<!-- today2 20181105 -->
						<!-- regdate2 20181105 -->
						<!-- today2 = regdate2 -->
						
						
						<c:choose>
							<c:when test="${today2 == regdate2}">
								<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
							</c:when>
							<c:otherwise>
								<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/>
							</c:otherwise>
						</c:choose>
						
						</td>
						
					</tr>
					</c:forEach>
					
					
					</tbody>
				</table>
				
				
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
						<a id="write_qna1" class="write_button">글쓰기</a>
					
				</c:when>
				<c:otherwise>
						<a href="boardInsert.bizpoll" id="write_qna" class="write_button">글쓰기</a>
				</c:otherwise>
			</c:choose>	
				
				
				
				<!-- 페이지넘기기 -->
			<div class="pagenation">
				<c:if test="${pageMaker.prev}">
						<a href="boardList.bizpoll?page=${pageMaker.startPage - 1}">&laquo;</a>
				</c:if>			
			
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					
						<a href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}" <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a>
					
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
						<a href="boardList.bizpoll?page=${pageMaker.endPage + 1}">&raquo;</a>
				</c:if>
			</div>
				
				
				
				
				
				
				</form>
		</div>
	</div>


</body>
</html>
<%@ include file="../include/footer.jsp" %>