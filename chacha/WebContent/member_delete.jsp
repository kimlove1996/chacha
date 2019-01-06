<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	/* 헤더 아래로 내림 */
	#mem_delete_all{
		position: relative;
	    top: 229px;
	}

	#mem_delete_all input, textarea{
		outline-color: pink;
	}

	/* div중앙 맞춤 */
	#mem_delete_in{
		margin: 0 auto;
	    width: 1200px
	}

	/* 회원탈퇴 중앙 맞춤 */
	#withdrawal_title_top{
		margin: 0 auto;
	    width: 170px;
	    text-align: center;	
	}
	
	/* 회원탈퇴 글씨체 조절 */
	#withdrawal_title{
		font-size: 30px;
	    font-weight: bold;
	    letter-spacing: 7px;
	}
	
	/* 감사문구 */
	#withdrawal_text{
	    text-align: center;
	    padding-top: 35px;
	    padding-bottom: 35px;
	}
	
	/* 하단 테이블  + 비밀번호 + 확인 취소 버튼 포괄한 div*/
	#withdrawal_cause_area{
		margin: 0 auto;
	    width: 1000px;
	}
	
	
	#withdrawal_cause_area tr td{
		width: 143px;
	    text-align: center;
	    background-color: #fafafa;
	}
	
	
	#withdrawal_cause_area > table{
	    width: 100%;
	    border-top: 1px solid #c4c4c4;
	    border-bottom: 1px solid #c4c4c4;
	    border-collapse: collapse;
	}
	
	#withdrawal_cause_area textarea {
		margin: 8px auto;
	    width: 832px;
	    border: 1px solid #e2e2e2;
	    vertical-align: middle;
	}
	
	/* 비밀번호 인풋 */
	#insert_pw{
	    width: 347px;
	    display: inline-block;
	    margin: 7px 0 13px 0;
	    border: 1px solid #cbcbcb;
	    padding: 7px 0 0 10px;
	}
	
	#insert_pw > div input{
		padding-left: 4px;
	}
	
	#insert_pw div{
		margin-bottom: 7px;
	}
	
	#error{
		display: none;
	    color: red;
	    font-size: 15px;
	    margin-top: 9px;
	    margin-left: 106px;
	}
	
	
	/* 회원탈퇴 버튼 */
	#btn_button{
	    margin: 30px auto;
	    width: fit-content
	}
	
	#btn_button > a{
		margin : 0 30px;
	}
	
	#btn_button > a:first-child {
		border: 1px solid gray;
	    padding: 13px 60px 13px 60px;
	    background-color: #3b3b3b;
	    color: white;
	    letter-spacing: 2px;
	    cursor: pointer;
	}
	#btn_button > a:last-child {
		border: 1px solid gray;
	    padding: 13px 60px 13px 60px;
	    background-color: #ffffff;
	    color: #2c2c2c;
	    letter-spacing: 2px;
	    font-weight: bold;
	    cursor: pointer;
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
     	display: none;
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
	    cursor: pointer;
     }
     
     .close_text{
	    position: relative;
	    top: 81px;
	    left: 10px;
	    padding: 5px;
	    display: block;
	    font-size: 19px;
	    text-align: center;
     }
     
     #close_text01{
     	color: #535353;
     	font-weight: bold;
     }
     #close_text02{
     	color: red;
     }
     #modal_close_btn:hover {
     	background-color: #d4d4d4;
     	border-radius: 30px;
     }
     

	 
	 #close_text_answer{
		display: block;
	    margin: 0 auto;
	    width: 299px;
	    position: relative;
	    top: 116px;
	 }
	 
	 
	 
	 
	 .close_text_answer_yn{
	    display: inline-block;
	    font-size: 19px;
	    text-align: center;
	    clear: both;
	    border: 1px solid gray;
	    border-radius: 4px;
	    width: 97px;
	    height: 28px;
	    line-height: 29px;
	    cursor: pointer;
	 }
	 
	 
	 
	 #yes_btn{
	    float: right;
	    background-color: gray;
	    color: white;
	 }
	 
	 #no_btn{
	 	color: #161616;
	 }
	 
	 
	 
	 
	 
	.noreply_text{
		position: relative;
	    bottom: 10px;
	    left: 10px;
	}
	.reply_delete{
		font-size: 11px;
	    font-weight: bold;
	    color: red;
	}
	 
	 
	#no_text{
		color: red;
	    font-size: 14px;
	    display: none;
	    font-weight: bold;
	} 
	
