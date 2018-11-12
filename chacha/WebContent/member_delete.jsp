<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="include/header.jsp" %> --%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


</style>
<script type="text/javascript">















$(document).on("click","#no_btn",function(){
	$("#modal_all").css("display","none");
});

$(document).on("click","#yes_btn",function(){
	var nowPw = $("#inputpw").val(); // input 태그의 pw값
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
	                 location.href = "index.bizpoll";
	  		   }else{
	  			 $("modal_all").css("display","none");
	  			 $("#input_pw").next().text("정확한 비밀번호를 입력해주십시오.").css("display","block").css("color","#F46665");
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


</body>
</html>
<%@ include file="include/footer.jsp" %>  