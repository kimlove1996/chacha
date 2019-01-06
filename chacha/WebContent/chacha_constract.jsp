<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!--   index.jsp 페이지에 header.jsp 페이지를 추가 한것. -->
 <%@ include file="include/header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#indexbody{
		padding-top: 190px;
		margin: 0 auto;
	}


	body, ul, p{
		margin: 0;
		padding: 0;
		z-index: 8;
	}
	body{
		background-color: white; 
	}
	a{
		text-decoration: none;
	}
	ul{
		list-style-type: none;
	}
	.divsize{
		width: 768px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	#header{
		height: 169px;
		padding-top: 62px;
		position: relative;
	}
	#chacha_logo{
		margin: 0;
		padding: 0;
	}
	.c_logo{
		display: block;
		width: 240px;
		height: 60px;
		margin: 0 auto;
		box-sizing: border-box;
	}
	.lang{
		position: absolute;
		right: 0px;
		top: 14px;
	}
	#langselect{
		height: 30px;
		padding: 6px 8px 5px 7px;
		min-width: 98px;	/* ?? 박스가 늘어났당 */
		color: #333;
		border: 1px solid #ccc;
		-webkit-appearance: none;
		background-color: white!important;
		width: 98px;
		background: url("img/sel_arr.gif") 100% 50% no-repeat;/* 100% 좌우  50%수평 */
		outline-width: 0;
	}
	
	
	
	/* container */
	#container{position: relative;}
	#join_content{
		width: 460px;
		margin: 0 auto;
	}	
	.terms{
		margin-bottom: 20px;
		background-color: white;
		border: 1px dotted #dadada;
	}
	.terms_p{
		position: relative;
		margin: 0px;
		padding: 15px;
		display: block;
	}
	.terms_span{
		position: relative;
		display: block;
		height: 58px;
	}
	.terms_span > input{	/* 체크박스 위치 옮김. 숨김.*/
		position: absolute;
		right: 1px;
		top: 50%;
		width: 22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;
	}
	.terms_span > label{
		font-size: 14px;
		font-weight: 700;
		top: -1px;
		height: 58px;
		line-height: 20px;
		display: block;
		cursor:pointer;
		background: url("img/check_off.gif") 100% 50% no-repeat;	/* 체크라벨태그 붙임. 자리옮김. */
	}
	.terms_span > input:checked +label{
		background-image: url("img/check_on.gif");
	}
	
	#terms_ul{
		padding-bottom: 7px;
	}
	#terms_ul > li{
		display: block;
		padding: 13px 15px 7px;
	}
	
	
	/* li 1 */
	
	#terms_ul_li1{
		border-top: 1px dotted #f0f0f0;
	}
	.ul_li_span{
		position: relative;
		display: block;
		height: 24px;
		
	}.ul_li_span > input{
		position: absolute;
		right: 1px;
		top: 50%;
		margin-top: -11px;
		width: 22px;
		height: 22px;
		visibility: hidden;
	}
	.ul_li_span > input:checked +label{
		background-image: url("img/check_on.gif");
	}
	
	.ul_li_span > label {
		background: url("img/check_off.gif") 100% 50% no-repeat;
		display: block;
	}
	.label1{
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top: 0px;
		left: 0px;
		width: 100%
		
	}
	.span_only{
		color:#fa5850;;
		font-size: 12px;
		font-weight: 400px;
	}
	.span_select{
		color: gray;
		font-size: 12px;
		font-weight: 400px;
	}
	.terms_box{
		box-sizing: border-box;
		position: relative;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border: 1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}
	.article{
		margin-top: 0px;
	}
	h3.article_title {
		font-size: 12px;
		font-weight: 700px;
		line-height: 16px;
		color: #666;
		margin: 0;
		padding: 0;
		padding-bottom: 8px;
	}
	.article > p {
		display: block;
		font-size: 12px;
		line-height: 16px;
		color: #666;
	}
	.btn_type {
		width: auto;
		margin: 0px 5px;
		font-size: 20px;
		font-weight: 600px;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
	}
	.btn_agree{
		color: white;
		border: 1px solid #1fbx02;
		background-color: #9055A2;
	}
	.btn_default{
		color: #333;
		border: 1px solid #e7e7e7;
		background-color: #fff; 
	}
	.btn_double_area{
		margin: 30px -5px 0px;
		overflow: hidden;
	}
	.btn_double_area > span {
		display: block;
		float: left;
		width: 50%;
	}
	.group_join{
		margin: 20px 0 65px;
		text-align: center;
		color: #666;
		font-size: 12px;
	}
	.group_join > a{
		text-decoration: underline;
		color: #333;
	}
	#footer{
	padding: 15px 0;
	}
	#footer *{
		font-size: 11px;
		line-height: normal;
		list-style: none;
		color: #333;
	}
	#footer > ul {
		text-align: center;
		margin: 0 auto 9px;
	}
	#footer > ul > li {
		display: inline-block;
		border-left: 1px solid #dadada;
		padding: 0 5px 0 7px;
	}
	
	#footer > ul > li:first-child{
		border-left: 0px!important; /* 최우선으로 CSS적용(root) */
	}
	#address {
		margin: 0 auto;
		text-align: center;
	}
	#address *{
		font: 9px verdana;
	}
	#addr_logo{
		width: 54px;
		height: 10px;
	}
	#address a {
		font-weight: bold;
	}
	a:hover {
		text-decoration: underline;
	}
	#footer > ul > li a:hover{
		color: #1fbc02;
	}
	#construct_err_check {
		display:none;
	}
	#err_check_msg{
		display:inline-block;
		width:428px;
		height:24px;
		font-size:13px;
		font-weight:bold;
		line-height:24px;
		color:#f46664;
		padding:0px 15px;
		text-align:center;
	}
	
	
	
	
	
	
	
	
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#cbox").click(function(){	
		var ckAll = $("#cbox").is(":checked");
		/* 전체체크 버튼 클릭 돼있으면 ckAll true */
		/* 전체체크 버튼 클릭 안돼있으면 ckAll false */
		/* alert("상태: "+ ckAll); */
		//prop = check 하는 과정의 기능을 다루고 있음.
		
		
		
		/* 상단 체크박스가 체크되면 모두 체크됩니다 */
		if(ckAll == true){
			$(".ckboxs").prop("checked", true)
		}else{
			$(".ckboxs").prop("checked", false)
		}
		}); 
		
		
		
		/* 동의 버튼을 클릭했을 때 
		(필수1)과 (필수2)의 checked값을 가지고 와서 둘 다 true면
		페이지 이동
		아니면err_check display block 변경 */
		$(".btn_agree").click(function(){
			var ck1 = $("#li1box").is(":checked");
			var ck2 = $("#li2box").is(":checked");
			if(ck1 == true && ck2 == true) {
				location.href = "member.bizpoll";
			}else{
				$("#construct_err_check").css("display","block");
			}
		});
		
		/* 선택버튼 전부 다 클릭시 전체버튼 클릭 */
		$(document).on("click",".ckboxs", function(){
			var ck1 = $("#li1box").is(":checked");
			var ck2 = $("#li2box").is(":checked");
			var ck3 = $("#li3box").is(":checked");
			var ck4 = $("#li4box").is(":checked");
			
			if(ck1 == true && ck2 == true && ck3 == true && ck4 == true){
				$("#cbox").prop("checked", true);
			}else{
				$("#cbox").prop("checked", false);
			}
		});
		
		
	});
	
	
	/* 체크 ON, OFF
	$("#cbox").prop("checked", false);
	$("#cbox").prop("checked", true);
	
	체크 됐는지 확인
	$("#cbox").is(":checked");
	결과가 : true of false로 나옴. */
