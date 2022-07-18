<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 아임포트 모듈 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>품질 좋은 상품 목록</h1>
<div class="itemSection">
	<div class="itemCard">
		<div class="itemTitle">
			<h2>헬창을 위한 근육 보충제</h2>
		</div>
		<div class="itemContent">
			<h2>맛없지만 단백질 보충이 됩니다</h2>
		</div>
		<div class="itemPrice">
			<p data-price="40000">40000원</p>
		</div>
		<div class="itemButton">
			<button class="orderBtn">주문하기</button>
		</div>
	</div>
	
	<div class="itemCard">
		<div class="itemTitle">
			<h2>개발자를 위한 키보드</h2>
		</div>
		<div class="itmeContent">
			<h2>타격감이 좋은 키보드</h2>
		</div>
		<div class="itemPrice">
			<p data-price="2000">2000원</p>
		</div>
		<div class="itemButton">
			<button class="orerBtn">주문하기</button>
		</div>
	</div>
	
	
	
	
	
</div>



<script>
	
	function iamport() {
		IMP.init('imp02618458');
		IMP.request_pay({
			pg : 'INIBillTst', // kg이니시스
			pay_method : 'card' // 결제수단
			merchant_uid : "order_no_0001",
			name : '주문명:결제테스트', // 결제창에 줄 상품명
			amount : 1,  // 금액
			buyer_email : 'swetch@naver.com', // 구매자 이메일
			buyer_name : '구매자이름',
			buyer_tel : '010-222-1111', // 구매자 번호
			buyer_addr : '서울시 강남구 삼성동', // 구매자 주소
			buyer_postcode : '123-456', // 구매자 우편번호
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) { // 결제 성공시 처리할 내역
				let msg = "결제가 완료되었습니다.";
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점거래ID : ' + rsp.merchant_uid;
				msg += '결제금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {  // 결제 실패시 처리할 내역
				let msg = "결제에 실패하였습니다.";
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg); // 여기서는 alert로 띄우지만 리다이렉트등 다양한 방법이 있음
		});
	}
	
	iamport(); // 실제로 실행 호출하기
	
	let itemPrice = 0;
	let itemTitle = "";
	let merchant_uid="";
	
	${".itemSection"}.on("click", ".orderBtn", function(){
		itemPrice = $(this).parent().siblings(".itemPrice").children().attr("datapirce")
		itemTitle = $(this).parent().siblings(".itemTitle").children().text();
		d = new Date();
		merchant_uid = "order" + d.getTime();
		
		iamport();
		
	});
	
	
	
	

	
	
</script>
</body>
</html>