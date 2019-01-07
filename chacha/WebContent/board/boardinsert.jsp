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
	#boardinsert{
		padding: 0;
		margin: 0;
		outline-width: 0;
		list-style-type: none;
	}


	#boardinsert_all{
		padding-top: 233px;
	}
	
	#title{
		border: none;
	    font-weight: bold;
	    font-size: 15px;
	}
	
	#qnatitle{
	    width: 170px;
	    margin: 0 auto;
	    text-align: center;
	}
	#qnatitle > h1{
		font-size: 18px;
	}
	#qnatitle > p{
	    font-size: 12px;
	    display: inline-block;
	    border-top: 1px dotted gray;
	    padding-top: 15px;
	}	
	#table_area_in table{
	    border-top: 1px solid #c9c9c9;
	    border-collapse: collapse;
		width:100%;
	}
	
	#table_area_in table tr:last-child td{
		padding-bottom: 8px;
	}
	
	#table_area_in table tr:last-child textarea{
		margin: 5px 0 8px 0px;
	    font-size: 13px;
	}
	
	
	#table_area_in{
		margin: 0 auto;
		width: 1525px;
	}
	
	#table_area_in select{
		height: 21px;	
	}
	#table_area_in input{
		vertical-align: middle;	
	}
	
	
	#writer{
		border: none;
	    font-size: 16px;
	    color: #0f0e0e;
	    font-family: 'Jeju Myeongjo', serif;
	}
	
	.w_h{
		width: 48px;
	}
	
	
	
	#table_area_in tr{
		border-bottom: 1px solid #ededed;
		
	}
	
	#table_area_in th{
	    padding-left: 29px;
	    text-align: left;
	    font-size: 11px;
	    color: #707070;
	    padding-right: 25px;
	    border-right: none;
	    border-left: none;
	}
	#table_area_in td{
		width: 91%;
	    height: 41px;
	    border-left: none;
	    border-right: none;
	}
	
	
	
	.bottom_button{
	    border: 1px solid black;
	    width: 93px;
	    height: 27px;
	    display: inline-block;
	    text-align: center;
	    line-height: 27px;
	    border-radius: 3px;
	    line-height: 30px;
	}
	
	.error{
		display:none;
		font-size: 12px;
	    color: red;
	    font-weight: bold;
	}
	
	
	
	
	
	
	
	
	
	#bottom_button_area {
		margin-top: 8px;
	}
	
	
	
	#view_list{
		background-color: gray;
	    color: #f0f0f0;
	    border: 1px solid #b4b4b4;
	    cursor: pointer;
	}
	
	#cancle {
	    float: right;
	    margin-right: 9px;
	    background-color: #6e7c85;
	    border: 1px solid #a8aaab;
	    color: #f0f0f0;
	    cursor: pointer;
	}
	
	#enroll{
		float: right;
	    margin-right: 9px;
	    background-color: #ffb558;
	    border: 1px solid #ffb682;
	    color: #f0f0f0;
	    cursor: pointer;
	}
	
	
	
</style>
<script type="text/javascript">
	$(document).on("click","#enroll", function(elClickedObj){
		var title = $("#title").val();
		//스마트에디터로 content부분 값 넘겨받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		if(title == ""){
			$("#title").focus();
			$(".error").css("display","inline-block");
			return;
		}
		$("#frm_bin").submit();
		/* alert("보내기 성공!") */
	});
	
	
	
	$(document).on("click","#btn-file", function(){
		$("#uploadfile").click();
	});
	
	
	$(document).on("change","#uploadfile",function(){
		var filesize = $(this)[0].files; /* File( 들 )을 첨부할 수 있으니 배열타입의 값을 담아놓는다. */
		
		if(filesize.length < 1){ //파일이 안들어왔을 경우.
			$("#file-name").text("선택된 파일 없음.");
			$("#file_close_btn").css("display", "none");
		}else{
			/*  첨부파일이 있다면 첨부파일의 이름과 사이즈를 불러옴. */
			var filename = this.files[0].name;
			var filesize = this.files[0].size;
			var maxSize = 10 * 1024 * 1024; /* 10메가 바이트로 용량 제한.*/
			
			if(filesize > maxSize){ //용량 제한 걸림.
				alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.");
				$("#file-name").text("선택된 파일 없음.");
				
				/* 화면단에서는 input type = "file"용량을 제한하는 코드가 없습니다. 
					따라서 경고창은 뜨나 실제 10mb 넘는 파일이 들어가 있는 상태가 됩니다.
					반드시 초기화를 시켜 없애는 과정이 필요합니다. =>만약 과정을 거치지 않는 경우 Action단위에서 오류 발생.*/
				$("#uploadfile").val("");
				$("#now-file-size").val(0);
			}else{//첨부 가능.
				$("#now-file-size").val(filesize);
				$("#file-name").text(filename);
				$("#file_close_btn").css("display","inline-block");
			}
		}
		
	});		
		
		
	$(document).on("click","#file_close_btn",function(){
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));//clone(trne)초기화
		$("#uploadfile").val("");
		$("#file-name").text("선택된 파일없음");
		$("#file_close_btn").css("display","none");
	});
	
	
	
	$(document).on("change","#qna_selectbox",function(){
        var qselectbox = $("#qna_selectbox").val();
 		$("#title").val(qselectbox+" 합니다.");
	});
	
