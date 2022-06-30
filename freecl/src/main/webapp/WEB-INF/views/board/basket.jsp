<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
	.top {
		margin: 0 0 22px 0;
 	  	padding: 40px 44px 48px 44px;
   		background: #f6f6f6;
	}
	#pri {
		color : #ff7d9e;
		pont-size : 28px;}
	ul {
		padding-left : 0px;	
		list-style : none;
		}
	.top li { position : relative;}
	.top li span.t2 { position : absolute; right:0;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>장바구니 페이지입니다.</h1>
${size }
${color }


<div class="header">
</div>
<div class="container">
	<div class="row">
		<div class="col-md-8">
			<table class="table">
				<thead>
					<tr>
						<th>ㅇ</th>
						<th>주문정보</th>
						<th>수량</th>
						<th>가격</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="col-md-4">
			<div class="top">
				<div class="tit">
				결제금액
				</div>
				<div class="price">
					<strong id="pri">15,000원</strong>
				</div>
				<ul class="info">
					<li>
						<span class="t1">총 상품금액</span>
						<span class="t2"><span id="total_price">19,000</span>원</span>
					</li>
					<li>
						<span class="t1">배송비</span>
						<span class="t2">4,000원</span>
					</li>
					<li>
						<span class="t1">할인금액</span>
						<span class="t2">0원</span>
					</li>
				</ul>
			</div>
			<div class="row">
				<button>전체상품 주문하기</button>	
			</div>
			<div class="row">
				<button>선택상품 주문하기</button>	
			</div>
		</div>
	</div>
</div>
<div class="footer">
</div>

</body>
</html>