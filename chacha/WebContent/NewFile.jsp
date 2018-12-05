<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
      #div1{height:125px; overflow:hidden; transition:.3s;} 
</style>
<script type="text/javascript">
function show(){ 
    $("#div1").css("height",$("table")[10]); 
} 
function hide(){ 
    $("#div1").css("height","125px"); 
} 
</script>
</head>
<body>
 <div id="div1"> 
      <table> 
          <tr><td>list01</td></tr> 
          <tr><td>list02</td></tr> 
          <tr><td>list03</td></tr> 
          <tr><td>list04</td></tr> 
          <tr><td>list05</td></tr> 
          <tr><td>list06</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
          <tr><td>list07</td></tr> 
      </table> 
  </div> 
  <input type="button" onclick="show()" value="더보기"> 
  <input type="button" onclick="hide()" value="닫기"> 
</body>
</html>