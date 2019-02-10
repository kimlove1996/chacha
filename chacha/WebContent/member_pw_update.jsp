<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<!--   index.jsp 페이지에 header.jsp 페이지를 추가 한것. -->
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#indexbody {
     padding-top: 190px;
     z-index: 8;
}

a {
     text-decoration: none;
}
ul {
     list-style-type: none;
}
/* 상단 차차로고 */
#header {
     position: relative;
}
#line {
     margin: 0 auto;
     width: 700px;
     height: 921px;
     margin-top: 220px;
}
.c_logo {
     display: block;
     margin: 0 auto;
     width: 240px;
     height: 60px;
}
/* 번역셀렉트 박스 */
.lang {
     position: absolute;
     right: 9px;
     top: -12px;
}
#langselect {
    font-size: 12px;
    padding: 1px 8px 2px 17px;
    min-width: 80px;
    height: 22px;
}
/*  인삿말 */
#welcome {
     text-align: center;
}
#heart {
     color: red;
}
/* 핑크 싸이클 */
#outline {
     display: inline-block;
     margin: 40px auto;
     width: 700px;
     height: 700px;
     border: 9px double #f1e0ef;
     border-radius: 375px;
}
#welcome_in {
     color: lightslategray;
}
.insert_info {
     width: 359px;
     height: 63px;
     margin-top: 20px;
     position: relative;
     top: 73px;
     margin: 0 auto;
     border: none;
     border-color: #dbc4f3;
     border-bottom-style: solid;
}
.insert_label {
     position: absolute;
     transition: all .4s cubic-bezier(.25, .8, .25, 1);
     transition-duration: 0.3s;
     color: #979797;
     top: 36px;
     left: 10px;
     z-index: 3;
     font-size: 15px;
}
.set {
     width: 99%;
     height: 24px;
     display: block;
     position: relative;
     border: none;
     margin-top: 4px;
     border-radius: 2px;
     top: 36px;
     z-index: 2;
     padding-left: 5px;
}
/* .input_background {
     width: 100%;
     height: 26px;
     display: none;
     position: absolute;
     border: none;
     margin-top: 4px;
     border-radius: 2px;
     top: 32px;
     background-color: #fbf3f8;
     z-index: 1;
} */
#back {
    font-size: 17px;
    border-radius: 69px;
    padding: 15px 42px;
    background-color: #cbcbcb;
    text-align: center;
    line-height: 43px;
    color: white;
    left: 90%;
    bottom: 75px;
    position: relative;

}
#update {
    border-radius: 69px;
    padding: 15px 42px;
    color: white;
    background-color: #cfcaff;
    text-align: center;
    line-height: 43px;
    margin: -126px auto;
    box-sizing: border-box;
    position: relative;
    left: 300px;
    bottom: 215px;

}
#insert_box {
     margin: 0;
     padding: 120px;
    
}
#selmail {
     height: 23px;
     width: 90px;
     margin-top: 36px;
     margin-left: 8px;
     z-index: 2;
     border: 1px solid #efdfe1;
     color: dimgray;
}
.email_idurl {
     width: 109.5px;
     margin-left: 2px;
     border: none;
     z-index: 2;
     padding: 2px 0 0 0;
     height: 18px;
}
#addr_box2{
     display: none;
     padding-top: 34px
     
}
#postcode {
     padding-bottom: 0;
     padding-top: 4px;
}
#address2{
     padding-right: 10px;
}
.addr_b{
     border:1px solid #efecee;
     margin-top: 2px;
}
#find_poaddr{
     height: 22px;
     z-index:2;
     background: linear-gradient(to bottom, #efd0ef, white, #efd0ef 74%);
     color: #696666;
     line-height: 18px;
     border-radius: 21px;
     border: 1px solid #e6ced2
}
#addr{
     width: 347px;
    height: 35px;
}
#email{
     width: 347px;
    height: 35px;
}
#input_email{
     display: none;
}
.error{
	color: red;
	position: absolute;
	top: 73px;
    font-size: 11px;
    font-style: inherit;
    display: none;
}
#error_addr{
	top:85px;
}
#error_email{
	top:64px;
}


