<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--   index.jsp 페이지에 header.jsp 페이지를 추가 한것. -->
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세보기</title>
<style type="text/css">
#detail_box {
	border: 1px solid #f3dddd;
	width: 1100px;
	height: 699px;
	margin: 0 auto;
	margin-top: 212px;
}

#detatil_area {
	width: 1000px;
	height: 650px;
	margin: 0px auto;
	margin-top: 47px;
}

#detail_box:hover {
	box-shadow: 0 4px 10px 0 rgba(49, 0, 30, 0.2);
}

#detail_img {
	float: left;
	margin: 0 auto;
}

#detail_info {
	width: 45%;
	height: 95%;
	float: right;
}

#headingArea {
	
}

#headingArea>h2 {
	font-size: 19px;
	display: inline-block;
}

#delivery {
	font-size: 12px;
}

#headingArea>img {
	vertical-align: sub;
}

#detail_box table {
	width: 100%;
	font-size: 15px;
	padding-top: 17px;
	border-top: 1px solid #e4e4e4;
	padding-bottom: 14px;
}

#detail_box tr {
	text-align: left;
}

#detail_box th {
	width: 140px;
	height: 22px;
	font-weight: normal;
}

#table01 span {
	color: gray;
}

#detail_box select {
	width: 260px;
	height: 24px;
	padding: 0 0px 3px 5px;
}

#guideArea {
	border-top: 1px solid #e4e4e4;
	border-bottom: 1px solid #e4e4e4;
}

#guideArea>span {
	color: red;
	font-size: 12px;
	line-height: 45px;
}


#price_count {
	margin-top: 20px;
	border-bottom: 1px solid #e4e4e4;
	padding-bottom: 15px;
}

#price_count>span {
	font-size: 12px;
}

#price_count>strong {
	font-size: 15px;
}

.basebtn {
	border: 1px solid #cccccc;
	width: 131px;
	height: 50px;
	line-height: 48px;
	float: left;
	margin-left: 7px;
	text-align: center;
}

#buynow {
	margin-left: 19px;
	background-color: #4a4a4a;
}

#buynow {
	color: white;
}

#main_img {
	margin: 0 80px;
}

#sub_img img {
	width: 74px;
	float: left;
	margin-left: 8px;
	margin-top: -4px;
	border: 1px solid lightgrey;
}

#sub_img>ul {
	margin-left: 90px;
	list-style-type: none;
}

#main_img>img {
    width: 364px;
    height:511px;
    margin-bottom: 17px;
    border: 1px solid lightgray;
    box-sizing: border-box;
    background-size: cover;
}

#base-button {
	padding-top: 54px;
}
#base-button a:nth-child(2) {
	color: black;
}
#base-button a:nth-child(3) {
	color: black;
}

.image_detail0{
	background-image: url(img/${productview.p_img});
}
.active1{background-image: url(img/${productview.p_img});}
.active2{background-image: url(img/ex2.jpg);}
.active3{background-image: url(img/ex3.jpg);}
.active4{background-image: url(img/ex4.jpg);}

#select_amount{
    width: 35px;
    text-align: center;
    position: relative;
    left: 5px;
    height: 17px;
    border: 1px solid #d7d7d7;
    vertical-align: sub;
}

#delete_botton{
	position: relative;
    left: -1px;
    bottom: -1px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#img_ex1").mouseover(function(){
		$("#image_detail").removeClass("image_detail0 active2 active3 active4");
		$("#image_detail").addClass("active1");
	}); 
	$("#img_ex2").mouseover(function(){
		$("#image_detail").removeClass("image_detail0 active1 active3 active4");
		$("#image_detail").addClass("active2");
	}); 
	$("#img_ex3").mouseover(function(){
		$("#image_detail").removeClass("image_detail0 active1 active2 active4");
		$("#image_detail").addClass("active3");
	}); 
	$("#img_ex4").mouseover(function(){
		$("#image_detail").removeClass("image_detail0 active1 active2 active3");
		$("#image_detail").addClass("active4");
	}); 
	
});

