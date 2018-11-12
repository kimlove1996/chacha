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
	width: 45%;
	height: 95%;
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
	height: 70px;
}

#guideArea>span {
	color: gray;
	font-size: 12px;
	line-height: 33px;
}

#guideArea>span+span {
	color: red;
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
}

#sub_img>ul {
	margin-left: 79px;
	list-style-type: none;
}

#main_img>img {
	width: 364px;
	margin-left: -17px;
	margin-bottom: 17px;
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

</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="detail_box">
		<div id="detatil_area">
			<div id="detail_img">
				<div id="main_img">
					<img alt="" src="img/cloth001.gif">
				</div>
				<div id="sub_img">
					<ul>
						<li><img alt="" src="img/cloth001-1.jpg"></li>
						<li><img alt="" src="img/cloth001-2.jpg"></li>
						<li><img alt="" src="img/cloth001-3.jpg"></li>
						<li><img alt="" src="img/cloth001-4.jpg"></li>
					</ul>
				</div>
			</div>

			<div id="detail_info">
				<div id="headingArea">
					<h2>에브리데이 라운드 니트</h2>
					<span id="delivery">(해외배송 가능 상품)</span><img alt=""
						src="img/custom_136.gif">
				</div>
				<table id="table01">
					<tr>
						<th><span>상품 간략설명</span></th>
						<td><span>울 50% 함유, 어디에나<br>찰떡이야 베이직 울 니트☆
						</span></td>
					</tr>

					<tr>
						<th>판매가</th>
						<td>19,800원</td>
					</tr>

					<tr>
						<th>적립금</th>
						<td>200point</td>
					</tr>
				</table>
				<table id="table02">
					<tr>
						<th>색상</th>
						<td><select>
								<option>- [필수] 옵션을 선택해 주세요^^ -</option>
						</select></td>
					</tr>
					<tr>
						<th>사이즈</th>
						<td><select>
								<option>- [필수] 옵션을 선택해 주세요^^ -</option>
						</select></td>
					</tr>
				</table>

				<div id="guideArea">
					<span> (최소주문수량 1개 이상)<br></span> <span> 위 옵션선택 박스를
						선택하시면 아래에 상품이 추가됩니다.</span>
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