</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
     $(document).ready(function() {

        $("#input_pw_now").focus( function() {
                          $(this).css("font-size", "15px");
                          $("article #pw_now").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                          $("#input_pw_now").css("background-color", "#fbf3f8");
                          $("#back_id").css("display", "block");
                     });
        
        //Ajax 비밀번호 
        $(document).on("blur","#input_pw_now",function(){
       	 var nowPw=$("#input_pw_now").val();
       	 
       	if(nowPw ==""){
       		$("#input_pw_now").next().text("필수정보입니다.").css("display","block");
       	};
       	 if(nowPw !=""){
       		 $.ajax({
       			 url : "pwCheck.bizpoll",
       			 type : "POST",
       			 dataType : "json",
       			 data:"id=${sessionScope.loginUser.id}&pw="+nowPw,
       			 success:function(data){
       				 if(data.message == "-1"){
       					 $("#input_pw_now").next().text("기존 비밀번호와 일치합니다").css("display","block").css("color","#0000FF");
       					/*  $("#input_pw").select(); */
       				 }else{
       					 $("#input_pw_now").next().text("기존 비밀번호와 일치하지 않습니다.").css("display","block").css("color","#F46665");
       					 /* $("#input_pw_now").select(); */
       				 }
       			 },
       			 error:function(){
       				 alert("System Error!!")
       			 }
       		 });
       	 }
       	 
        });
        
        
        
        
        
        
        
        
        
        
        
        
        
        
         $("#input_pw").focus(function() {
                          $(this).css("font-size", "15px");
                          $("article #pw").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                          $("#input_pw").css("background-color", "#fbf3f8");
                          $("#back_pw").css("display", "block");
                     });
           
      	 $("#input_pw").blur(function(){
    		 var mpw = $("#input_pw"),
    		 pw = $.trim(mpw.val()),
    		 regPass = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
    	 
    		 if(pw == ""){
    		 	 /* mpw.focus(); */
    		 	 mpw.next().text("필수정보입니다.").css("display","block").css("color","red");
    		 	 mpw.parent().css("margin-bottom","12px");
    			 return false;
    		 }else if(!regPass.test(pw)){
    		 	 /* mpw.select(); */
    		 	 mpw.next().text("9~20자 이내 영문자, 숫자, 특수문자를 혼합하여 이용하세요.").css("display","block");
    		 	 mpw.parent().css("margin-bottom","12px");
    		 	 return false;
    		 }else{
    		 	 $("#input_pw").next().css("display","none");
    		 }
    	});
      	 
      	 
      	 
      	 
      	 
      	 
       $("#input_pw_c").focus(function() {
                          $(this).css("font-size", "15px");
                          $("article #pw_c").css("top", "20px").css("font-size", "10px").css("font-weight", "bold").css("color","black");
                          $("#input_pw_c").css("background-color","#fbf3f8");
                          $("#back_pw_c").css("display", "block");
                     });
       	$("#input_pw_c").blur(function(){
    		var mpw = $("#input_pw"),
    			mpw2 = $("#input_pw_c"),
    			pw = $.trim(mpw.val()),
    			pw2 = $.trim(mpw2.val());
    		   	  
    		if(pw2 == ""){
    			/*  mpw.focus(); */
    			mpw2.next().text("필수정보입니다.").css("display","block");
    			mpw2.parent().css("margin-bottom","12px");
    			return false;
    		  	}else if(pw != pw2){
    			/* mpw2.select();
    			mpw2.focus(); */
    			mpw2.next().text("비밀번호가 일치하지 않습니다.").css("display","block");
    			mpw2.parent().css("margin-bottom","12px");
    			return false;
    		 }else{
     		 	$("#input_pw_c").next().css("display","none");
    		 }
    	 });
             
           
           
           /* 비밀번호 재확인 input태그를 blur했을 때????????????????
           	  비밀번호와 비밀번호 재확인 값을 비교*/
           $("#input_pw_c").blur(function(){
               var pw1 =$("#input_pw").val();
               var pw2 =$("#input_pw_c").val();
               /* 선행조건 : 둘다 값이 존재할 때만 적용가능. */
           	  if(pw2 !=""){ /* 비밀번호와 비밀번호 확인값이 다를 때 동작 */
         	   /* 	alert("=====>"); */
         	   	if(pw1 == pw2){
         	   		$(".checkpw").next().css("display","none");
         	   	}else{
         	   	 /*  1 . 비밀번호 확인 메시지에 "비밀번호가 일치하지 않습니다."출력
                2 . 비밀번호확인(input) -> focus가가고
                3 . 값을 초기화. */
                $(this).next().text("설정하신 비밀번호와 일치하지 않습니다.").css("display","block");
                /* $(this).select; */
                
         	   	}
           	  }
        	   
           });
           
});
     
     
     
     

     
     
     
     
     
     $(document).on("click","#update",function(){

   		var pw_now = $("#input_pw_now").val();
 		pw_new = $("#input_pw").val();
 		pw_renew = $("#input_pw_c").val();
		alert(pw_now +","+ pw_new + "," +pw_renew);
    	 
    	if(pw_now == ""){
    	  $("#input_pw_now").focus();
  		  $("#input_pw_now").next().css("display","block");
  	  	  $("#input_pw_now").parent().css("margin-bottom","12px");
  	  	return false;
    	}else if(pw_new == ""){
    	  $("#input_pw").focus();
  		  $("#input_pw").next().css("display","block");
  	  	  $("#input_pw").parent().css("margin-bottom","12px");
  	  	return false;
    	}else if(pw_renew == ""){
    	  $("#input_pw_c").focus();
  		  $("#input_pw_c").next().css("display","block");
  	  	  $("#input_pw_c").parent().css("margin-bottom","12px");
  	  	return false;
    	}
    	 
    	 

  		
		/* 유효성체크 값이 유효한 값 확인 끝!!! */
		$("#frm_mem").submit();
    	 
     });
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
</script>
</head>
<body id="indexbody">
     <div id="line">
          <header>
              <div id="header" class="divsize">
                   <h1 id="chacha_logo">
                        <a href="http://localhost:8081/chacha/include/header.html"
                             class="u_logo"> <img class="c_logo" alt="차차로고" src="img/chacha4.png">
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
              <form action="memberpwupdateplay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
                   <div id="outline">
                        <div id="insert_box">
    
                             <div class="insert_info">
                                  <label for="input_pw_now" class="insert_label" id="pw_now"> 기존 비밀번호 입력 </label>
                                  <input type="password" id="input_pw_now" class="set pop" name="input_pw_now">
                              	  <span class="error" id="error_pw_now">필수입력입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_pw" class="insert_label" id="pw"> 비밀번호 입력</label> 
                                  <input type="password" id="input_pw" class="set pop checkpw" name="input_pw" >
                           		  <span class="error" id="error_pw">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_pw_c" class="insert_label" id="pw_c"> 비밀번호 재입력 </label>
                                  <input type="password" id="input_pw_c" class="set pop checkpw" name="input_pw_c">
                             	  <span class="error" id="error_pw_c">필수정보입니다.</span>
                             </div>
                        </div>
                   </div>
                   <input type="hidden" name="updateId" value="${sessionScope.loginUser.id}">
                   
                   
                             <a href="#" id="update">저장하기</a>
                             <a href="index.bizpoll" id="back">취소하기</a>              
              </form>
              
              
              
              
          </article>
     </div>
</body>
</html>
<%@ include file="include/footer.jsp" %>  