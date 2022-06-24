<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<style>
	h1 {
		text-align : center;		
	}
	a {
		text-decoration-line: none;
	}
	.footer {
		background-color : black;
		color : white;
	}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>고객센터 페이지입니다.</h2>
<hr/>
<div class="header">
<h1>고객센터</h1>
</div>
<div class="container">
	<div class="row">
		<table class="table">
			<thead>
				<tr>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr><td class="tit"><span>[배송문의] 주문 시 배송은 언제 받나요?</span></td></tr>
				<tr><td class="bottom" style="display:none;">
				보통 2~7일(영업일 기준) 소요됩니다</br></br>
				또한, 주문금액에 따라 기본 안내된 상품준비 기간보다 지연되는 주문의 경우에는 </br></br>
				준비된 제품부터 선출고 서비스를 해드리고 있는 점 참고부탁드립니다.
				</td></tr>
				<tr><td class="tit">[기타문의]	환불은 어떻게 되나요?</td></tr>
				<tr><td class="bottom" style="display:none;">등록하신 결제수단으로 취소가 되는 개념이며, 승인취소 반영기간은 2~5일 입니다.</td></tr>
				<tr><td class="tit">[주문결제]	비회원 주문 내역은 어떻게 조회하나요?</td></tr>
				<tr><td class="bottom" style="display:none;">
				사이트 > 로그인 > 비회원주문조회에서 조회 가능합니다.</br></br>
				* 주문번호/비밀번호 분실로 조회가 어려우실경우 1:1게시판(기타문의)>주문자성함/연락처를 메모남겨주시면 확인후 안내해드리겠습니다.</br></br>
				* 비회원 주문의 경우 상품후기 또는 회원적립금& 기타 할인혜택등을 받지 못하니 되도록 회원주문을 부탁드립니다.
				</td></tr>
				<tr><td class="tit">[배송문의]	해외 배송은 어떻게 되나요?</td></tr>
				<tr><td class="bottom" style="display:none;">
				우체국 EMS로 발송이 되며 배송기간은 3~15일 내외로 소요됩니다.</br></br>
				또한 해외 배송은 나라 및 제품 무게에 따라 배송비가 차이가 있습니다</br></br>
				주문 후 입금확인, 상품준비가 완료되면 제품의 나라와 대략적인 무게에 따른 배송비 안내를 드리고 있습니다.
				</td></tr>
			</tbody>
		</table>
	</div>
</div>
<hr/>
<div class="footer">
상호 :  프리클(freecl)
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(".tit").on("click", function() {
		$(".bottom").css("display", "none");
		console.log($(this).parent().next().children());
		$(this).parent().next().children().css("display", "block");

	});

</script>


</body>
</html>