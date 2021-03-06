<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/resttest/modal.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>	


         header{
		   background: white;
		   height: 215px;
		   padding:50px;
		   margin:0px;
		   }
		   main{
		   background: white;
		   min-height:700px;
		   margin-top:230px;
		   }
		   footer{
		     background: white;
		     height: 310px;
		   }
		
		
    /*---------------------------------*/
    /* 상단의 베스트 신상 등등 버튼들 */
			.dropdown{
			  display : inline-block;
	            top:10px;
	            left:50px;
	            z-index:10;
	       		
			}
			
	    /* 상단의 베스트 신상 등등 버튼 */
			.dropbtn{
			  border : none;
			  font-weight: 550;
			  padding : 12px;
			  width :300px;
			  text-align: left;
			  cursor : pointer;
			  font-size : 17.5px;
			}
			
			
			/* 상단의 버튼 위에 마우스 올렸을때 배경색*/
			.dropbtn:hover{
			  background-color : #ff7d9e;

			  color : white;
			  transition: 0.25s;
            
			}
			
			/* 버튼 위에 마우스 올렸을때 나오는 내용들 ex)자켓 패딩 등*/
			.dropdown-content{
			  display : none;
			  position : absolute;
			  z-index : 1; /*다른 요소들보다 앞에 배치*/
			  font-weight: 500;
			  background-color: #ff7d9e;
			  min-width : 200px;
			  transition: 0.25s;
			  
			 
			}
			.first {
				color : white;
			}
			
			
			.dropdown-content a{
			  display : block;
			  text-decoration : none;
			  font-size: 14.5px;
			  padding : 12px 20px;
			  color : white;
			  transition: 0.25s;
			}
			
			
			/* 내용위에 올렸을때 배경색*/
			.dropdown-content a:hover{
			  background-color : #ffb6c1;
			  transition: 0.25s;
		
			}
			
			/* 버튼위에 올렸을때 내용이 나오게끔 해주는*/
			.dropdown:hover .dropdown-content {
			  display: block;
			  color : white;
			  transition: 1s;
			}
			
			
		/*--------------------------------------*/	
			
	.one { font-size : 40px;}
	.two { font-size : 23px;}
	.four .five { height : 20px;}



	
		  /* -------상단 hr 태그 부분 ----------- */
		.welcome {
		    border: none;
		    border-top: 1px solid #E3E7EB;
		    overflow: visible;
		    text-align: center;
		    height: 17px;
		    z-index : 3;
		   margin-top: 60px;
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
		 /* freecl 로고*/
        #logo {
		margin : 0px;
		width : 160px;
		position: relative;
		margin-left: 30px;
		top:10px;
		left:100px;

	  }
	/* 검색창*/
	.inform{
	   position: absolute;
	   left:30%;
	   top:230px;
	   
	   
	}
	
	/* 검색창 */
	.ui-autocomplete-input{
	
	border-radius: 15px;
	width : 300px;
	height: 50px;
	margin-left: 50px;
	
	
	}
	
    /* 캘린더 아이콘 */
    #calendar{
    margin-left: 100px;
	width : 50px;
    }
    
    /* 하트 아이콘 */
     #heart{
    margin: 0px;
    margin-left: 10px;
	width : 50px;
    }
    
    /* 쇼핑 아이콘 */
    #shopping{
    margin-bottom: 3px;
    margin-left: 10px;
	width :50px;
    }
    
    /* 회원가입 고객센터 로그인 버튼 위치 */
    .top{
  		 	left:900px;
		    position:absolute;
    		top:110px;
    }
  		.w-btn-pink-outline:hover {
			background-color: #f199bc;
		    color: #d4dfe6;
		 }
	  /* ----------------------------- */






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
		padding: 50px;
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
	.photo {
		height : 800px;
	}
	.detail {
		height : 800px;
		color : black;
	}
	#replies{
	margin:30px;
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
	
	
	        
	 .replytext{
	 font-size: 20px;
	 }
	 
	 .replyLi{
	 font-size:22.5px;
	 margin:15px;
	 }
	