</style>
<script type="text/javascript">

$(document).ready(function(){
	
	/* Modal 창 열기 */
	$("#withdrawal_btn").click(function(){
		  	  $("#delete_modal_all").css("display","block");
	});
		    
    /* Modal 창 닫기 */
    $("#modal_close_btn").click(function(){
  	  $("#delete_modal_all").css("display","none");
	});
	
});


$(document).on("click","#no_btn",function(){
	$("#delete_modal_all").css("display","none");
});

$(document).on("click","#yes_btn",function(){
	var nowPw = $("#input_pw").val(); // input 태그의 pw값
	alert("test")
$.ajax({
	  /* ajax db갔다
	  	   view -> Controller -> Model -> DB */
	  	   url : "memberdeleteplay.bizpoll",
	  	   type: "POST",
	  	   dataType: "json",
	  	   data: "id=${sessionScope.loginUser.id}&pw=" + nowPw,
	  	   success: function(data){
	  		   if(data.message == "-1"){
	                 location.href = "tunning.bizpoll";
	  		   }else{
	  			 $("#delete_modal_all").css("display","none");
	  			 $("#error").css("display","block");
	  			 $("#input_pw").select;
	  		   }
	  	   },
	  	   error:function(){
	  		   alert("System Error!!!");
	  	   }
	});

});
















</script>
</head>
<body id="member_delete">
	<div id="mem_delete_all">
		<div id=mem_delete_in>
			<div id="withdrawal_title_top">
				<span id="withdrawal_title">
					회원탈퇴
				</span>
			</div>
			
			<div id="withdrawal_text">
				<span>저희 쇼핑몰의 부족했던 점과 아쉬웠던 점을 적어주십시오.<br>
				더 좋은 모습으로 발전하도록 최선을 다하겠습니다.<br><br>
				앞으로 더 나은 모습으로 고객님을 다시 만날 수 있도록 노력하겠습니다.<br>
				그동안 이용해주신 것을 진심으로 감사드립니다.
				</span>
			</div>
			<form action="memberdeleteplay.bizpoll" name="frm-btn" id="frm-btn">
				<div id="withdrawal_cause_area">
					<table>
						<tr>
							<td>사유</td>
							<th>
								<textarea rows="10" cols="90" style="resize: none;"></textarea>
							</th>
						</tr>
					</table>
					<div id="insert_pw">
						<div>
							<span>비밀번호 </span><input type="password" name="input_pw" id="input_pw" style="margin-left: 48px;">
							<span id="error">! 비밀번호가 옳지 않습니다.</span>
						</div>
					</div>
					
					<div id="btn_button">
						<a id="withdrawal_btn">회원탈퇴</a>
						<a href="index.bizpoll" id="cancle_withdrawal_btn">탈퇴취소</a>
					</div>
					
				</div>
			</form>
		</div>
		<%@ include file="include/footer.jsp" %>
	</div>


	<!-- 삭제버튼 확인/취소 모달창 -->
<div id="delete_modal_all">
     <div id="delete_modal_line">
			<i class="fa fa-close" id="modal_close_btn"></i>
				<span id="close_text01" class="close_text">게시물을 삭제하시면 복구할 수 없습니다.</span>
				<span id="close_text02"  class="close_text">정말 삭제하시겠습니까?</span>
				
				<div id="close_text_answer">
					<div class="close_text_answer_yn" id="yes_btn">네</div>
					<div class="close_text_answer_yn" id="no_btn">아니오</div>
				</div>	
     </div>
</div>


</body>
</html>
  