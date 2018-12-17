<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#movie_search_all{
		width: 1920px;
		margin : 145px auto 145px auto;
	}
	
	
	/* 검색창 area */
	#search_input{
		border-top: 4px solid #89c0cf;
	    padding: 27px 36px 0 36px;
	    width: 1500px;
	    margin: 0 auto;
	}
	
	#serch_input{
		background-color: #92d1e2;
	    height: 89px;
	    width: 71%;
	    margin: 0 auto;
	    padding-top: 52px;
	    border-radius: 5px;
	}
	
	#serch_input_in{
		margin: 0 auto 0 auto;
	    width: 464px;
	}
	
	#selectbox{
	    width: 97px;
	    height: 31px;
	    margin-right: 16px;
	    outline: 0px;
	    vertical-align: middle;
	    padding: 0 0 3px 5px;
	}
	
	#search_input_box{
		width: 331px;
	    height: 25px;
	    outline: 0px;
	    padding-left: 10px;
	    border-radius: 0px;
	}
	
	/* 안내 text area */
	#Guid_text{
	    font-size: 31px;
	    padding: 74px 0 7px 0;
	    width: 1312.08px;
	}
	
	#Guid_text > span:nth-child(1) {
		font-size: 31px;
	    padding: 30px 0;
	    width: 1312.08px;
	    margin: 0 auto;
	    font-weight: bold;
    	color: #ff547b;
	}
	
	
	/* 영화 개수 count area */
	#counting{
    display: inline-block;
    margin-left: 7px;
    color: #5f5f5f;
    margin-bottom: 35px;
    padding: 7px 0 0 0;
    width: 290px;
    font-size: 13px;
	}
	
	#movielist{
	    border: 1px dotted #c8c8c8;
	    padding: 41px 17px;
	    border-radius: 5px;
	}
	
	#search_table2 p:nth-child(1){
		color: #3a3a3a;
		margin: 8px 0px 0px 0;
		font-size: 14px;
		font-weight: bold;
	}
	#search_table2 p:nth-child(2), p:nth-child(3), p:nth-child(4){
	    font-weight: 100;
	    font-size: 12px;
	    color: #8c8c8c;
	    margin: 4px 0;
	    padding-left: 4px;
	}
	#search_table2 p:nth-child(5){
	    margin-bottom: 3px;
	    color: #e02828;
	    font-size: 14px;
		font-weight: bold;
	}
	#search_table2 p:nth-child(6){
	    overflow: hidden;
	    height: 82px;
	    -webkit-line-clamp: 5;
	    display: -webkit-box;
	    -webkit-box-orient: vertical;
	    font-size: 12px;
	    color: #717171;
	    margin-top: 2px;
	    padding-left: 4px;
		font-weight: bold;
	}
	
	
	
	
	
	
	
	
	
	
	
	#search_table{
	    border: 1px solid #d0d0d0;
	    border-left: none;
	    border-right: none;
	    width: 94%;
	    padding: 10px 6px;
	    margin: 0 auto;
	    border-collapse: collapse;
	}
	#search_table img{
		background-color: #d2d2d2;
	    padding: 20px 13px;
	}
	
	
	#search_table td{
		padding-right: 18px;
	    border-bottom: 1px solid #d0d0d0;
	    padding: 15px 7px;
	}
	
	#search_table th{
	    width: 100%;
	    text-align: left;
	    padding-left: 10px;
	    border-bottom: 1px solid #d0d0d0;
	}
	
	
	
	
	
/* 	
		/* 페이지네이션 
	#paging ul{
		display: inline-block;
	}
	
	#paging li{
	    border: 1px solid #d7d5d5;
	    font-size: 12px;
	    color: #757575;
	    line-height: 59px;
	    width: 34px;
	    height: 34px;
	}
	
	
	.pagenation{
		text-align: center;
		clear: both;
		height: 35px;
		margin-top: 26px;
	}
	
	.pagenation a{
	    padding: 4px 8px;
	    border: 3px solid #d4d4d4;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #d5ced8;
	    border-left: none;
	}
	
	.pagenation .active{
	    font-weight: bold;
	    padding: 4px 8px;
	    border: 3px solid #9b9b9b;
	    background-color: #ffffff;
	    border-radius: 6px;
	    color: #111111;
	    border-top: 0.5px solid #9b9b9b;
	    border-left: none;
	}
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	#search_table_le{
	    display: inline-block;
	    vertical-align: 21px;
	    padding: 18px 14px;
	    background-color: #d2d2d2;
	}
	#search_table_ri{
		display: inline-block;
		padding-left: 14px;
	}
	
	#search_table2{
		border: 1px solid #d0d0d0;
	    border-left: none;
	    border-right: none;
	    width: 94%;
	    padding: 10px 6px;
	    margin: 0 auto;
	    border-collapse: collapse;
	}
	
</style>
</head>
<body id="movie_search" onload="load()">
	<div id="movie_search_all">
		<div id="search_input">
		
			<!-- 서치area -->
			<div id="serch_input">
				<div id="serch_input_in">
					<select id="selectbox">
						<option value="1">전체
						<option value="2">제목별
						<option value="3">줄거리별
						<option value="4">장르별
						<option value="5">국가별
						<option value="6">배우별
					</select>
					<input id="search_input_box" placeholder="보헤미안 렙소디">
				</div>
			</div>
			
			<!-- 안내 text area -->
			<div id="Guid_text">
				<span>"선물"</span><span>에 대한 검색 결과입니다.</span>
			</div>
			
			<!-- 영화 개수 count area -->
			<div id="counting">
				<span>총</span>(<strong> 10 </strong>)<span>개의 영화가 검색되었습니다.</span>
			</div>
			
			<!-- 영화 리스트 area -->
			<div id="movielist">
			
			<!-- 영화개수 count area 끝 -->
			
			
			
			
				<div id="search_table2">
				
					<div id="search_table_le">
						<img src="img/movie_image(1).jpg">
					</div>
					<div id="search_table_ri">
						<p>보헤미안 렙소디</p>
						<p>드라마 | 미국 | 12세 관람가 | 2018.10.31 개봉 </p>
						<p>감독 : 워렌버핏</p>
						<p>주연 : 조이안나 필렛 스머트 그린 왈드</p>
						<p>줄거리</p>
						<p>“나는 스타가 되지 않을 것이다, 전설이 될 것이다”<br>
							공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 ‘파록버사라’ <br>
							 보컬을 구하던 로컬 밴드에 들어가게 되면서 ‘프레디 머큐리’라는 이름으로 밴드 ‘퀸’을 이끌게 된다. <br>
							 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 ‘퀸’은 <br>
							 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 <br>
							 무려 6분 동안 이어지는 실험적인 곡 ‘보헤미안 랩소디’로 대성공을 거두며 월드스타 반열에 오른다. <br>
							 그러나 독보적인 존재감을 뿜어내던 ‘프레디 머큐리’는 솔로 데뷔라는 유혹에 흔들리게 되고 <br>
							 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… <br>
							 세상에서 소외된 아웃사이더에서 전설의 록밴드 ‘퀸’이 되기까지, <br>
							 우리가 몰랐던 그들의 진짜 이야기가 시작된다!</p>
					</div>
				
				</div>
			
			</div>
			
			
			
			
			
			
			
		</div>
	</div>
</body>
</html>