#modDiv{
    width: 500px;
    height: 200px;

    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.18);
    position: absolute;
    top:150px;
    margin-top: 1550px;
    padding: 10px;
    margin-left: 300px;
    z-index: 1000;
    
    background: -moz-linear-gradient(top, #FF7D9E 0%, #FFD9E3 100%);
    background: -webkit-linear-gradient(top, #FF7D9E 0%, #FFD9E3 100%);
    background: linear-gradient(to bottom, #FF7D9E 0%, #FFD9E3 100%);
}


.modal-title{
color:white;

}

 #replytext{
  width: 440px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: white;
}

#replyModBtn{
background-color: white;
margin-top: 10px;

}

#replyDelBtn{
background-color: white;

}

#closeBtn{
background-color: white;

}

#replybutton{
background-color: #ff7d9e; 
color: white;
width: 100px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
}

#replyAddBtn{

	background-color: #ff7d9e; 
	color: white;
	width: 150px;
	  height: 40px;
	  font-size: 20px;
	  border: 0;
	  border-radius: 5px;
	  outline: none;
	  padding-left: 10px;
	  margin: 15px;
	  margin-left: 650px;

}

#newReplyText{
 width: 800px;
  height: 35px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
  margin:10px;
}

#newReplyer{
border:0;
font-size:30px;
}

.banner{
		  margin-left:-50px;
		  margin-top:-50px;
		}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
	 <!-- 상단의 버튼 부분 -->
	     <a href="/event">
	     <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	     <img class="banner" src="https://img.sonyunara.com/files/new_banner/1657856272_0.gif"></a> 
	 
	 
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
		<div class="inform">
			   <input type="hidden" name="searchOrder" value>
			   <input type="text" title="검색어를 입력하세요" id="keyword" name="keyword" value autocomplete="off" class="ui-autocomplete-input">
		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
		</svg>
        <img id="calendar" src="/resources/image/calendar.png">
        <img id="heart" src="/resources/image/heart.png">
        <img id="shopping" src="/resources/image/shopping.png">
		
		   </div>
		   <a href="/main"><img id="logo" src="/resources/image/Freecl.png"></a>
		   <span class="material-symbols-outlined"></span>
<br>  
			    
			
			<div class="dropdown">
			 <button type="button" class="btn btn-right" id="btn-modal">〓</button>
			</div>
		    <div class="dropdown">
		      <span class="dropbtn">
		         베스트  
		      </span>
		    </div> 
		    <div class="dropdown">
		       <span class="dropbtn">신상</span>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">아우터</span>
		       <div class="dropdown-content">

		        <a href="#">가디건/조끼</a>
		        <a href="#">야상/점퍼</a>
		        <a href="#">자켓/코트</a>
		        <a href="#">패딩</a>
		        <a href="#">플리스</a>

		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">상의</span>
		       <div class="dropdown-content">
		        <a href="#">긴팔티셔츠</a>
		        <a href="#">맨투맨</a>
		        <a href="#">후드</a>
		        <a href="#">반팔/민소매티셔츠</a>
		        <a href="#">니트</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">셔츠/블라우스</span>
		       <div class="dropdown-content">
		       
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">트레이닝</span>
		       <div class="dropdown-content">
		        
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">베이직</span>
		       <div class="dropdown-content">
		        
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">원피스</span>
		       <div class="dropdown-content">
		        
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">스커트</span>
		       <div class="dropdown-content">
		       
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">팬츠</span>
		       <div class="dropdown-content">
		        <a href="#">청바지</a>
		        <a href="#">롱팬츠</a>
		        <a href="#">슬랙스</a>
		        <a href="#">면바지</a>
		        <a href="#">레깅스</a>
		        <a href="#">숏팬츠</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">가방</span>
		       <div class="dropdown-content">
		        <a href="#">백팩/스쿨팩</a>
		        <a href="#">크로스백/토트백</a>
		     
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">신발</span>
		       <div class="dropdown-content">
		        <a href="#">운동화/단화</a>
		        <a href="#">구두/워커</a>
		        <a href="#">샌들/슬리퍼/장화</a>
		      </div>
		    </div>
		    <div class="dropdown">
		       <span class="dropbtn">악세사리</span>
		       <div class="dropdown-content">
		        <a href="#">주얼리</a>
		        <a href="#">모자/벨트</a>
		        <a href="#">양말/스타킹</a>
		      </div>
		    </div>
		  </header>
		  
		  