</script>



</head>
<body id="indexbody">
<div>
	<header>
		<div id="header" class="divsize">
			<h1 id="chacha_logo">
				<a href="index.jsp" class="n_logo">
					<img  class="c_logo" alt="차차 로고"	src="img/chacha4.png">
				</a>
			</h1>
			<div class="lang">
				<select id="langselect">
					<option>한국어</option>
					<option>English</option>
					<option>中國語</option>
				</select>
			</div>
		</div>
	</header>
	
	
	
	
	<article>
		<div id="container" class="divsize">
			<form id="join_content">
				<div class="terms">	<!-- 동의 약관 -->
					<p class="terms_p">
						<span class="terms_span">
							<input type="checkbox" id="cbox">
							<label for="cbox">
								이용약관, 개인정보 수집 및 이용,<br>
								위치정보 이용약관(선택), 프로모션 안내<br>
								메일 수신(선택)에 모두 동의합니다.
							</label>
						</span>
					</p>
					<ul id="terms_ul">
						<li id="terms_ul_li1">
							<span class="ul_li_span">
								<input type="checkbox" id="li1box" class="ckboxs">
								<label for="li1box" class="label1">
									차차 이용약관 동의<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
									<h3 class="article_title">여러분을 환영합니다.</h3>
								 	<p>차차 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은<br>
									 다양한 차차 서비스의 이용과 관련하여 차차 서비스를 제공하는 차차 <br>
									 주식회사(이하 ‘차차’)와 이를 이용하는 차차 서비스 회원(이하 ‘회원’) 또<br>
									 는 비회원과의 관계를 설명하며, 아울러 여러분의 차차 서비스 이용에 도움<br>
								  	 이 될 수 있는 유익한 정보를 포함하고 있습니다</p>
								  	 
									<h3 class="article_title">제 2 조 (목적)</h3>
									<p></p>
								</div>
							</div>
						</li>
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!-- li2 -->
						<li id="terms_ul_li2">
							<span class="ul_li_span">
								<input type="checkbox" id="li2box" class="ckboxs">
								<label for="li2box" class="label1">
									개인정보 수집 및 이용에 대한 안내<span class="span_only">(필수)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
								 	<p>정보통신망법 규정에 따라 차차에 회원가입 신청하시는 분께 수집하는 개인<br>
								 	정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 <br>
								 	안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
								  	 <br>
								  	 <h3 class="article_title">1. 수집하는 개인정보</h3>
									 <p>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 차차 <br>
									 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, <br>
									 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 <br>
									 경우, 차차는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다</p>
								</div>
							</div>
						</li>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<li id="terms_ul_li3">
							<span class="ul_li_span">
								<input type="checkbox" id="li3box" class="ckboxs">
								<label for="li3box" class="label1">
									위치정보 이용약관 동의<span class="span_select">(선택)</span>
								</label>
							</span>
							<div class="terms_box">
								<div class="article">
								 	<p>위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하<br>
								 	는 차차 위치기반 서비스를 이용할 수 있습니다.</p>
								  	 <br>
								  	 <h3 class="article_title">제 1 조 (목적)</h3>
									 <p>이 약관은 차차 주식회사 (이하 “회사”)가 제공하는 위치<br>
									 정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임<br>
									 사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
								</div>
							</div>
						</li>
						
						
						
						
						<li id="terms_ul_li4">
							<span class="ul_li_span">
								<input type="checkbox" id="li4box" class="ckboxs">
								<label for="li4box" class="label1">
									이벤트 등 프로모션 알림 메일 수신<span class="span_select">(선택)</span>
								</label>
							</span>
						</li>
						<li id="terms_ul_li4"></li>
					</ul>
				</div>
				<div id="construct_err_check">
					<span id="err_check_msg">차차 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</span>
				</div>
				<div class="btn_double_area"> <!-- 동의체크 -->
					<span><a href="index.jsp" class="btn_type btn_default">비동의</a></span>
					<span><a href="#" class="btn_type btn_agree">동의</a></span>
				</div>
			</form>
			
			<div class="group_join">
				회사, 동아리 등 단체에서 사용할 ID가 필요하세요?
				<a href="#">단체 회원 가입</a>
			</div>
		</div>
	</article>
	
	
	
	
	<footer> 
			<div id="footer" class="divsize">
				<ul>
					<li><a href="#">이용약관</a></li>
					<li><strong><a href="#">개인정보처리방침</a></strong></li>
					<li><a href="#">책임의 한계와 법적고지</a></li>
					<li><a href="#">회원정보 고객센터</a></li>
				</ul>
				<div id="address">
					<span>
						<a href="index.jsp">
							<img id="addr_logo" alt="chacha 하단 로고"	src="img/chacha4.png">			
						</a>
					</span>
					<span>Copyright</span>
					<span>©</span>
					<span>
						<strong>
							<a href="index.jsp">CHACHA Corp.</a>
						</strong>
					</span>
					<span>All Rights Reserved.</span>
				</div>
			</div>
		</footer>
	</div>
	
	
	
</body>
</html>