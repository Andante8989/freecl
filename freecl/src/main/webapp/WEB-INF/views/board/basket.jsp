<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
/* -------상단 hr 태그 부분 ----------- */
		.welcome {
		    border: none;
		    border-top: 1px solid #E3E7EB;
		    overflow: visible;
		    text-align: center;
		    height: 17px;
		    z-index : 3;
		}
		
		.welcome:after {
		    content: "Welcome";
		    position: relative;
		    top: -10px;
		    background: #F1F3F5; 
		    padding: 0 10px;
		    color: #868E96;
		    font-size: 0.8em;
		}
	  /* ----------------------------- */
	  
	  
	  /* -------상단 버튼 색상, 위치 부분 ----------- */
		.top{
		    left:70%;
		    position:relative;
		    top:10px;
   		 }
  		.w-btn-pink-outline:hover {
			background-color: #f199bc;
		    color: #d4dfe6;
		 }
	  /* ----------------------------- */
	.sub {
		margin: 0 0 22px 0;
 	  	padding: 40px 44px 48px 44px;
   		background: #f6f6f6;
	}
	#pri {
		color : #ff7d9e;
		font-size : 28px;
		}
		
	ul {
		padding-left : 0px;	
		list-style : none;
		}
	.sub li { position : relative;}
	.sub li span.t2 { position : absolute; right:0;}
	.tit {font-size : 13px;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">


 	 <!-- 상단의 버튼 부분 -->
	 
			 <ul class="top">
			        <button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				        회원가입
				    </button>
			         <a href="/board/customerCenter"><button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				        고객센터
				     </button></a>
				     <button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				        로그인
				 </button>
			  </ul>
		
	  <!-- 여기까지 상단의 버튼 부분 --> 
	  <hr class="welcome">
	  <h1>장바구니 페이지입니다.</h1>
${size }
${color }
	  
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
				<tbody>
					<tr>
						<td>${boardNum }</td>
						<td></td>
						<td>${amount }</td>
						<td>${price }</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-4">
			<div class="sub">
				<div class="tit">
				<strong>결제금액</strong>
				</div>
				<div class="price">
					<br/>
					<strong id="pri">15,000원</strong>
				</div>
				<br/>
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
			<button>전체상품 주문하기</button>	
		
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