<main>
  <div class="container">
	<div class="row">
		<div class="col-md-6 photo">
			<img src="/resources/image/jean.png" >
		</div>
		<div class="col-md-5 detail offset-md-1">
			<div class="row one">
				<div class="col-md-12">
					${board.name }
				</div>
			</div>
			<div class="row two">
				<div class="col-md-12">
					${board.price }원
				</div>
			</div>
			<hr/>
			<div class="row three">
				<div class="col-md-12">
					배송정보
				</div>
			</div>
			<hr/>
			<div class="row four">
				<div class="col-md-2">
					<p>색상</p>
				</div>
				<div class="col-md-10">
					<c:forEach var="item" items="${color }">
					<label><input type="radio" name="color" class="co" value="${item.color }">${item.color }</label>
      				</c:forEach>
      			</div>
			</div>
			<div class="row five">
				<div class="col-md-2">
					<p>사이즈</p>
				</div>
				<div class="col-md-10">
					<c:forEach var="size" items="${size }">
					<label><input type="radio" name="size" class="si" value="${size.sizeName }">${size.sizeName }</label>
					</c:forEach>
				</div>
			</div>
			<hr/>
			<div class="row" id="info" style="display:none;">
				<div class="col-md-5"><span id="showColor"></span></div>
				<div class="col-md-5"><span id="showSize"></span></div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-4">
				총 결제금액
				</div>
				<div class="col-md-8">
				
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<button type="button" id="basket" onclick="bas();" class="basket">장바구니담기</button>
				</div>
				<div class="col-md-6">
					<form action="/board/buy" method="post">
						<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
						<button type="submit" class="payment">결제하기</button>
					</form>
					
				</div>
			</div>	
		</div>
	</div>
	<div class="row">
	 상품정보    관련상품  리뷰 qna 쇼핑가이드
	</div>
</div>

</main>
<!-- 댓글 시작-->
<div class="row">
	    <div id="replies">
	    
	        <!-- 댓글 위치 -->
	    </div> 
 </div><!-- row -->
     
     
    <!-- 댓글쓰기 -->
<div class="row">
     <div class="box-body">

         <div class="col-md-9">
			<input type="text" id="newReplyer" name="userId" value="<sec:authentication property="principal.user.userId" />" readonly>
		 </div>
         <input type="text" id="newReplyText"><br>

     </div><!-- body -->
     <div class="box-footer">
         <button type="button"  id="replyAddBtn">댓글 작성</button>
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
			<div class="popUp">
				<form action="/board/basket" id="form" method="get">
					<input type="hidden" name="cart_proNum" value="${board.boardNum }">
					<input type="hidden" name="cart_amount" value="${board.amount }">
					<input type="hidden" name="cart_price" value="${board.price }">
					<input type="hidden" name="cart_name" value="${board.name }">
					<input type="hidden" name="cart_color" id="buyColor">
					<input type="hidden" name="cart_size" id="buySize">
					<input type="hidden" name="userId" value="<sec:authentication property="principal.user.userId" />" >
					<button type="submit" id="moveCart">장바구니로 이동</button>
					<button type="button" id="continue" onclick="clo();">장바구니 취소</button>
				</form>
		</div>
	</div>
