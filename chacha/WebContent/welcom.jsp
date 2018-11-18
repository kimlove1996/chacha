<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<       방법1.         meta http-equiv="refresh" content="3; url=index.bizpoll">작성해놓은 url로 3초 뒤 이동. -->
<title>Insert title here</title>
<style type="text/css">
	#all_welcom {
		margin: 0px;
    	padding: 0px;
    	font-family: 'Jeju Myeongjo', serif;
	}
	
	#welcom{
	    margin: 0px auto;
	}
	
	#welcom_all{
		padding-top: 182px;
	}
	#welcom_logo{
		width: 865px;
	    margin: 0 auto;
	}
	#welcom_text{
	    margin: 0px auto;
	    text-align: center;
	    border: 7px double lightpink;
	    border-radius: 31px;
	    color: #ffb6c1;
	    font-weight: bold;
	    width: 812px;
   		height: 146px;
	}
	#rCnt{
		display: inline-block;
		font-weight: bold;
	}
	#welcom_text_in{
	    padding-top: 53px;
	}
	#logo>img{
		width: 288px;
	    height: 79px;
	}
</style>

<script type="text/javascript">	/* 방법2 */
	var cnt=2;
	function countdown(){/* 함수 생성한것 뿐임. 호출 전까진 동작을 하지 않는다. */
		if(cnt == 0){/* cnt == 0 이라면 */
			clearInterval(s);	/* setinterval 함수를 종료하고 */
			location.href="index.bizpoll"; /* index.bizpoll로 이동하라! */
		}/* 아니라면, */
		document.getElementById("rCnt").innerHTML=cnt;/* rCnt에 cnt(3)을 넣고, cnt를 한번씩 --하라. */
		cnt --;
	}
	var s = setInterval(countdown, 1000); // Start!!! 1000=천 밀리세컨드, 즉 1초단위로 countdown()을 실행합니다.
</script>

</head>
<body id="all_welcom">
	<div id="welcom_all">
		<div id="welcom_logo">
			<div id="logo">
				<img alt="" src="img/chacha_pumkin2.png">
			</div>
		</div>
		<div id="welcom">
			<div id="welcom_text">
				<div id="welcom_text_in">
					<!-- <span>CHACHA 홈페이지에 오신 것을 환영합니다.<br> -->
					<span id="rCnt">3</span>초 뒤 메인화면으로 이동됩니다.</span><br>
					
					
					<!-- 카운트다운 방법 -->
					<!-- 1. meta 태그 활용 -->
					<!-- 2. javaScript의 setInterval() 활용-->
					
				</div>
			</div>
		</div>
	</div>	
</body>
</html>