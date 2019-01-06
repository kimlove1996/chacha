<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>		<%--     <%  %> => script rit? 이라해서 화면단위에서 자바를 사용 할 수 있게 해주는 것.       --%>

<!--   index.jsp 페이지에 header.jsp 페이지를 추가 한것. -->
 <%@ include file="include/header.jsp" %>  

<!DOCTYPE html>		<!-- 장문으로 뭐라 써져 있으면 4버전. 그것만 지우고 독타입 html만 남겨놓으면 5버전이 된다. -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		<!-- 자바를 쓰겠다는 느낌으로 임폴트 한 것. -->
<title>chacha</title>

<style type="text/css">
	#index_body, p{
	z-index: 8;
	padding-top: 190px;
	margin: 0;
	padding: 0;
	}
	
	
	
	ul,li{
		list-style-type: none;
	}
	
	.mySlides {display: none}
	img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  position: relative;
  margin: 15px auto;
  width: 1528px;
  padding-top: 187px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: 65px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

#e-banner_dot{
	text-align: center;
}
#best_tab{
	margin: 0 65px;
}
#best_tab li{
	float: left;
    border-bottom: 6px double;
    margin: 2px;
    background-color: #b195d1;
    color: white;
    width: 149px;
    height: 35px;
    line-height: 36px;
    
}
#best{
	margin: 0 auto;
	padding: 0;
	text-align: center;
	width: 1600px;
	height: 1600px;
}
#best_img_line{
	margin: 0 auto;
	padding:0;
	border: 1px solid #6d4e8a6b;
	width: 1500px;
    height: 1249px;
    margin-top: 67px;

}
#best_img img{
	
}
#best_img div {
	text-align: center;
	display: inline-block;
	padding: 40px 31px;
	padding-bottom: 47px;
	font-size: 12px;
}
#display p{
}
this.fade{
    -webkit-animation-name: fade;
    -webkit-animation-duration: 1.5s;
    animation-name: fade;
    animation-duration: 1.5s;
}
#best_img p{
	float: right;
    border: 1px solid #ff8888;
    border-radius: 30px;
    width: 59px;
    height: 22px;
    background-color: #ff8888;
    color: white;
    font-weight: bold;
    line-height: 22px;
}

#best_img a{
	color: black;
}

</style>

</head>

<body id=index_body>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="img/e-banner1.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="img/e-banner2.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="img/e-banner3.jpg" style="width:100%">
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div id="e-banner_dot">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<br>
<br>
<br>

<div id="display">
<div id="best">
	<h1> 한주간 가장 많이 팔린 <b>BEST</b></h1>
		<div id="best_tab">
			<ul>
				<li>오늘!단하루 할인</li>
				<li>원피스</li>
				<li>블라우스</li>
				<li>티셔츠/니트</li>
				<li>스커트/슬랙스</li>
				<li>아우터</li>
			</ul>
		</div>
		<div id="best_img_line">
			<div id="best_img">
			
				<c:forEach items="${bestlist}" var="bestDto"> <!-- bestDto에서 한줄 씩 빼내옴. -->
					<a><div>
						<a href="detailProduct.bizpoll">
							<img src="img/${bestDto.p_img}">
						</a>
							<br>
							<br>
						<a href="detailProduct.bizpoll">
							<Strong>${bestDto.p_name}</Strong>
						</a>
						
						
								<hr>
								${bestDto.p_ex}
								<br>
								<br>
								<%-- ${bestDto.p_price}<br> --%>
								<fmt:setLocale value="ko_kr"/> <!-- ja_jp : 엔화 / en_us : 달러 / ko_kr : 원 -->
								<span><fmt:formatNumber value="${bestDto.p_price}" type="currency"/></span><!-- currency : 원단위 붙여주기. -->
								<%-- <span><fmt:formatNumber value="0.25" type="percent"/> </span> --%> <!-- 25 퍼센트 나타내기 -->
								<%-- <span><fmt:formatNumber value="3.141589" pattern="#.##"/> </span> --%> <!-- 소숫점 절삭 -->
								<br>
								<p>♥ ${bestDto.p_review}</p>
					</div></a>
				</c:forEach>
					
					
					
					
				
			</div>
		</div>
	</div>
</div>


























<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>
<%@ include file="include/footer.jsp" %>  