</div>	



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
	

	
	//색상, 사이즈 선택하지 않으면 장바구니 담을 수 없게 하는 기능
	function bas( ) {
		if($(':radio[name="color"]:checked').length < 1) {
			alert("색상을 정해주세요");
		} else {
			if($(':radio[name="size"]:checked').length < 1) {
				alert("사이즈를 정해주세요");
			} else {
				$("#popBox").show();
				// 사이즈와 색상값을 모달창으로 값 넘겨주기
				let selectColor = $(':radio[name="color"]:checked').val();
				let selectSize = $(':radio[name="size"]:checked').val();
				$('input[id=buyColor]').attr('value', selectColor);
				$('input[id=buySize]').attr('value', selectSize);
	        	}
			}
		}
	 function clo() {
		 $("#popBox").hide();
	 }

	
	
	 // 댓글리스트
	 function getAllList(){
		    let bno = ${board.boardNum};
			let str = "";
			
			$.getJSON("/replies/all/" + bno, function(data){
				console.log(data.length);
				$(data).each(
					function(){
						console.log(this);
						let timestamp = this.updatDate;
						
						let date = new Date(timestamp);
						
						let formattedTime = ` \${date.getFullYear()}년
						                            \${(date.getMonth()+1)}월
						                            \${date.getDate()}일`;
	str += 
		`<div class='replyLi' data-rno='\${this.rno}'>
	        <strong>\${this.replyer}</strong>-\${formattedTime}<br/>
	        <div class='replytext'>\${this.reply}</div>
	        <button type='button' id='replybutton'>수정/삭제</button>
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
	    		 beforeSend : function(xhr) { 
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
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
				
				$(".modal-title").html(rno);
				$("#replytext").val(replytext);
				$("#modDiv").show("slow");
		 });// 댓글 삽입
		 
		 
		 $("#replyDelBtn").on("click", function(){
			 let rno = $(".modal-title").html();

			 $.ajax({
				 beforeSend : function(xhr) { 
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
				 type : 'delete',
				 url : '/replies/' + rno,
				 header : {
					 "Content-Type" : "application/json",
					 "X-HTTP-Method-Overide" : "DELETE"
				 },
				 dataType : "text",
				 success : function(result){
					 console.log("result: " + result);
					 if(result == 'SUCCESS'){
						 alert("삭제 되었습니다.");
						 // 모달닫기
						 $("#modDiv").hide("slow");
						 // 삭제된 이후 목록 가져와서 갱신하기
						 getAllList();
					 }
				 }
			 })
			 
		 });
		 
		 
		 $("#replyModBtn").on("click",function(){
			 let rno = $(".modal-title").html();
			 console.log(rno);
			 let reply = $("#replytext").val();
			 
			 $.ajax({
				 beforeSend : function(xhr) { 
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
				 type : 'put',
				 url : '/replies/' + rno,
				 header : {
					 "Content-Type" : "application/json",
					 "X-HTTP-Method-Override" : "PUT"
				 },
				 contentType : "application/json",
				 data: JSON.stringify({reply:reply}),
				 dataType : 'text',
				 success : function(result){
					 console.log("result: " + result);
					 if(result == 'SUCCESS'){
						 alert("수정 되었습니다.");
						 $("#modDiv").hide("slow");
						 getAllList();
					 }
				 }
			 })
		 })
		 
		 
		 $("#closeBtn").on("click",function(){
					$("#modDiv").hide("slow");
			 });// 댓글 창 닫기
			 
	     $(".co").on("click", function() {
	    	 // 색상중 클릭하면 그 내용 콘솔에 띄우기
	    	 console.log($(this).val());  
	    	 let clickColor = $(this).val();
	    	 $("#showColor").html(clickColor + " / ");
	    	 $("#buyColor").html(clickColor);
	     })
	     
		 $(".si").on("click", function() {
		     // 사이즈 클릭하면 그 내용 콘솔에 띄우기
		     console.log($(this).val());  
		     let clickSize = $(this).val();
		     $("#showSize").html(clickSize);
		     $("#buySize").html(clickSize);
		 })
		 
		 function show() {
				 console.log("색상값 : " + $("#showColor").val() );
				 if ($("#showColor").val() != null && $("#showSize").val() != null) {
					 $("#info").css("display", "block");
				 }
			 }
		show();

</script>
      <!-- <script src="/resources/resttest/delete.js"></script>
      <script src="/resources/resttest/modify.js"></script>
      <script src="/resources/resttest/modalclose.js"></script> -->

</body>
</html>