</script>
</head>
<body>
	<div id="detail_box">
		<div id="detatil_area">
			<div id="detail_img">
				<div id="main_img">
				 <%-- <img id="image_detail" alt="" src="img/${productview.p_img}"> --%>
				 <img class="image_detail0" id="image_detail">
					
				</div>
				<div id="sub_img">
					<ul>
						<li><img id="img_ex1" src="img/ex1.jpg"></li>
						<li><img id="img_ex2" alt="" src="img/ex2.jpg"></li>
						<li><img id="img_ex3" alt="" src="img/ex3.jpg"></li>
						<li><img id="img_ex4" alt="" src="img/ex4.jpg"></li>
					</ul>
				</div>
			</div>

			<div id="detail_info">
				<div id="headingArea">
					<h2>${productview.p_name}</h2>
					<span id="delivery">(해외배송 가능 상품)</span>
					<img alt="" src="img/custom_136.gif">
				</div>
				<table id="table01">
					<tr>
						<th><span>상품 간략설명</span></th>
						<td><span>${productview.p_ex}</span></td>
					</tr>

					<tr>
						<th>판매가</th>
						<td><fmt:formatNumber value="${productview.p_price}"/> 원</td>
						
					</tr>

					<tr>
						<th>적립금</th>
						<td>200point</td>
					</tr>
					<tr>
						<th></th>
						<td style="text-align:right;">남은 상품수 : ${productview.p_amount} 개</td>
					</tr>
				</table>
				<table id="table02">
					<tr>
						<th>색상</th>
						<td><select>
								<option>- [필수] 옵션을 선택해 주세요^^ -</option>
								<option> ${productview.p_color1} </option>
								<c:if test="${!empty productview.p_color2}">
								<option> ${productview.p_color2} </option>
								</c:if>
								<c:if test="${!empty productview.p_color3}">
								<option> ${productview.p_color3} </option>
								</c:if>
						</select></td>
					</tr>
					<tr>
						<th>사이즈</th>
						<td><select>
								<option>- [필수] 옵션을 선택해 주세요^^ -</option>
								<option> ${productview.p_size1} </option>
								<c:if test="${!empty productview.p_size2}">
								<option> ${productview.p_size2} </option>
								</c:if>
								<c:if test="${!empty productview.p_size3}">
								<option> ${productview.p_size3} </option>
								</c:if>
								<c:if test="${!empty productview.p_size4}">
								<option> ${productview.p_size4} </option>
								</c:if>
								
						</select></td>
					</tr>
				</table>

				<div id="guideArea">
					<span> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</span>
						
					<table style="border-top: none;padding: 4px;">	
						<tr id="selected_item">
							<td style="width: 173px;">
								<p style="color:gray;margin:0 0 4px 0;font-size:13px;">${productview.p_name}</p>
								<strong><!-- 선택한 것 -->- white / free</strong>
							</td>
							<td style="padding-left: 12px;">
								<div>
									<input id="select_amount" value="1">
									<a style="position: absolute;">
										<img alt="" src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif">
									</a>
									<a style="position: relative;top:10px;">
										<img alt="" src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif">
									</a>
									
									<a id="delete_botton">
										<img alt="" src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif">
									</a>
									
								</div>
								
							</td>
							<td>
								<span>
									<input type="hidden">
									<span  style="display: block;text-align: right;">39,800원</span>
								</span>
								<span style="display: block;text-align: right;">
								(
								<img alt="" src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif">
								3,900Point)
								
								</span>
							</td>
						</tr>	
					</table>
				</div>

				<div id="price_count">
					<strong>총 상품금액</strong><span> 수량: </span>
				</div>
				<br> <br>
				<div id="base-button">
					<a href="#"><div id="buynow" class="basebtn">바로구매</div></a> 
					<a href="#"><div id="addcart" class="basebtn">장바구니 담기</div></a> 
					<a href="#"><div id="wishbtn" class="basebtn">관심상품</div></a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
<%@ include file="include/footer.jsp" %>  