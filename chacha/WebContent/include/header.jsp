<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ include file="include.jsp" %> 
    
<%
	String path = request.getContextPath(); // 컨텍스트 경로 => 경로가 붙은 곳에 path를 이용하여( 현 위치를 잡아줘서 어디서 실행하든 내 위치를 잡아준다??
%>
    
<%
	String referer = request.getHeader("referer"); // 나에게 오기전의 바로 전의 페이지의 url을 담아줌.
%>  
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header.html</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

#header a{
	text-decoration: none;
	}
#header_wrap button{
	}
#header ul{
	padding: 0;
}

input {
	outline-color: pink;
}

#header_wrap {
     box-sizing: border-box;
     position: fixed;
     top: 0px;
     left:0px;
     width: 100%;
     background-color: white;
     z-index: 9;
}


#header{
     margin: 0px;
     padding: 0px;
     font-family: 'Jeju Myeongjo', serif;
}
#header_wrap ul {
     list-style-type: none;
     padding: 0;
}
   











/* 햄버거 버튼 */
	#btn_ham{
	float: right;
	}
	#opennave{
	cursor:pointer;
    background-color: transparent!important;
    font-size: 33px;
    display: inline-block;
    line-height: 30px;
    padding-right: 5px;
    color: #f9f5fa;
	}

















/* header(로그인, 회원가입, 마이페이지, 고객센터) */
#header_chacha1 {
     height: 30px;
     width: 100%;
     background-color: #9055A2;
     box-sizing: border-box;
}
#header_chacha1_in {
     margin: 0 auto;
}
#header_chacha1_ul {
    float: right;
    margin: 0px 145px;
}
#header_chacha1_ul>li>a {
     color: white;
     font-size: 12px;
     font-weight: bold;
     height: 30px;
     display: inline-block;
     padding: 0 10px;
     line-height: 28px;
}
#header_chacha1_ul>li {
     float: left;
     height: 30px;
     position: relative;
     font-size: 13px;
     line-height: 29px;
}
#header_chacha1_ul>li:hover { /* li태그에 마우스를 올렸을 떄 동작하는 내용 넣으면 됨. */
     background-color: #D9D4CF;
}
#header_chacha1_ul>li:hover #header_chacha1_dropdown {
     /* #header_chacha1_ul > li:hover 했을 때
               #header_chacha1_dropdown을 어떻게 변경할지 적용*/
     display: block;
}
#header_chacha1_dropdown {
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
          rgba(0, 0, 0, 0.19);
     display: none; /* 아예 존재 자체 없는것 */
     position: absolute;
     z-index: 1;
}
#header_chacha1_dropdown>a:hover {
     background-color: #8283a7;
     text-decoration: none;
}
#header_chacha1_dropdown>a {
    display: block;
    font-size: 12px;
    background-color: #71226e;
    color: white;
    padding: 0px 10px;
    border-bottom: 1px solid white;
    width: 71px;
    height: 27px;
}    















/* 로고이미지 검색창 */
#header_chacha2 {
    width: 1683px;
    height: 80px;
    margin: 15px 20px;
    box-sizing: border-box;
}










/* 차차2 검색창 */
#header_chacha2_wrap_search {
     height: 34px;
     display: inline-block;
     float: right;
     padding-top: 0px;
}
#header_chacha2_search{
     border: 2px solid lightgray;
     height: 34px;
     box-sizing: border-box;
     position: relative;
}
input#serch_keyword{
     width: 353px;
     height: 30px;
     font-size: 13px;
     box-sizing: border-box;
     border: 0px;
     padding-left: 10px;
     
}
#header_wrap input#serch_btn{
     width: 55px;
     height: 30px;
     background-color: lightgray;
     color: gray;
     font-size: 13px;
     border:0px;
     position: absolute;
     right:0;
     top:0;
}
#header_chacha2 img {
     display: inline-block;
     margin-top: -8px;
     width : 300px;
     height : 90px;
}









