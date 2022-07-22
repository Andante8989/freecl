<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
	.pay { 
		border : none;
		color : white;
		background-color : #ff7d9e;
		border-radius : 10px;
	}
	
	.choice {
		border : grey;
		color : grey;
		background-color : none;
		border-radius : 10px;
	}
	.XX {
		border : none;
		background-color : white;
		color : gray;
	}
	.up {
		color: black;
	}
	
	.menu {
		vertical-align : center;
		text-align : center;
	}

  /* -------상단 hr 태그 부분 ----------- */
		.welcome {
		    border: none;
		    border-top: 1px solid #E3E7EB;
		    overflow: visible;
		    text-align: center;
		    height: 17px;
		    z-index : 3;
		    position : relative;
		    top : 40px;
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
		.container {
			position : relative;
			top : 40px;
		}
		
	  /* ----------------------------- */
	
	 /* -------상단 버튼 색상, 위치 부분 ----------- */
		.top{
		    left:1100px;
		    position:absolute;
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
			 		<sec:authorize access="isAnonymous()">
				 		<a href="/join">
				        <button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
					        회원가입
					    </button>
					    </a>
			 		</sec:authorize>
			 		<sec:authorize access="isAuthenticated()">
			 			<a href="/myPage">
			 			<button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
					        마이페이지
					    </button>
					    </a>
			 		</sec:authorize>
			         <a href="/board/customerCenter"><button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				        고객센터
				     </button></a>
				    <sec:authorize access="isAnonymous()">
				    	<a href="/customLogin">
				     	<button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				     	로그인</button>
				     	</a>
				    </sec:authorize>
				    <sec:authorize access="isAuthenticated()">
				    	<a href="/customLogout" >
				    	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				    	<button class="btn btn-light w-btn-pink-outline" type="submit" style="background-color: white;">
				     	로그아웃</button>
				     	</a>
				    </sec:authorize>
			  </ul>
		
	  <!-- 여기까지 상단의 버튼 부분 --> 
	  <hr class="welcome">
	  <h1>장바구니 페이지입니다.</h1>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-7">
			<hr class="up">
			<div class="row menu">
				<div class="col-md-2">고유번호</div>
				<div class="col-md-4 offset-md-1">상품정보</div>
				<div class="col-md-1 offset-md-1">수량</div>
				<div class="col-md-1 offset-md-1">금액</div>
				<div class="col-md-1">취소</div><hr/>
				<ul id="cc"></ul>
			</div>
		</div>
		<div class="col-md-4 offset-md-1">
			<div class="row sub">
				<div class="tit">
				<strong>결제금액</strong>
				</div>
				<div class="price">
					<br/>
					<strong id="pri"></strong>
				</div>
				<br/>
				<ul class="info">
					<li>
						<span class="t1">총 상품금액</span>
						<span class="t2"><span id="total_price"></span>원</span>
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
				<form action="/board/buy" method="post">
					<input type="hidden" name="toPrice" id="payPrice">
					<input type="hidden" name="toColor" id="payColor">
					<input type="hidden" name="toSize" id="paySize">
					<input type="hidden" name="proName" id="payName">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					<button type="submit" class="pay">전체상품 주문하기</button>	<button type="button" id="coupon">쿠폰 적용하기</button>
				</form>
			</div>
			<div class="row">
				<button class="choice">선택상품 주문하기</button>	
			</div>
		</div>
	</div>
</div>


<div class="footer">
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";

	
		var str = "";
		// get json으로 현재 장바구니 데이터 모두 가져오기
	    function getAllList() {
			let userId = "${userId}";
			$.getJSON("/board/all/" + userId, function(data) {
				console.log(data.length);
				str = "";
				var sum = 0;
				var delivery = 4000;
				var total = 0;
				var col = "";
				var siz = "";
				var na = "";
				
				$(data).each(
						function() {
							str += `<div class='row' data-pnum='\${this.cartNum}' class='Li'>
										<div class='col-md-2'>\${this.cartNum}</div>
										<div class='col-md-4 offset-md-1'>\${this.cart_name}\${this.cart_color}/\${this.cart_size}</div>
										<div class='col-md-1 offset-md-1'>\${this.cart_amount}</div>
										<div class='col-md-1 offset-md-1'>\${this.cart_price}</div>
										<div class='col-md-1'><button type='button' class='btn-close' aria-label='close'></button></div>
									</div><hr>`;
								sum += this.cart_price;
								total = delivery + sum;
								col += this.cart_color;
								siz += this.cart_size;
								na += this.cart_name;

						});
					var result = total.toLocaleString();
					var sumResult = sum.toLocaleString();
					console.log(col);
					console.log(siz);
					$("#cc").html(str);
					$("#pri").html(result + "원");
					$("#total_price").html(sumResult);
					$('input[id=payPrice]').attr('value', total);
					$('input[id=payColor]').attr('value', col);
					$('input[id=paySize]').attr('value', siz);
					$('input[id=payName]').attr('value', na);
					$("#coupon").on("click", function() {
						if()
					})
				}); 
		    };
		getAllList();
		
		
		
		
		// 장바구니 삭제 기능
		$("#cc").on("click",".col-md-1 button", function() {
			console.log(this);
			
			// 버튼 클릭시 해당열의 장바구니 고유번호 가져옴
			var ca = $(this).parent().parent();
			var del = ca.attr("data-pnum");
			console.log(del);
			
			$.ajax({
				beforeSend : function(xhr) { 
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				type : 'delete',
				url : '/board/' + del,
				header : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if(result == 'SUCCESS') {
						alert("삭제 되었습니다");
						// 장바구니 삭제 후 다시 전체 db 출력하기
						getAllList();
					}
				}
			});
		});
	
</script>
</body>
</html>