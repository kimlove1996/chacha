<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include.jsp" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
#all_footer* {
	margin:0;
	padding: 0;
	font-family: 'Jeju Myeongjo', serif;
}
#all_footer ul{
	margin: 0;
	padding: 0;
}

#all_footer select{
	outline-width: 0;
}

#all_footer ul{
	padding: 0;
}

#foot_opt_list ul{
	list-style-type: none;
	
}
#all_footer{
    box-sizing: border-box;
    width: 100%;
    height: 264px;
    bottom: 0px;
    padding-top: 70px;
}
#foot_opt_list{
    width: 100%;
    height: 36px;
    background-color: #f8f8f8;
}
#foot_opt_list li{
	display: inline-block;
}
#all_footer a{
	text-decoration: none;
	color: black;
}
#foot_guide{
    width: fit-content;
    margin: 0 auto;
    font-size: 12px;
    line-height: 37px;
}
#cont{
    width: 1060px;
    margin: 0 auto;
	padding-top:33px;
}
#foot_guide>ul>li:first-child > a {
	font-weight: bold;
}
#cnl_qr > img:first-child{
	width: 79px;
	height: 23px;
}
#cnl_qr > img:last-child {
	width: 75px;
    border-radius: 15px;
    border: 1px solid rbga 24 12 22 21;
    box-shadow: 0 6px 11px 0 rgba(249, 183, 183, 0.2);
}
#cnl_qr{
	width: 94px;
	display: inline-block;
	float: left;
	
}
#foot_view{
    float: left;
    font-size: 13px;
    padding-left: 64px;
}
#foot_view th{
    padding-bottom: 147px;
    width: 132px;
    text-align: left;
}
#foot_view td{
	    line-height: 23px;
}
#foot_cs{
	display: inline-block;
	float: right;
}
#foot_cs strong{
	font-size: 28px;
	line-height: 36px;
}
#foot_cs strong:first-child{
	color: #727272;
}

#cs span{
	font-size: 10px;
	font-weight: bold;
}
#btn_fm_site > select{
	width: 200px;
    height: 30px;
}
#cs{
	padding-top: 23px;
}
</style>
</head>
<body>
<div id="all_footer">
	<div id="foot_opt_list">
		<div id="foot_guide">
			<ul>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">　|　영상정보처리기기운영, 관리방침　|　</a></li>
				<li><a href="#">약관안내　|　</a></li>
				<li><a href="#">윤리경영　|　</a></li>
				<li><a href="#">전자세금 계산서</a></li>
			</ul>
		</div>
	
		<div id="cont">
			<div id="cnl_qr">
				<img alt="" src="img/cnl.png">
				<img alt="" src="img/qr_code.png">
			</div>
			
		<div id="foot_view">
			<table>
				<tr>
					<th>(주)chacha company</th>
					<td>대표이사: 김성위/임동균<br>
					주소: 광주광역시 북구 서하로 174번길 65 사업자등록번호: 164-12-123456<br>
					통신판매업 신고번호: 제 1237-광주북구-019433호 <br>
					사업자 정보확인<br>
					개인정보 보호책임자: 대표이사 김성위<br>
					email: rlatjddnl12@naver.com<br>
					<strong>Copyright © chacha Retail. All Rights Reserved.</strong></td>
				</tr>
			</table>
			</div>
			
			<div id="foot_cs">
				<div id="btn_fm_site">
					<select>
						<option>패밀리싸이트 바로가기</option>
					</select>
				</div>
				<div id="cs">
					<strong>고객센터</strong><br>
					<strong>1899-9500</strong><br>
					<span>상담시간 : 오전9시~오후6시(토요일, 공휴일은 쉽니다)</span>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>