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
#check {
	border-radius: 69px;
    width: 104px;
    height: 43px;
    background-color: #cfcaff;
    text-align: center;
    line-height: 43px;
    margin: -126px auto;

}
#cancle {
     float: left;
     font-size: 17px;
     margin: 17px 45px;
     border-radius: 69px;
     width: 104px;
     height: 43px;
     background-color: #d4caef;
     text-align: center;
     line-height: 43px;
}
#back {
     color: whitesmoke;
}
#yes {
     color: white;
}
#insert_box {
    position: relative;
    bottom: 40px;
    
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
    	 
    	 $("#input_id").blur(function(){
   		  /* alert("test") */
   		 var idVal = $(this).val();
   		 var mid = $("#input_id");
  	     /* trim: 앞뒤 공백 제거 */
  	     var id = $.trim(mid.val());
   		 /* ID 유효성 검사 */
  	     var regId = /^[a-zA-Z0-9]{4,12}$/; /* 4~12자까지 영대소문자와 숫자만 입력가능. */
    	     
  	     
  	   if(id == ""){
 	    	 mid.focus();
 	    	 mid.next().css("display","block");
 	    	 mid.parent().css("margin-bottom","12px");
 	    	 return false;
 	     }else if(!regId.test(id)){
 	    	 mid.focus();
 		 	 mid.next().text("4~12까지의 영문자와 숫자만 입력하세요.").css("display","block");
 	    	 mid.parent().css("margin-bottom","12px");
 	    	 return false;
 		 	 
 	     }/* + ID 중복체크 */ 
 	     else if(id !=""){
	   			  $.ajax({
	   				  /* ajax db갔다
	   				  	   view -> Controller -> Model -> DB */
	   				  	   url : "idCheck.bizpoll",
	   				  	   type: "POST",
	   				  	   dataType: "json",
	   				  	   data: "id=" + idVal,
	   				  	   success: function(data){
	   				  		   if(data.message == "-1"){
	   				  			 $("#input_id").next().text("이미 사용중인 ID입니다.").css("display","block").css("color","#F46665");
			   		                 $("#input_id").select;
	   				  		   }else{
	   				  			 $("#input_id").next().text("사용가능한 ID입니다.").css("display","block").css("color","#0000FF");
	   				  			 $("#input_pw").select;
	   				  		   }
	   				  	   },
	   				  	   error:function(){
	   				  		   alert("System Error!!!");
	   				  	   }
	   			  })
	   		  }
   		  
   	  });
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
                   $("#input_id").focus(
                             function() {
                                  $(this).css("font-size", "15px");
                                  $("article #id").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                                  $("#input_id").css("background-color", "#fbf3f8");
                                  $("#back_id").css("display", "block");
                             });
                   $("#input_pw").focus(
                             function() {
                                  $(this).css("font-size", "15px");
                                  $("article #pw").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                                  $("#input_pw").css("background-color", "#fbf3f8");
                                  $("#back_pw").css("display", "block");
                             });
                   $("#input_pw_c").focus(
                                      function() {
                                           $(this).css("font-size", "15px");
                                           $("article #pw_c").css("top", "20px").css("font-size", "10px").css("font-weight", "bold").css("color","black");
                                           $("#input_pw_c").css("background-color","#fbf3f8");
                                           $("#back_pw_c").css("display", "block");
                                      });
                   $("#input_name").focus(
                                      function() {
                                           $(this).css("font-size", "15px");
                                           $("article #name").css("top", "20px").css("font-size", "10px").css("font-weight", "bold").css("color","black");
                                           $("#input_name").css("background-color","#fbf3f8");
                                           $("#back_name").css("display", "block");
                                      });
                   $("#input_ph").focus(
                             function() {
                                  $(this).css("font-size", "15px");
                                  $("article #ph").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                                  $("#input_ph").css("background-color", "#fbf3f8");
                                  $("#back_ph").css("display", "block");
                             });
                   
                   
                   $("#addr").click(function() {
                                  $("article #addr").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                                  $("#addr_box1").css("height", "83px");
                                  $("#addr_box1").css("border", "none");
                                  $("#addr_box2").css("display", "block");
                                  $("#addr_box2").css("display", "block");
                                  $("#addr").css("width", "45px");
                                  $("#addr").css("height", "10px");
                                  /* $(".addr_b").css("border-bottom", "2px solid rgb(226, 215, 236)"); */
                                  
                             });
                   
                   $("#email").click(
                             function() {
                                  $("article #email").css("top", "20px").css("font-size", "10px").css("font-weight","bold").css("color", "black");
                                  $("#input_email").css("display","block")
                                  $("#insert_email").css("border", "none");
                                  $(".email_idurl").css("border", "1px solid #efecee");
                                  $(".email_idurl").css("font-size", "12px");
                                  $("#email").css("width", "55px");
                                  $("#email").css("height", "10px");
                             });
                             
                             
                   
                   
                   $("#selmail").change(function() {
                        var selmail = $("#selmail").val();
                        if (selmail == "directVal") {
                             $("#email_url").val("");
                             $("#email_url").focus("");
                        } else {
                             $("#email_url").val(selmail);
                        }
                   });
                   
                   
                   
                   
                   $(".pop").blur(function(){
                	   var inputval = $(this).val();
                	   
                	  if(inputval == ""){
                		  $(this).next().css("display","block");
	                  	/*  $(".error").css("display","block"); */
	                 	  $(this).parent().css("margin-bottom","12px");
	                  }else{
	                  	  /* $(".error").css("display","none"); */
                		  /* $(this).next().css("display","none");
                		  $(this).parent().css("margin-bottom","5px"); */
                	  }
                	  
                	  /* 비밀번호와 비밀번호 확인값이 다르면 경고메세지 출력 */
                	  
                	  
                	  
                	  
                	  
                	  
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
		   		                 $(this).next().text("비밀번호가 일치하지 않습니다.").css("display","block");
		   		                 $(this).select;
		   		                 
	   	            	   	}
	   	              	  }
                	   
                   });
                   
                   
          
                  
                    
	                
                   
                   
             });
     
     
     
     
     
     
     function sample6_execDaumPostcode() {
          new daum.Postcode(
                   {
                        oncomplete : function(data) {
                             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                             // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                             var fullAddr = ''; // 최종 주소 변수
                             var extraAddr = ''; // 조합형 주소 변수
                             // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                             if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                  fullAddr = data.roadAddress;
                             } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                  fullAddr = data.jibunAddress;
                             }
                             // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                             if (data.userSelectedType === 'R') {
                                  //법정동명이 있을 경우 추가한다.
                                  if (data.bname !== '') {
                                      extraAddr += data.bname;
                                  }
                                  // 건물명이 있을 경우 추가한다.
                                  if (data.buildingName !== '') {
                                      extraAddr += (extraAddr !== '' ? ', '
                                                + data.buildingName : data.buildingName);
                                  }
                                  // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                                  fullAddr += (extraAddr !== '' ? ' (' + extraAddr
                                           + ')' : '');
                             }
                             // 우편번호와 주소 정보를 해당 필드에 넣는다.
                             document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                             document.getElementById('address').value = fullAddr;
                             // 커서를 상세주소 필드로 이동한다.
                             document.getElementById('address2').focus();
                        }
                   }).open();
     }
     
     
     
     
     
     
     
     
     
     
     
     
     $(document).on("click","#yes",function(){
    	 /* 유효성체크하는 값을 받아온다. */
	    	 var form = $("#frm_mem"),
	    	 mpw = $("#input_pw"),
	    	 mpw2 = $("#input_pw_c"),
	    	 mname = $("#input_name"),
	    	 mphone = $("#input_ph"),
	    	 email1 = $("#email_id"),
	    	 email2 = $("#email_url"),
	    	 zipcode = $("#postcode"),
	    	 maddr1 = $("#address");
	    	 maddr2 = $("#address2");
   
     

     
     
     
     
     
     
      
     
     
     
     
     
     
     
     
     
     /* Password 유효성 검사 */
     var pw = $.trim(mpw.val());
     var pw2 = $.trim(mpw2.val());
     /* 영문자, 숫자 포함 특수문자 사용가능.8~20자리 */
     var regPass = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;

     
     if(pw == ""){
    	 mpw.focus();
    	 mpw.next().text("필수정보입니다.").css("display","block");
    	 mpw.parent().css("margin-bottom","12px");
		 return false;
     }else if(!regPass.test(pw)){
    	 mpw.select();
    	 mpw.next().text("9~20자 이내 영문자, 숫자, 특수문자를 혼합하여 이용하세요.").css("display","block");
    	 mpw.parent().css("margin-bottom","12px");
    	 return false;
     }else if(pw2 == ""){
    	 mpw2.focus();
    	 mpw2.next().text("필수정보입니다.").css("display","block");
    	 mpw2.parent().css("margin-bottom","12px");
		 return false;
     }else if(pw != pw2){
    	 mpw2.select();
    	 mpw2.focus();
    	 mpw2.next().text("비밀번호가 일치하지 않습니다.").css("display","block");
    	 mpw2.parent().css("margin-bottom","12px");
		 return false; 
     } 
     
     
     
     /* 이름 유효성 체크*/
     var name = $.trim(mname.val());
     
     if(name == ""){
    	 mname.focus();
    	 mname.next().text("필수정보입니다.").css("display","block");
    	 mname.parent().css("margin-bottom","12px");
    	 return false;
     }
     
     
     
     
     
  
     /* 과제 : 주소, 전화번호 유효성 체크 
     1 . 전화번호는 숫자값만 들어오는 유효성 체크 추가 */
     
     
     
     var phone = $.trim(mphone.val());
     var regphone =/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;


     
     if(phone == ""){
    	 mphone.focus();
    	 mphone.next().text("필수정보입니다.").css("display","block");
    	 mname.parent().css("margin-bottom","12px");
    	 return false;
     }else if($.isNumeric(phone)==false){	/* 숫자값만 들어왔는지 체크! */
    	 mphone.select();
    	 mphone.next().text("숫자만 입력하세요.").css("display","block");
    	 mphone.parent().css("margin-bottom","12px");
    	 return false;
     }else if(!regphone.test(phone)){
    	 mphone.select();
    	 mphone.next().text("올바른 값을 입력하세요.").css("display","block");
    	 mphone.parent().css("margin-bottom","12px");
    	 return false;
     }


     
     
     
     
     
     /*  mail
     1 . "" check
     2 . 정규식 check */
     
     
     var zipcodeVal = $.trim(zipcode.val());
     var addr1 = $.trim(maddr1.val());
     var addr2 = $.trim(maddr2.val());
     
     /* 우편번호, 주소 클릭했을 때 다음 우편번호 API 실행 */
     $("#postcode").click(function(){
    	 $("#find_poaddr").click();
     });
     
     
     
     if(zipcodeVal == ""){
    	 $("#addr").click();
    	 maddr2.focus();
    	 $("#address2").next().text("우편번호를 입력하십시오.").css("display","block");
    	 $("#address2").parent().css("margin-bottom","12px");
    	 return false;
     }else if(addr1 == ""){
    	 maddr2.focus();
    	 $("#address2").next().text("주소가 작성되지 않았습니다.").css("display","block");
    	 $("#address2").parent().css("margin-bottom","12px");
    	 return false;
     }else if(addr2 == ""){
    	 maddr2.focus();
    	 $("#address2").next().text("상세주소를 입력해주십시오.").css("display","block");
    	 $("#address2").parent().css("margin-bottom","12px");
    	 return false;
     }else{
    	 $("#address2").next().css("display","none");
    	 $("#address2").parent().css("margin-bottom","12px");
    	 return false;
     }
     
     
     
     /* mail 유효성 체크 */
     var mailid = $.trim(email1.val())
     var mailurl = $.trim(email2.val());
     var mail = mailid +"@"+ mailurl;
     var regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

     if(mailid == "") {
    	 $("#email").click();
    	 email1.focus();
    	 $("#selmail").next().css("display","block");
    	 $("#selmail").parent().css("margin-bottom","12px");
		 return false;
     }else if(mailurl = ""){
    	 email2.focus();
    	 $("#selmail").next().css("display","block");
    	 $("#selmail").parent().css("margin-bottom","12px");
		 return false;
     }else if(!regMail.test(mail)){
    	 email1.select();
    	 $("#selmail").next().text("E-mail형식이 올바르지 않습니다.").css("display","block");
    	 $("#selmail").parent().css("margin-bottom","12px");
		 return false;
     }
     
     
     
     
     /* 유효성체크 값이 유효한 값 확인 끝 */
      form.submit();
     
     
     
     
     });
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
</script>
</head>
<body id="indexbody">
     <div id="cancle">
          <a href="http://localhost:8081/chacha/include/header.html" id="back">취소</a>
     </div>
     <div id="line">
          <header>
              <div id="header" class="divsize">
                   <h1 id="chacha_logo">
                        <a href="http://localhost:8081/chacha/include/header.html"
                             class="u_logo"> <img class="c_logo" alt="차차로고"
                             src="img/chacha4.png">
                        </a>
                   </h1>
                   <div class="lang">
                        <select id="langselect">
                             <option>한국어</option>
                             <option>English</option>
                             <option>中國語</option>
                        </select>
                   </div>
                   <div id="welcome">
                        <p id="welcome_in">
                             join with chacha<span id="heart">♥</span><img>
                   </div>
              </div>
          </header>
          <article>
              <form action="memberplay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
                   <div id="outline">
                        <div id="insert_box">
                             <div class="insert_info">
                                  <label for="input_id" class="insert_label" id="id"> 아이디 입력 </label>
                                  <input type="text" id="input_id" class="set pop" name="input_id">
                              	  <span class="error" id="error_id">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_pw" class="insert_label" id="pw"> 비밀번호 입력</label> 
                                  <input type="password" id="input_pw" class="set pop checkpw" name="input_pw">
                           		  <span class="error" id="error_pw">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_pw_c" class="insert_label" id="pw_c"> 비밀번호 재입력 </label>
                                  <input type="password" id="input_pw_c" class="set pop checkpw" name="input_pw_c">
                             	  <span class="error" id="error_pw_c">필수정보입니다.</span>
                             </div>
                             	
                             <div class="insert_info">
                                  <label for="input_name" class="insert_label " id="name"> 이름 입력 </label>
                                  <input type="text" id="input_name" class="set pop " name="input_name"> 
                             	  <span class="error" id="error_id">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_ph" class="insert_label" id="ph"> 휴대폰번호 입력("-" 없이 입력.) </label>
                                  <input type="text" id="input_ph" class="set pop" maxlength=11 name="input_ph">
                             	  <span class="error" id="error_ph">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info" id="addr_box1">
                                  <label for="input_addr" class="insert_label" id="addr" > 주소 입력 </label>
                                  
                                  <div id="addr_box2">
                                  <input type="text" id="postcode" class="addr_b" placeholder="우편번호" readonly="readonly" name="postcode">
                                  <input type="button" id="find_poaddr" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>
                                  <input type="text" id="address" class="addr_b" placeholder="주소" readonly="readonly" name="address">
                                  <input type="text" id="address2" class="addr_b pop" placeholder="상세주소" name="address2">
                             	  <span class="error" id="error_addr">상세주소를 입력하십시오.</span>
                                  </div>
                             </div>
                             
                             
                             <div id="insert_email" class="insert_info">
                                  <label for="email_idurl" class="insert_label" id="email"> 이메일 입력 </label>
                                  
                                  <div id="input_email">
                                  <input type="text" class="email_idurl" id="email_id" placeholder="ID" name="email_id"> 
                                  <span>@</span> 
                                  <input type="text" class="email_idurl" id="email_url" placeholder="URL" name="email_url">
                                      <select id="selmail">
                                           <option value="" selected="selected">Email 선택</option>
                                           <option value="directVal">직접입력</option>
                                           <option value="naver.com">naver.com(네이버)</option>
                                           <option value="daum.com">daum.com(다음카카오)</option>
                                           <option value="gmail.com">gmail.com(구글)</option>
                                           <option value="nate.com">nate.com(네이트)</option>
                                      </select>
                             	 	  <span class="error" id="error_email">이메일을 입력하십시오.</span>
                                  </div>
                             </div>
                             
                             
                        </div>
                   </div>
                             <a href="#" id="yes"><div id="check" class="abox">확인</div></a>
              </form>
              
              
              
              
          </article>
     </div>
</body>
</html>
<%@ include file="include/footer.jsp" %>  