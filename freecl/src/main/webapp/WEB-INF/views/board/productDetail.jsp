<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>		

	#cartMod {
	width : 1000px;
	height : 800px;
	background-color : pink;
	position : relactive;
	top : 50%;
	left : 50%;
	margin-top : -50px;
	margin-left: -150px;
	padding : 10px;
	z-index: 1000px;
	}
	
	
	
	a {
		text-decoration-line: none;
	}
	.footer {
		background-color : black;
		color : white;

	}
	li::before {content: " | "}
	li {
		list-style : none;	
		display : inline;
		font-size : 13px;
		text-align : center;
		font-family : inherit;
		color : #d6d6d6;
	}
	.col-md-5 { 
		font-size : 15px;
		color : grey;
	}
	strong { color : black;}
	button {
		border : none;
		border-radius : 10px;
	}
	.payment {
		width : 250px;
		height : 80px;
		background-color : #ff7d9e;
		color : #fff;
		font-size : 25px;
	}
	.basket {
		width : 250px;
		height : 80px;
		background-color : black;
		color : #fff;
		font-size : 25px;
	}
	#logo {
		margin : 200px;
		width : 200px;
	}
	.photo {
		height : 800px;
	}
	.detail {
		height : 800px;
		color : black;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>디테일페이지입니다</h2>

<div class="header">
	
	<div class="row">
		<div class="col-md-9">
		
		</div>
		<div class="col-md-3">
			<button>회원가입</button>
			<a href="/board/customerCenter"><button>고객센터</button></a>
			<button>로그인</button>
		</div>
	</div>
<hr/>
header <img id="logo" src="/resources/image/Freecl.png">
</div>
<div class="container">
	<div class="row">
		<div class="col-md-6 photo">
		상품 사진 자리
		<img src="/resources/image/jean.png" >
		</div>
		<div class="col-md-5 detail offset-md-1">
		상품 상세 정보 자리
		${board }
		${color }
			<div class="row">
				${board.name }
			</div>
			<div class="row">
				${board.price }
			</div>
			<hr/>
			<div class="row">
			    배송정보
			</div>
			<hr/>
			<form action="/board/basket" id="form" method="get">
				<input type="hidden" name="title" value="${board.name }">
				<input type="hidden" name="cart_proNum" value="${board.boardNum }">
				<input type="hidden" name="cart_amount" value="${board.amount }">
				<input type="hidden" name="cart_price" value="${board.price }">
			<div class="row">
				<p>color</p>
					<c:forEach var="item" items="${color }">
					<label><input type="radio" name="color" value="${item.color }">${item.color }</label>
      				</c:forEach>
			</div>
			<div class="row">
				<p>size</p>
					<c:forEach var="size" items="${size }">
					<label><input type="radio" name="size" value="${size.sizeName }">${size.sizeName }</label>
					</c:forEach>
			</div>
			<hr/>
			<div class="row">
				total price
			</div>
			<div class="row">
				<div class="col-md-6">
					
				</div>
				</form>
				<div class="col-md-6">
				<button id="basket" class="basket" onclick="test()">장바구니</button>
					<button class="payment">결제하기</button>
				</div>
			</div>	
		</div>
	</div>
	<div class="row">
	 상품정보    관련상품  리뷰 qna 쇼핑가이드
	</div>
</div>
<!-- 여기서부터 화면 하단 기본 셋팅 -->
<hr/>

<div class="row">
	<div class="col-md-3 offset-md-1">	
		<p>customer center</p>
		<p>전화보다 빠른 톡 상담!</p>
		<p> 0000-0000</p>
		<div class="row">
			<div class="col-md-5">
				<strong>전화상담</strong><br/>
				평일 11:00 ~ 17:00<br/>
				점심 13:00 ~ 14:00<br/>
			</div>
			<div class="col-md-5">
				<strong>톡상담</strong><br/>
				평일 10:00 ~ 17:00<br/>
				점심 13:00 ~ 14:00<br/>
			</div>
		</div>
		<hr/>
		<div class="row">
			<div class="col-md-5">
				<strong>게시판 상담</strong><br/>
				평일 09:00 ~ 18:00<br/>
			</div>
			<div class="col-md-5">
				<br/>
				점심 13:00 ~ 14:00<br/>
			</div>
		</div>
	</div>
	<div class="col-md-3">
		<div class="row">
			<div class="col-md-5">
				<p><strong>ABOUT US</strong></p>
				멤버쉽 안내<br/>
				<a href="/board/notice">공지사항</a>
			</div>
			<div class="col-md-5">
				<p><strong>GUIDE</strong></p>
				<a href="/intro/use">이용약관</a><br/>
				<a href="/intro/privacy">개인정보 처리방침</a><br/>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<p><strong>DELIVERY</strong></p>
		<p><strong>반품주소</strong></p>
		<p>서울시 마포구 신촌로 000 ict 인재개발원 3층 반품담당자 앞</br>
		   (운임은 꼭 선불로 보내주셔야 합니다!)</p>
		<p><button>24시간 교환/반품 신청</button></p>
		<button>입점 신청 바로가기</button>
	</div>
</div>

<div class="footer">
<p>ABOUT FREECL</p>		
	<ul>
		<li> &nbsp;&nbsp;상호 :  프리클(freecl)&nbsp;&nbsp;</li>
		<li> &nbsp;&nbsp;사업장 소재지 : 서울시 마포구 신촌 ict 인재개발원&nbsp;&nbsp;</li>
		<li> &nbsp;&nbsp;안내전화 1111-2222&nbsp;&nbsp; </li> 
		<li> &nbsp;&nbsp;대표이사:프리클팀&nbsp;&nbsp;</li>
		<li> &nbsp;&nbsp;개인정보관리책임자:홍길동&nbsp;&nbsp;</li>
	</ul>
	<ul>
		<li>&nbsp;&nbsp;사업자등록번호 : 000-00-00000&nbsp;&nbsp;</li>
		<li>&nbsp;&nbsp;통신판매업 신고번호 : 0000-신촌-0000&nbsp;&nbsp;</li>
	</ul>
	<ul>
		<li>COPYRIGHT (C) 2022 FREECL ALL RIGHTS RESERVED.</li>
	</ul>
</div>

<div id="cartMod" style="display:none;">
	<div class="cartTitle">장바구니 미리보기</div>
	<div>
		
	</div>
	<div>
		<button type="button" id="replyModBtn">장바구니로 이동</button>
		<button type="button" id="replyDelBtn">쇼핑 계속하기</button>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	//색상, 사이즈 선택하지 않으면 장바구니 담을 수 없게 하는 기능
	/*
	$( "#basket" ).click(function( event ) {
	event.preventDefault();
	if($(':radio[name="color"]:checked').length < 1) {
		alert("색상을 정해주세요");
	} else {
		if($(':radio[name="size"]:checked').length < 1) {
			alert("사이즈를 정해주세요");
		} else {
			$("#form").submit();
		}
		
	}
	});*/

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</script>



</body>
</html>