/* 네비게이션 메뉴바 */
#header_chacha3 {
     width: 100%;
     height: 49px;
     background-color: #dedcee;
     box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0
          rgba(0, 0, 0, 0.19);
     box-sizing: border-box; /* 크기고정 */
}
#header_chacha3_ul>li {
     float: left;
     box-sizing: border-box;
     height: 50px;
     position: relative;
     /* height를 먹여야 박스사이징(크기고정)이 먹힌다. */
}
#header_chacha3_ul>li:hover {
     background-color: white;
     border-top: 3px solid red;
}
#header_chacha3_ul>li:hover .under_dotted{
     border-bottom: 1px dotted gray;
}
#header_chacha3_ul>li>a:hover {
     color: #71226e;
}
#header_chacha3_ul>li>a {
    width: 109px;
    color: #9055A2;
    line-height: 50px;
    font-size: 13px;
    padding: 0 13px;
    display: inline-block;
    text-align: center;
}
#header_chacha3_in {
     width: 1903px;
     margin: 0 auto;
}
#header_chacha1_mypage {
     width: 70px;
     text-align: center;
}








#header_chacha3_ul>li:hover .under_line {
     display: block;
     top: 44px;
}
.header_nav {
     background-color: white;
     position: absolute;
     display: none;
}
.header_nav>ul>li>a {
     display: block;
     color: #9055A2;
     width: 135px;
     text-align: center;
     padding: 5px 0px;
}

.header_nav>ul>li>a:hover {
     background-color: #F16B6F;
}
































 #sidebar_wrap{
		width: 151px;
		color: #000!important;
		background:linear-gradient(to bottom, #9055a2, white 10%, #ffebff 154%);
		font-size: 15px;
		overflow: auto;
		height: 100%;
		position: fixed;
		z-index: 10;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		transition : 0.4s;
		right:0px;
		top:30px;
	}
	#sidebar_title{
		/* background-color: #616161; */
		color: white;
		overflow: hidden;
	}
	#sidebar_title > span{
		padding: 18px;
		border: none;
		display: block;
		float: right;
	}
	#sidebar_title > button{
		padding: 16px;
		border: none;
		display: block;
		overflow: hidden;
	    background-color: rgba(0, 0, 0, 0);
		color: white;
		font-size: 15px;
		height: 52px;
		float: left;
	}
	#sidebar_title > button:hover{
		/* background-color: #ccc!important; */
		color: black;
	}
	#sidebar_contant a{
		display: block;
		padding: 8px 16px;
		text-align: left;
		border: none;
		overflow: hidden;
		text-decoration: none;
	}
	#home{
		/* background-color: #4CAF50; */
		color: white!important;
	}
	#sidebar_contant a:not(#home){ 	/* 앵커태그 들 중 #home을 제외한다. */
		color:#853791;
	}
	#sidebar_contant a:hover{
		/* background-color: #ccc!important; */
		font-weight: bold;
	}
	
	#dropdown_wrap{
		/* background-color: rgba(0,0,0,0.19); */
		color: black;
		
		display: inline-block;
		position: relative;
		width: 100%;
	}
	#list{
		display:none;
	    min-width: 90%;
	    position: absolute;
	    box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2), 0 4px 20px 0 rgba(0,0,0,0.19);
	    margin: 0;
	    padding: 0;
	    z-index: 1;
	    background: linear-gradient(to bottom, #9055a2, white 10%, #ffebff 154%);
	    left: 15px;
	}

	#dropdown_wrap:hover #list{
		display: block!important;
		
	}
	#list > a{
		width: 100%;
		text-align: left;
		padding: 8px 16px;
	}















