<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
	#logo {
		margin : 200px;
		width : 200px;
	}
	.photo {
		height : 800px;
		border : solid 1px black;
	}
	.detail {
		height : 800px;
		border : solid 1px black;
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
header <img id="logo" src="/resources/image/freecl.jpg">
</div>
<div class="container">
	<div class="row">
		<div class="col-md-6 photo">
		상품 사진 자리
		<img src="/resources/image/jean.png" >
		</div>
		<div class="col-md-6 detail">
		상품 상세 정보 자리
			<div class="row">
				product name
			</div>
			<div class="row">
				price
			</div>
			<div class="row">
			    배송정보
			</div>
			<div class="row">
				color
			</div>
			<div class="row">
				size
			</div>
			<div class="row">
				total price
				<button>장바구니</button><button>결제하기</button>
			</div>	
		</div>
	</div>
	<div class="row">
	 상품정보    관련상품  리뷰 qna 쇼핑가이드
	</div>
</div>
<div class="footer">
footer
</div>

</body>
</html>