</script>

</head>
<body id="boardinsert">
<div id="boardinsert_all">
	<form action="boardInsertPlay.bizpoll" id="frm_bin" name="frm_bin" method="post" enctype="multipart/form-data">
	<div id="qnatitle">
		<h1>고 객 문 의 게 시 판</h1>
		<p>상품문의 게시판입니다.</p>
	</div>

	<div id="table_area">
		<div id="table_area_in">
			<table>
				<tbody>
					<tr>
						<th>SUBJCET</th>
						<td>
							<select id="qna_selectbox">
								<option  value="배송문의" selected="selected">배송문의</option>
								<option  value="교환반품">교환반품</option>
								<option  value="주문서변경">주문서변경</option>
								<option  value="상품문의">상품문의</option>
							</select>
							<input id="title" name="title" readonly="readonly" type="text" value="배송문의합니다.">
							<span class="error">*제목은 필수입니다.</span>
						</td>
					</tr>
					<tr>
						<th>WRITER</th>
						<td>
							<input type="text" name="writer" id="writer" value="${sessionScope.loginUser.id}" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>CONTEXT</th>
						<td>
							<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
							<textarea class="form-control" id="content" name="content" cols="160" rows="30" name="content">
							
							
							
							
							</textarea>
						</td>
					</tr>
					<tr>
						<th>UCC URL</th>
						<td>
							<input> 
							넓이<input class="w_h">
							높이<input class="w_h">
						</td>
					</tr>
					<tr>
						<th>FILE</th>
						<td>
							<div>
								<input type="file" name="uploadfile" id="uploadfile" style="display: none;">
								<input type="button" name="btn btn-file" id="btn-file" value="파일선택">
								<span class="file" id="file-name" style="height: 29px; border: none;">${boardview.filename}</span>
								<i class="fa fa-close" id="file_close_btn" style="display: none;"></i>
							</div>
						</td>
					</tr>
					<!-- <tr>
						<th>FILE2</th>
						<td>
							<div>
								<input type="file" name="uploadfile" id="uploadfile">
							</div>
						</td>
					</tr>
					<tr>
						<th>FILE3</th>
						<td>
							<div>
								<input type="file" name="uploadfile" id="uploadfile">
							</div>
						</td>
					</tr> -->
					<tr>
						<th>PASSWORD</th>
						<td>
							<input>
						</td>
					</tr>
					<tr>
						<th>비밀글설정</th>
						<td>
							<input type="radio" name="secretyn" value="1"><span>공개글</span>
							<input type="radio" name="secretyn" value="2"><span>비공개글</span>
						</td>
					</tr>
					<tr>
						<th>자동등록방지<br>보안문자</th>
						<td></td>
					</tr>
					<tr>
						<th>개인정보 수집 및 <br>이용 동의</th>
						<td>
							<textarea rows="10" cols="50">
								■ 개인정보의 수집·이용 목적
								서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
								
								■ 수집하려는 개인정보의 항목
								이름, 주소, 연락처, 이메일 등
								
								■ 개인정보의 보유 및 이용 기간
								회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다. 
							</textarea><br>
							개인정보 수집 및 이용에 동의하십니까
							 <input type="radio" name="agreedisagree">동의함
							 <input type="radio" name="agreedisagree">동의안함
						</td>
					</tr>
				</tbody>
			</table>
			
			<div id="bottom_button_area">
				<a id="view_list" class="bottom_button">목록보기</a>
				<a id="cancle" class="bottom_button">취소</a>
				<a id="enroll" class="bottom_button">등록</a>
			</div>
			
		</div>
	</div>



	</form>

</div>

<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "<%=path%>/smarteditor/SmartEditor2Skin.html",
		fCreator:"createSEditor2"
	});
</script>





</body>
</html>
<%@ include file="../include/footer.jsp" %>  