/* 사이드바 */
	#side_nav *{
		box-sizing: border-box;
	}

	#side_nav a{
		color: black!important;
		
	}
	#side_tip > hr{
	 border: 0.5px solid #d3d3d3;
	}
	#side_nav{
		position:fixed;
		width: 172px;
	    font-size: 13px;
	    float: right;
	    text-align: center;
	    background: linear-gradient(to bottom, #9055a2, white 10%, #fff8ff 154%);
	    box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19); 
		z-index: 20;
		top: 30px;
		right: 0;
		transition : 0.4s;
		height: 100%
	}
	#side_nav2{
		margin: 22px 13px;
	}
	#keyword span{
		float: left;
		padding-left: 3px;
		font-size: 12px;
	}
	.border_box{
	    border: 1px solid #d3d3d3;
	    width: 66px;
	    height: 21px;
	    text-align: center;
	    display: inline-block;
	    margin-top: 4px;
	    line-height: 20px;
	}
	.border_box:hover{
		font-weight: bold;
   		color: #170313;
	}
	#side_sns img{
		padding: 0 5px;
	}
	#bookmark{
	    height: 52px;
	    line-height: 50px;
	    text-align: left;
   		font-weight: bold;
	}
	#bookmark span{
		color: red;
	}
	#point_font {
		color: red;
	}
	#close_side_btn{
	 	cursor:pointer;
		float: right;
	    border: none;
	    background: none;
	    padding-top: 10px;
	}































	
	
	
	
	
	
	
	
	
	
	
	
	
	
		/* scrollToTop */

     }
     div#title{
          background-color: black;
          color: white;
          padding: 30px;
     }
     div#content{
          background-color: lightgray;
          padding: 30px 30px 2500px;
     }
	#myBtn{
          width: 100px;
          height: 100px;
          background-color: #e6d5d5;
          color: #2b2b2b;
          transform : rotate(315deg);
          position: fixed;
          right: -50px;
          bottom: -50px;
          text-align: center;
          font-size: 12px;
          z-index: 20;
     }
     #myBtn:hover {
          border-top: 1px dashed black;
     }




























/* 모달 */
     #modal_all{
     	z-index: 10;
     	position: fixed;
     	top: 0;
     	left: 0;
     	width: 100%;
     	height: 100%;
     	overflow: auto;
     	background-color: rgba(0, 0, 0, 0.4);
     	padding-top: 55px;
     	display: none;
     }
     
     #close_btn{
     	position: absolute;
     	right: 486px;
     	top: -22px;
     	color: black!important;
     	font-size: 25px;
     	padding: 5px;
     	display: block;
     }
     
     #close_btn:hover {
     	background-color: #d4d4d4;
     	border-radius: 30px;
     }
     
     #modal_line{
          margin: 0 auto;
          width: 666px;
  		  height: 810px;
          border:thin solid #EAEAEA;
          background-color: white;
          border-radius: 72px;
          
     }
     
     #content_layout{
          width: 460px;
          margin: 0 auto;
          position: relative;
     }
     
     
     #chachalogo img{
          display: block;
         width: 400px;
          margin: 60px 20px auto;
     }
     .login_input{
          background-color: white;
          border: 1px solid #dadada;
          width: 408px;
          height: 29px;
          margin-bottom: 14px;
          padding: 10px 35px 10px 15px;
          cursor: pointer;
          border-radius:30px;
     
     }
     .input_IDPW{
          display:inline-block;
          width: 408px;
          height: 16px;
          border-width: 0px;
          padding: 7px 0px 7px 0px;
          cursor: pointer;
          outline: 0;
     }
     
     
     #btn_login{
          width: 460px;
          height: 59px;
          font-size: 22px;
          text-align: center;
          background-color: #9055A2;
          color: white;
          display: block;
          padding-top: 2px;
          line-height: 59px;
          border-radius: 30px;
     }
     #login_botton{
          margin-top: 30px;
     }
     
     #member{
		color: #8C8C8C;
	    font-size: 12px;
	    text-align: center;
	    list-style-type: none;
	    position: absolute;
	    width: 100%;
	    top: 470px;
     }
     #member > a {
          color: #8C8C8C;
     }
     .sns_icon{
	    float: left;
	    width: 13px;
	    margin: 13.5px;
	    margin-right: 6px;
     }
     .sns_logo{
	    display: inline-block;
	    width: 116px;
	    height: 38px;
	    border: 1px solid lightgray;
	    border-radius: 30px;
	    margin-top: 10px;
     }
     #sns_login{
	    display: block;
	    font-size: 12px;
	    width: 290px;
	    height: 57px;
	    margin: 0 auto;
     }
     #another_login{
     	width: 100%;
     }
     
     .login_text{
        margin-top: 14px;
        color: gray;
     }
     #naver_login{
     	float: right;
     }
     #kakao_login{
     	float: left;
     }
     
     
     #modal_hr {
     	margin-top: 20px;
     	display: block;
     }
     
     
     
     
     
     
     
     #log_footer{
    	 position: relative;
    	 top:195px;
     }
     #log_footer *{
          font-size: 11px;
          line-height: normal;
          list-style: none;
          color: #333;
     }
     #log_footer > ul {
          text-align: center;
          margin: 0 auto 9px;
     }
     #log_footer > ul > li {
          display: inline-block;
          border-left: 1px solid #dadada;
          padding: 0 5px 0 7px;
     }
     
     #log_footer > ul > li:first-child{
          border-left: 0px!important; /* 최우선으로 CSS적용(root) */
     }
     #login_address {
          margin: 0 auto;
          text-align: center;
     }
     #address *{
          font: 9px verdana;
     }
     #addr_logo{
          width: 63px;
          height: 11px;
     }
     #address a {
          font-weight: bold;
     }
     #log_footer > ul > li a:hover{
          color: #1fbc02;
     }
     
     #heade section{
     	position: relative;
     }
     
     
     
     
     
     
     
     /* password 보이기 */
     #ckpw{
	    margin-top: 13px;
     }








	#err_check{
	display: none;
	font-size: 12px;
    display: block;
    text-align: right;
    margin-top: 10px;
    color: #ef3232;
	}






