<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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

userVO : <sec:authentication property="principal.user" />

<input type="hidden" id="mail" value="<sec:authentication property="principal.user.email" />">

<script>

var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
	
	
	let itemPrice = ${price}-4000;
	let itemTitle = "";
	d = new Date(); // 현시간
	let merchant_uid= "order" + d.getTime();
	let itemAddr = '<sec:authentication property="principal.user.addr" />';
	let itemEmail = $("#mail").val();
	let buyer = '<sec:authentication property="principal.user.userId" />';
	let itemPnum = '<sec:authentication property="principal.user.p_num" />';
	let buyColor = '${color}';
	let buySize =  '${size}';
	let name = '${product}';
	console.log(name);
	function iamport() {
		IMP.init('imp23066347');
		IMP.request_pay({
			pg : 'html5_inicis', // kg이니시스
			pay_method : 'card', // 결제수단
			merchant_uid : merchant_uid,
			name : name, // 결제창에 줄 상품명
			amount : itemPrice,  // 금액
			buyer_email : itemEmail, // 구매자 이메일
			buyer_name : buyer,
			buyer_tel : itemPnum, // 구매자 번호
			buyer_addr : itemAddr, // 구매자 주소
			buyer_postcode : '123-456', // 구매자 우편번호
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) { // 결제 성공시 처리할 내역
				$.ajax({
					 beforeSend : function(xhr) { 
							xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
						},
					type: 'post',
					url: '/board/order',
					headers:{
						"Content-Type":"application/json",
						"X-HTTP-Method-Override":"POST"
					},
					dataType:"text",
					data : JSON.stringify({
						itemname: '옷',
						buyer : buyer,
						buy_price : itemPrice,
						buyColor : buyColor,
						buySize : buySize,
						merchant_uid : merchant_uid
					}),
					success: function() {
						alert(itemTitle + " 결제완료!" );
						// 결제완료시 메인페이지로 리다이렉트	
						window.location.href = "http://localhost:52000/main";
					}
				});
			} else {  // 결제 실패시 처리할 내역
				let msg = "결제에 실패하였습니다.";
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg); // 여기서는 alert로 띄우지만 리다이렉트등 다양한 방법이 있음
				window.location.href = "http://localhost:52000/board/basket";
			}
		});
	}
	iamport();

	

	
	
</script>
</body>
</html>