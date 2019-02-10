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
    font-size: 15px;
    background-color: rgb(251, 243, 248);

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
    bottom: 170px;

}
#insert_box {
     margin: 68px;
     padding: 0;
    
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
     padding-top: 34px;
     display: block;
     
     
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
	top: 20px;
    font-size: 10px;
    font-weight: bold;
    color: black;
    width: 45px;
    height: 10px;
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

#id{
	top: 20px;
	font-size:10px;
	font-weight:bold;
	color: black;
}

#name{
	top : 20px;
	font-size: 10px;
	font-weight: bold;
	color: black;
}

#ph{
	top : 20px;
	font-size: 10px;
	font-weight: bold;
	color: black;
}


#email{
	top: 20px;
	font-size: 10px;
	font-weight: bold;
	color: black;
}

#input_email{
	display: block;
}

#insert_email{
	border: none;
}

.email_idurl{
	border:1px solid #efecee;
	font-size : 12px;
}

#email{
	width:55px;
	height:10px;
}


#addr_box1{
	border-bottom: none;
}

#insert_email{
	margin-top: 16px;
}




</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
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


     $(document).ready(function() {
    	 var email_info = "${sessionScope.loginUser.email}";
    	 var index = email_info.indexOf('@');
    	 var emailid = email_info.substring(0, index);
    	 var emailurl = email_info.substring(index + 1);
    	 /* alert(email_info +", "+ index +", "+emailid +", "+emailurl ); */
    	 
    	 $("#email_id").val(emailid); /* input의 id값을 넣었음. */
    	 $("#email_url").val(emailurl);
                   
            
     
     
     
     
     
     
 
     
     
     
     
     /*========================================================이름 유효성*/    
 	$("#input_name").blur(function(){      
 		var mname = $("#input_name"),
 			name = $.trim(mname.val());
 	  	     
 		if(name == ""){
 			/* mname.focus(); */
 			mname.next().text("필수정보입니다.").css("display","block");
 			mname.parent().css("margin-bottom","12px");
 			return false;
 		}else{
 			$("#input_name").next().css("display","none");
 		}
     });
      
       
       
       
 		
 		
 	      /*========================================================휴대번호 유효성*/

 	$("#input_ph").blur(function(){
 		var mphone = $("#input_ph"),
 		phone = $.trim(mphone.val()),
 		regphone =/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
 	if(phone == ""){
 		/* mphone.focus(); */
 		mphone.next().text("필수정보입니다.").css("display","block");
 		mphone.parent().css("margin-bottom","12px");
 		return false;
 	}else if($.isNumeric(phone)==false){	/* 숫자값만 들어왔는지 체크! */
 		/* mphone.select(); */
 		mphone.next().text("숫자만 입력가능합니다.").css("display","block");
 		mphone.parent().css("margin-bottom","12px");
 			return false;
 	}else if(!regphone.test(phone)){
 		/* mphone.select(); */
 		mphone.next().text("올바른 값이 아닙니다.(숫자 11자리 입력)").css("display","block");
 		mphone.parent().css("margin-bottom","12px");
 		return false;
 	}else{
 		$("#input_ph").next().css("display","none");
 	}
 	
 	});
 	      
 	      
 	      
 	      
 	      
 	      
 	      
 	      
 	      /*========================================================주소 유효성*/     

 	      
 	      
 	      

     /* 우편번호, 주소 클릭했을 때 다음 우편번호 API 실행 */
     $("#postcode").click(function(){
    		$("#find_poaddr").click();
     });
     

 	      
     $(".addr_b").blur(function(){
 		var zipcode = $("#postcode"),  
 			zipcodeVal = $.trim(zipcode.val()),
 			maddr1 = $("#address");
 			maddr2 = $("#address2");
 			addr1 = $.trim(maddr1.val()),
 			addr2 = $.trim(maddr2.val());   
 		   
 		if(zipcodeVal == ""){
 			/* $("#addr").click(); */
 			/* maddr2.focus(); */
 			$("#address2").next().text("우편번호를 입력하십시오.").css("display","block");
 			$("#address2").parent().css("margin-bottom","12px");
 			return false;
 		}else if(addr1 == ""){
 			/* maddr2.focus(); */
 			$("#address2").next().text("주소가 작성되지 않았습니다.").css("display","block");
 			$("#address2").parent().css("margin-bottom","12px");
 			return false;
 		}else if(addr2 == ""){
 			/* maddr2.focus(); */
 			$("#address2").next().text("상세주소를 입력해주십시오.").css("display","block");
 			$("#address2").parent().css("margin-bottom","12px");
 			return false;
 		}else{
 			$("#address2").next().css("display","none");
 			return false;
 		}
 	    
     });  
 	      
 	      
 	    
 	    
 	    
     /*========================================================이메일 유효성*/	    
 	
 	$(".email_idurl").blur(function(){
 		var email1 = $("#email_id"),
 			email2 = $("#email_url"),
 			mailid = $.trim(email1.val())
 			mailurl = $.trim(email2.val());
 			mail = mailid +"@"+ mailurl;
 			regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
 	
 		if(mailid == "") {
 			/* $("#email").click(); */
 			/* email1.focus(); */
 			$("#selmail").next().text("이메일 ID를 입력하십시오").css("display","block");
 			$("#selmail").parent().css("margin-bottom","12px");
 			return false;
 		}else if(mailurl == ""){
 			/* email2.focus(); */
 			$("#selmail").next().text("이메일 URL을 입력하십시오").css("display","block");
 			$("#selmail").parent().css("margin-bottom","12px");
 			return false;
 		}else if(!regMail.test(mail)){
 			/* email1.select(); */
 			$("#selmail").next().text("E-mail이 아직 전부 작성되지 않았습니다.").css("display","block");
 			$("#selmail").parent().css("margin-bottom","12px");
 			return false;
 		}else{
 			$("#selmail").next().css("display","none");
 		}
 		
 		
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
       // 공란 확인하기
 /*       $(".pop").blur(function(){
    	   var inputval = $(this).val();
    	   
    	  if(inputval == ""){
    		  $(this).next().css("display","block");
      	  $(this).parent().css("margin-bottom","12px");
    	  
       });  
       });           
 });*/
     
});
     
     
     
     
     /* ========================================전체 유효성 체크 후값을 보냅니다. */
     $(document).on("click","#update",function(){
     	 /* 유효성체크할 값을 받아온다. */
     		var form = $("#frm_mem"),
     		/* 가입자명 */
     		mname = $("#input_name"),
     		name = $.trim(mname.val()),
     		/* 휴대폰번호 */
     		mphone = $("#input_ph"),
     		phone = $.trim(mphone.val()),
     		regphone =/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/,
     		/* 주소 */
     		zipcode = $("#postcode"),
     		maddr1 = $("#address"),
     		addr1 = $.trim(maddr1.val()),
     		maddr2 = $("#address2"),
     		addr2 = $.trim(maddr2.val()),
     		zipcodeVal = $.trim(zipcode.val()),
     		/* 이메일 */
     		email1 = $("#email_id"),
     		mailid = $.trim(email1.val()),
     		email2 = $("#email_url"),
     		mailurl = $.trim(email2.val()),
     		mail = mailid +"@"+ mailurl,
     		regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
     		
     		
     		
        		  
     		
     		



     	/* 이름 유효성 체크*/
     	if(name == ""){
     		 mname.focus();
     		 return false;
     	}



     	/* 휴대번호 유효성 체크 */
     	if(phone == ""){
     		 mphone.focus();
     		 return false;
     	}else if($.isNumeric(phone)==false){	/* 숫자값만 들어왔는지 체크! */
     		 mphone.select();
     		 return false;
     	}else if(!regphone.test(phone)){
     		 mphone.select();
     		 return false;
     	}

     	/* 주소 유효성 체크 */
     	if(zipcodeVal == ""){
     		 $("#addr").click();
     		 maddr2.focus();
     		 return false;
     	}else if(addr1 == ""){
     		 maddr2.focus();
     		 return false;
     	}else if(addr2 == ""){
     		 maddr2.focus();
     		 return false;
     	}

     	/* 이메일 유효성 체크 */
     	if(mailid == "") {
     		 $("#email").click();
     		 email1.focus();
     		 return false;
     	}else if(mailurl = ""){
     		 email2.focus();
     		 return false;
     	}else if(!regMail.test(mail)){
     		 email1.select();
     		 return false;
     	}




     	/* 유효성체크 값이 유효한 값 확인 끝 */
     	 form.submit();
     	});
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
</script>
</head>
<body id="indexbody">
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
              </div>
          </header>
          <article>
              <form action="memberupdateplay.bizpoll" method="POST" name="frm_mem" id="frm_mem">
                   <div id="outline">
                        <div id="insert_box">
                             <div class="insert_info">
                                  <label for="input_id" class="insert_label" id="id"> 회원정보 수정 </label>
                                  <input type="text" id="input_id" class="set pop" name="input_id" value="${sessionScope.loginUser.id}" readonly="readonly">
                              	  <span class="error" id="error_id">필수정보입니다.</span>
                             </div>
                             
                             	
                             <div class="insert_info">
                                  <label for="input_name" class="insert_label " id="name"> 이름 입력 </label>
                                  <input type="text" id="input_name" class="set pop " name="input_name" value="${sessionScope.loginUser.name}"> 
                             	  <span class="error" id="error_id">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info">
                                  <label for="input_ph" class="insert_label" id="ph"> 휴대폰번호 입력("-" 없이 입력.) </label>
                                  <input type="text" id="input_ph" class="set pop" maxlength=11 name="input_ph" value="${sessionScope.loginUser.phone}">
                             	  <span class="error" id="error_ph">필수정보입니다.</span>
                             </div>
                             
                             <div class="insert_info" id="addr_box1">
                                  <label for="input_addr" class="insert_label" id="addr" > 주소 입력 </label>
                                  
                                  <div id="addr_box2">
                                  <input type="text" id="postcode" class="addr_b" placeholder="우편번호" readonly="readonly" name="postcode" value="${sessionScope.loginUser.zipcode}">
                                  <input type="button" id="find_poaddr" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" ><br>
                                  <input type="text" id="address" class="addr_b" placeholder="주소" readonly="readonly" name="address" value="${sessionScope.loginUser.addr1}">
                                  <input type="text" id="address2" class="addr_b pop" placeholder="상세주소" name="address2" value="${sessionScope.loginUser.addr2}">
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
                             <a href="#" id="update">저장하기</a>
                             <a href="index.bizpoll" id="back">취소하기</a>
              </form>
              
              
              
              
          </article>
     </div>
</body>
</html>

<%@ include file="include/footer.jsp" %>  