</style>
<script type="text/javascript">
	$(document).ready(function(){
	
	
	/* 사이드 메뉴 열기 */
	$(document).on("click","#opennave", function(){
		$("#side_nav").css("right","0");
	});
	
	/* 사이드 메뉴 닫기 */
	$(document).on("click","#close_side_btn", function(){
		$("#side_nav").css("right","-220px");
	});
	});
	
	
	
	/* scrollToTop */
	$(document).ready(function(){
	     $("#myBtn").css("display","none");
	})
	$(window).scroll(function(){
	     if($(document).scrollTop() > 20) {
	          $("#myBtn").css("display","block");
	     }else{
	          $("#myBtn").css("display","none");
	     }
	});
	$(document).on("click","#myBtn", function(){
	     /* $(document).scrollTop(0); */
	     $("html, body").animate({scrollTop: 0}, 600);
	});
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
	
	 $(document).ready(function() {
         $("#inputid").focus(function() {
             $("#chacha_id").css("background-color", "#EAEAEA");
             $("#inputid").css("background-color", "#EAEAEA");
         });
         $("#inputid").blur(function() {
             $("#chacha_id").css("background-color", "white");
             $("#inputid").css("background-color", "white");
         });
         $("#inputpw").focus(function() {
             $("#chacha_pw").css("background-color", "#EAEAEA");
             $("#inputpw").css("background-color", "#EAEAEA");
         });
         $("#inputpw").blur(function() {
             $("#chacha_pw").css("background-color", "white");
             $("#inputpw").css("background-color", "white");
         });
         
         
         /* Modal 창 켜기 */
         $("#header_login").click(function(){
       	  $("#modal_all").css("display","block");
         });
         
         /* Modal 창 닫기 */
         $("#close_btn").click(function(){
       	  $("#inputid").val("");
       	  $("#inputpw").val("");
       	  $("#modal_all").css("display","none");
         });
    });
    
    
    
    
    
    
    	/* 패스워드 보이기 */
	     $(document).on("click","#ckpw", function(){
	         var pw = $("#inputpw").attr("type");
	         if(pw === "password"){
	             $("#inputpw").attr("type","text");
	         }else{
	             $("#inputpw").attr("type","password");
	         }
	    });
    
    	
    	
    	
    	
    	
    	/* 로그인 버튼을 클릭했을 떄 유효성 체크 */
    	$(document).on("click","#btn_login",function(){
    		/* input의 id와 pw값을 입력. */
    		var val1 = $("#inputid").val();
    		var val2 = $("#inputpw").val();
    		/* alert(val1 + ", " + val2); */
    		
    		
    		
    		
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
    				  			   location.href=location.href;
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
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    
	
</script>







</head>
<body id="header">
     <header>
		   
          <div id="header_wrap">
              <!-- html명으로 이름지으면 중복될 일이 없따. -->
              <div id="header_chacha1">
              
              <!-- 사이드 네비게이션 메뉴1 -->
     <div id="side_nav">
	<div id="bookmark">
		<a href="<%=path%>/#"><span>　　★</span> BOOKMARK</a>
		<button id="close_side_btn">X</button> 
		
	</div>
	<br>
	<div id="side_nav2">
		<div id="keyword">
			<div  id="season" class="side_menu">
				<span>계절별 컬러</span><br>
					<a href="<%=path%>/#"><div class="border_box">Spring</div></a>
					<a href="<%=path%>/#"><div class="border_box">Summer</div></a><br>
					<a href="<%=path%>/#"><div class="border_box">Fall</div></a>
					<a href="<%=path%>/#"><div class="border_box">Winter</div></a><br><br><br>
			</div>
			<div  id="hotkeyword" class="side_menu">
				<span>핫 키워드</span><br>
					<a href="<%=path%>/#"><div class="border_box">S, M, L</div></a>
					<a href="<%=path%>/#"><div class="border_box">지점찾기</div></a><br>
					<a href="<%=path%>/#"><div class="border_box">가을신상</div></a>
					<a href="<%=path%>/#"><div class="border_box">기모안감</div></a><br>
					<a href="<%=path%>/#"><div class="border_box">균일가 세일</div></a>
					<a href="<%=path%>/#"><div class="border_box">스웨이드</div></a><br>
					<a href="<%=path%>/#"><div class="border_box">데일리</div></a>
					<a href="<%=path%>/#"><div class="border_box">차차메이드</div></a><br><br><br><br>
			</div>
		</div>	
		<div id="side_sns">
			<a href="<%=path%>/#"><img alt="인스타그램" src="<%=path%>/img/sns1.gif"></a>
			<a href="<%=path%>/#"><img alt="페이스북" src="<%=path%>/img/sns2.gif"></a>
			<a href="<%=path%>/#"><img alt="커머셜" src="<%=path%>/img/sns3.gif"></a>
		</div><br><br><br>
		<div id="side_tip">
			<a href="<%=path%>/#"><span id="point_font">★ 앱다운 5% 쿠폰</span></a>
			<hr><br>
			<a href="<%=path%>/#"><span>3만원 이상 무료배송</span></a>
			<hr><br>
			<a href="<%=path%>/#"><span>회원가입 2만원 혜택</span></a>
			<hr><br>
			<a href="<%=path%>/#"><span>교환/반품접수</span></a>
			<hr><br>
			<a href="<%=path%>/#"><span>배송조회</span></a>
			<hr><br>
			<a href="<%=path%>/#"><span>최근 본 상품</span></a>
			<hr><br>
		</div>
	</div>

</div>
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              <!-- 사이드 네비게이션 메뉴2 -->
                   <div id="header_chacha1_in">
              <!-- 햄버거 버튼 -->
					<div id="btn_ham">
						<span id="opennave">≡</span>
					</div>
             	   </div>
             	   
             	   
             	   
             	   
             	   
             	   
                        <ul id="header_chacha1_ul">
                        
                        	<!-- c:choose = if문 같은 성질을 가진다. -->
                        	<c:choose> 
                        		<c:when test="${empty sessionScope.loginUser}"> <!-- 언제? empty(비어있는)세션값에 로그인유저라는 값을 가지고 올때~ -->
	                             <li><a href="#" id="header_login">로그인</a></li>
	                             <li><a href="<%=path%>/chacha_constract.bizpoll">회원가입</a></li>
                        		</c:when>
                        		<c:otherwise><!-- else의 성질을 갖는다. -->
                        			<li>
                        				${sessionScope.loginUser.name}(${sessionScope.loginUser.id})
                        			</li>
	                                <li><a href="<%=path%>/loginOut.bizpoll">로그아웃</a></li>  <!--  에이젝슨 쓰면 방식 욜케 안함.  -->
                        		</c:otherwise>
                             </c:choose>
                             
                             
                             <li><a id="header_chacha1_mypage" href="#">마이페이지▼</a>
                             <c:choose>
                             	<c:when test="${!empty sessionScope.loginUser}">
                                  <div id="header_chacha1_dropdown">
                                      <a href="<%=path%>/#">주문/배송조회</a> 
                                      <a href="<%=path%>/#">장바구니</a> 
                                      <a href="<%=path%>/#">위시리스트</a>
                                      <a href="<%=path%>/memberUpdate.bizpoll">회원정보수정</a>
                                      <a href="<%=path%>/memberpwupdateplay.bizpoll">비밀번호수정</a>
                                      <a href="<%=path%>/memberdelete.bizpoll">회원탈퇴</a>
                                  </div>
                                 </c:when>
                              </c:choose>   
                             </li>
                             <li><a href="<%=path%>/#">고객센터</a></li>
                        </ul>
                   </div>
              
              
              
              
              
              
              
              
              
              
              
             
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              <div id="header_chacha2">
                   <a href="<%=path%>/index.bizpoll"> <img id="chachalogo" src="<%=path%>/img/chacha_pumkin2.png"
                        alt="chacha로고">
                   </a>
                   <div id="header_chacha2_wrap_search">
                        <div id="header_chacha2_search">
                             <input id="serch_keyword" type="text" placeholder="검색어를 입력하세요.">
                             <input id="serch_btn" type="submit" value="검색">
                        </div>
                   </div>    
              </div>
              <div id="header_chacha3">
                   <div id="header_chacha3_in">
                        <ul id="header_chacha3_ul">
                             <li class="no_under"><a href="<%=path%>/#">NEW</a></li>
                             <li class="no_under"><a href="<%=path%>/#">BEST</a></li>
                             <li><a href="<%=path%>/#">SALE</a>
                                  <div id="SALE_TYPE" class="under_line header_nav">
                                      <ul>
                                           <li><a href="<%=path%>/#" class="under_dotted">5%</a></li>
                                           <li><a href="<%=path%>/#" class="under_dotted">10%</a></li>
                                           <li><a href="<%=path%>/#" class="under_dotted">반값</a></li>
                                      </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>#">TOP</a>
                                  <div id="TOP_TYPE" class="under_line header_nav">
                                      <ul>
                                           <li><a href="<%=path%>/#" class="under_dotted">블라우스</a></li>
                                           <li><a href="<%=path%>/#" class="under_dotted">셔츠</a></li>
                                      </ul>
                                  </div>
                             </li>
                                  
                                  
                                  
                                  
                                  
                             <li><a href="<%=path%>/#">PANTS</a>
                                  <div id="PANTS_TYPE" class="under_line header_nav">
                                  	  <ul>
	                                      <li><a href="<%=path%>/#" class="under_dotted">청바지</a></li> 
	                                      <li><a href="<%=path%>/#" class="under_dotted">반바지</a></li>  
	                                      <li><a href="<%=path%>/#" class="under_dotted">슬렉스</a></li> 
                                      </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">SKIRT</a>
                                  <div id="SKIRT_TYPE" class="under_line header_nav">
                                  	  <ul>
	                                      <li><a href="<%=path%>/#" class="under_dotted">LONG</a></li>  
	                                      <li><a href="<%=path%>/#" class="under_dotted">SHORT</a></li> 
                                      </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">ACC</a>
                                  <div id="ACC_TYPE" class="under_line header_nav">
                                 	  <ul>
	                                      <li><a href="<%=path%>/#" class="under_dotted">목걸이</a></li>  
	                                      <li><a href="<%=path%>/#" class="under_dotted">팔찌</a></li>  
	                                      <li><a href="<%=path%>/#" class="under_dotted">귀걸이</a></li>  
	                                      <li><a href="<%=path%>/#" class="under_dotted">반지</a></li> 
                                      <ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">BAG&SHOES</a>
                                  <div id="OTHER_TYPE" class="under_line header_nav">
                                  	<ul>
                                      <li><a href="<%=path%>/#" class="under_dotted">가방</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">운동화</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">구두</a></li> 
                                    </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a id="dress" href="<%=path%>/#">DRESS</a>
                                  <div id="DRESS_TYPE" class="under_line header_nav">
                                  	<ul>
                                      <li><a href="<%=path%>/#" class="under_dotted">파티룩</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">하객룩</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">데일리룩</a></li> 
                                    </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">OUTER</a>
                                  <div id="OUTER_TYPE" class="under_line header_nav">
                                  	<ul>
                                      <li><a href="<%=path%>/#" class="under_dotted">패딩</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">코트</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">가디건</a></li> 
                                    </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">UNDERWERE</a>
                                  <div id="UNDERWRER_TYPE" class="under_line header_nav">
                                	<ul> 
                                      <li><a href="<%=path%>/#" class="under_dotted">보정</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">커플</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">데일리</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">섹시</a></li> 
                                     </ul>
                                  </div>
                             </li>
                                  
                                  
                             <li><a href="<%=path%>/#">BEACHWERE</a>
                                  <div id="BEACHWERE_TYPE" class="under_line header_nav">
                                  	<ul>
                                      <li><a href="<%=path%>/#" class="under_dotted">레쉬가드</a></li>  
                                      <li><a href="<%=path%>/#" class="under_dotted">비키니</a></li> 
                                     </ul>
                                  </div>
                             </li>
                             
                             <li><a href="<%=path%>/boardList.bizpoll">Q & A</a>
                                  <div id="" class="under_line header_nav">
                                  </div>
                             </li>
                        </ul>
                   </div>
              </div>
          </div>
          
     <div id="myBtn">
     <span>TOP</span>
     </div>
     
     </header>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
<!-- 모달창 -->
<div id="modal_all">
     <div id="modal_line">
     <div id="content_layout">
     	<span id="close_btn"><i class="fa fa-close"></i></span>
          <header>
              <div id="chachalogo">
                   <a href="<%=path%>/index.bizpoll">
                        <img alt="차차로고" src="<%=path%>/img/chacha3.png">
                   </a>
              </div>
          </header>
          
          <section>
        <!--   <form action="LoginPlay.bizpoll" method="POST" name="frm_login" id="frm_login"> -->
                   <div class="login_input" id="chacha_id">
                        <input type="text" placeholder="ID" class="input_IDPW" id="inputid" name="inputid">
                   </div>
                   
                   <div class="login_input" id="chacha_pw">
                        <input type="password" placeholder="Password" class="input_IDPW" id="inputpw" name="inputpw"> 
                        <input type="checkbox" id="ckpw">check
                   </div>
                   
                   <div id="login_botton">
                   <a href="" id="btn_login">로그인</a>
                   <span id="err_check">로그인 정보가 옳지 않습니다.</span>
                   </div>
          <!--  </form> -->
           
            <div id="another_login">
                 <div id="sns_login">
	                   <div  id="naver_login" class="sns_logo">
	                        <a href="https://nid.naver.com/nidlogin.login?mode=form&url=https%3A%2F%2Fwww.naver.com">
	                             <img class="sns_icon" alt="네이버로그인" src="<%=path%>/img/icon_naver.gif"><div class="login_text"> | 네이버로그인</div>
	                        </a>
	                   </div>
	                   
	                   <div  id="kakao_login" class="sns_logo">
	                        <a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fredirect_uri%3Dkakaojs%26response_type%3Dcode%26state%3Dba6mldnvbquohd11u3g6%26proxy%3DeasyXDM_Kakao_tvqy3um1fj_provider%26ka%3Dsdk%252F1.24.0%2520os%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fpage.kakao.com%26origin%3Dhttps%253A%252F%252Fpage.kakao.com%26client_id%3D49bbb48c5fdb0199e5da1b89de359484">
	                             <img class="sns_icon" alt="카카오로그인" src="<%=path%>/img/icon_kakao.gif"><div class="login_text"> | 카카오로그인</div>
	                        </a>
	                        
	                   </div>
                 </div>
            </div> 
              
              <div id="member">
              <hr id="modal_hr">
                   <a href="<%=path%>/#">아이디찾기</a>
                   &nbsp;
                   <span class="si">|</span>
                   &nbsp;
                   <a href="<%=path%>/#">비밀번호 찾기</a>
                   &nbsp;
                   <span class="si">|</span>
                   &nbsp;
                   <a href="http://localhost:8081/chacha/chacha_constract.html">회원가입</a>
              </div>
          </section>
          
          <aside>
          </aside>
          
          <footer>
              <div id="log_footer">
                   <ul>
                        <li><a href="<%=path%>/#">이용약관</a></li>
                        <li><strong><a href="<%=path%>/#">개인정보처리방침</a></strong></li>
                        <li><a href="<%=path%>/#">책임의 한계와 법적고지</a></li>
                        <li><a href="<%=path%>/#">회원정보 고객센터</a></li>
                   </ul>
                   <div id="login_address">
                        <span>
                             <a href="http://www.naver.com">
                                  <img id="addr_logo" alt="차차 로고" src="<%=path%>/img/chacha4.png">             
                             </a>
                        </span>
                        <span>Copyright</span>
                        <span>©</span>
                        <span>
                             <strong>
                                  <a href="<%=path%>/#">CHACHA Corp.</a>
                             </strong>
                        </span>
                        <span>All Rights Reserved.</span>
                   </div>
              </div>
          </footer>
     </div>
     </div>
</div>

     
     
     
     
     
     
</body>
</html>