<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/resttest/modal.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>		
	/* ------------장바구니 모달창 css ---------------*/
	#popBox {
		position: fixed;
		top: 0; left: 0; bottom: 0; right: 0;
		background: rgba(0, 0, 0, 0.8);
	}
	
	.popUp {
		position: absolute;
		top: calc(50vh - 100px); left: calc(50vw - 200px);
		background-color: white;
		display : flex;
		justify-content : center;
		
		border-radius: 10px;
		width: 400px;
		height: 200px;
	}
	
	#continue {
		background-color : white;
		color : black;
		border : 1px solid black;
	}
	#moveCart {
		background-color : grey;
		color : white;
	}

	/*-----------------------------------------*/
	
	
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
	#replies{
	margin:50px;
	}
	.form-control{
	width:800px;
	
	}
	
	.box-body{
	margin-left:50px;
	}
	.box-footer{
	margin-left:50px;
	}
	
	
#modDiv{
    width: 500px;
    height: 100px;
    background-color: black;
    position: relative;
    top: 50%;
    left: 50%;
    margin-top: 10px;
    margin-left: -150px;
    padding: 10px;
    z-index: 1000;
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
					<button type="button" id="basket" onclick="bas();" class="basket">장바구니담기</button>
				</div>
				<div class="col-md-6">
					<button class="payment">결제하기</button>
				</div>
			</div>	
		</div>
	</div>
	<div class="row">
	 상품정보    관련상품  리뷰 qna 쇼핑가이드
	</div>
</div>
<!-- 댓글 시작-->
<div class="row">
	    <div id="replies">
	    
	        <!-- 댓글 위치 -->
	    </div> 
 </div><!-- row -->
     
     
    <!-- 댓글쓰기 -->
<div class="row">
     <div class="box-body">
         <strong>글쓴이</strong>
         <input type="text" id="newReplyer" class="form-control">
         <strong>댓글</strong>
         <input type="text" id="newReplyText" class="form-control"><br>
     </div><!-- body -->
     <div class="box-footer">
         <button type="button" class="btn btn-primary" id="replyAddBtn">댓글 작성</button>
     </div><!-- footer -->
</div><!-- row -->
   
   
   <!-- 모달창 -->
   <div id="modDiv" style="display:none;">
       <div class="modal-title"></div>
       <div>
          <input type="text" id="replytext">
       </div>
       <div>
           <button type="button" id="replyModBtn">수정하기</button>
           <button type="button" id="replyDelBtn">삭제하기</button>
           <button type="button" id="closeBtn">닫기</button>
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

<!-- --------------장바구니 모달창 --------------- -->
<div id="popBox" style="display:none;">
	<div class="cartTitle">장바구니 미리보기</div>
		<div class="inner">
			<div class="popUp">
				<form action="/board/basket" id="form" method="get">
					<input type="hidden" name="cart_proNum" value="${board.boardNum }">
					<input type="hidden" name="cart_amount" value="${board.amount }">
					<input type="hidden" name="cart_price" value="${board.price }">
					<input type="hidden" name="cart_name" value="${board.name }">
					<button type="submit" id="moveCart">장바구니로 이동</button>
				</form>
				<button type="button" id="continue" onclick="clo();">장바구니 취소</button>
		</div>
	</div>
</div>	




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	//색상, 사이즈 선택하지 않으면 장바구니 담을 수 없게 하는 기능
	function bas( ) {
		
		if($(':radio[name="color"]:checked').length < 1) {
			alert("색상을 정해주세요");
		} else {
			if($(':radio[name="size"]:checked').length < 1) {
				alert("사이즈를 정해주세요");
			} else {
				$("#popBox").show();
	        	}
			}
		}
	 function clo() {
		 $("#popBox").hide();
	 }

	
	
	 // 댓글 등록
	 function getAllList(){
		    let bno = ${board.boardNum};
			let str = "";
			$.getJSON("/replies/all/" + bno, function(data){
				console.log(data.length);
				$(data).each(
					function(){
						console.log(this);
						let timestamp = this.updateDate;
						
						let date = new Date(timestamp);
						
						let formattedTime = `게시일 : \${date.getFullYear()}년
						                            \${(date.getMonth()+1)}월
						                            \${date.getDate()}일`;
	str += 
		`<div class='replyLi' data-rno='\${this.rno}'>
	        <strong>\${this.replyer}</strong>-\${formattedTime}<br/>
	        <div class='replytext'>\${this.reply}</div>
	        <button type='button' class='btn btn-info'>수정/삭제</button>
	        </div>`;
				});
				console.log(str);
				$("#replies").html(str);
			});			
		}
		getAllList();
		
		
		$("#replyAddBtn").on("click", function(){
	    	 let replyer = $("#newReplyer").val();  
	    	 let reply = $("#newReplyText").val();  
	    	 
	    	 $.ajax({
	    		 type : 'post',
	    		 url : '/replies',
	    		 headers : {
	    			 "Content-Type" : "application/json",
	    			 "X-HTTP-Method-Override" : "POST"
	    		 },
	    		 dataType : 'text',
	    		 data : JSON.stringify({
	    			 bno : ${board.boardNum},
	    			 replyer : replyer,
	    			 reply : reply
	    		 }),
	    		 success : function(result){
	    			 if(result == 'SUCCESS'){
	    				 
	    				 alert("등록 되었습니다.");
	    				 getAllList();
	    				 $("#newReplyer").val(''); 
	    				 $("#newReplyText").val(''); 
	    			 }
	    		 }
	    		 
	    	 });
	    	 
	      });// 글 등록로직 종료
		
		// 이벤트 위임
		$("#replies").on("click", ".replyLi button", function(){
			 
				let reply = $(this).parent();
		        
				let rno = reply.attr("data-rno");
				let replytext = $(this).prev().html()
				
				$(".modat-title").html(rno);
				$("#replytext").val(replytext);
				$("#modDiv").show("slow");
		 });// 댓글 삽입
		 
		 



	
</script>
<!--   <script src="/resources/resttest/delete.js"></script>
      <script src="/resources/resttest/modify.js"></script>
      <script src="/resources/resttest/modalclose.js"></script>  -->	

</body>
</html>