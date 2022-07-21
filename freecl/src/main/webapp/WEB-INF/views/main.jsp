<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
    
         body{
		   background:url(/resources/image/Pink Flowers Linktree Background.png);
		 }
		form {
		 	display: inline-block;
		 }
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
		
		/* 상단의 베스트 신상 등등 버튼들 */
			.dropdown{
			  display : inline-block;
	            top:20px;
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
			
			h1{
			  bold:10px;
			}
			
			#btn-modal{
			font-size:30px;
			font-weight: 600;
			}
			
			/* =모달창 안의 투명창*/
			#modal.modal-overlay {
            width: 100%;
            height: 1000%;
            position: absolute;
            left: 0;
            top: 150;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            z-index:100;
            
        }
        
        /* 모달창 안의 핑크색 창*/
        #modal .modal-window {
            border-radius: 5px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 1000px;
            height: 10000px;
            position: relative;
            top: 100px;
            padding: 10px;
            background-color:#ff7d9e;
            box-shadow: 0 px 0px 0 rgba( 31, 38, 135, 0.37 );
            background: rgba( 205, 150, 180, 0.80 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            z-index:10;
        }
       
       /* 모달창안의 닫기 버튼*/
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
            z-index:10;
        }
       
        
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
    left:70%;
    position:relative;
    top:20px;
    }
    
    /* 충현님이 한거*/
    .insert {margin-left : 1100px;}
	.notice {
		text-align : center;
	}
	th, td { text-align : center;}
	.date { text-align : right;}
	p { width : 350px;}
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
	
	
       
       /* 회원가입 고객센터 등 버튼 이벤트 */
		.w-btn-pink-outline:hover {
		    background-color: #f199bc;
		    color: #d4dfe6;
		}
		
		
		
      /* 상단 hr 태그 부분 */
		.welcome {
		    border: none;
		    border-top: 1px solid #E3E7EB;
		    overflow: visible;
		    text-align: center;
		    margin-top: 40px;
		    height: 17px;
		    z-index : 3;
		}
		
		.welcome:after {
		    content: "Welcome";
		    position: relative;
		    top: -15px;
		    background: #F1F3F5; 
		    padding: 0 10px;
		    color: #868E96;
		    font-size: 0.8em;
		}
		
		
		/* 메인 슬라이드 로직*/
		.section input[id*="slide"]{
		    display:none;
		}
		.section .slidewrap {
		   max-width:1200px;
		   margin:0 auto;
		   overflow:hidden;
		}
		.section .slidelist {
		   white-space:nowrap;
		   font-size:0;
		}
		.section .slidelist > li {
		   display:inline-block;
		   vertical-align:middle;
		   width:100%;
		   transition:all .5s;
		}
		
		.section .slidelist > li > a {
		  display:block;
		  position:relative;
		}
		.section .slidelist > li > a img {
		   width:100%;
		}
		
		.section .slidelist label {
		  position:absolute;
		  z-index:2;
		  top:50%;
		  transform:translateY(-50%);
		  padding:50px;
		  cursor:pointer;
		}
		
		.section .slidelist .left {
		   top:350px;
		   left:30px;
		   background:url('/resources/image/left-arrow.png')center center / 100% no-repeat;
		}
		.section .slidelist .right{
		   right:30px;
		   background:url('/resources/image/right-arrow.png')center center / 100% no-repeat;
		}
		
		.section [id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
		.section [id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
		.section [id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
		
		.banner{
		  margin-left:-50px;
		  margin-top:-50px;
		}




</style>
</head>
		
<body>


		<title>Freecl</title>
		
		<header>
		<!-- 상단의 버튼 부분 -->
	      <img class="banner" src="https://img.sonyunara.com/files/new_banner/1657856272_0.gif">
			
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
			    <div id="modal" class="modal-overlay">
			        <div class="modal-window">
			         <div class="close-area">X</div>
			            <div class="content">
			                <button type="button" style="background-color:rgba(0,0,0,0); border:0; outline:0;"><p>커뮤니티</p></button>
			                <button type="button" style="background-color:rgba(0,0,0,0); border:0; outline:0;"><p>마이페이지</p></button>
			                <button type="button" style="background-color:rgba(0,0,0,0); border:0; outline:0;"><p>고객센터</p></button>
			              </div>
			         </div>
			      </div>
			
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
<<<<<<< HEAD
		        <a href="#">가디건/조끼</a>
		        <a href="#">야상/점퍼</a>
		        <a href="#">자켓/코트</a>
		        <a href="#">패딩</a>
		        <a href="#">플리스</a>
=======
		        <a href="#" style="color: red">자켓</a>
		        <a href="#" style="color: white">조끼</a>
		        <a href="#" style="color: white">패딩</a>
>>>>>>> Aantante
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
		  
		  <div class="section">
		         <input type="radio" name="slide" id="slide01" checked>
		         <input type="radio" name="slide" id="slide02">
		         <input type="radio" name="slide" id="slide03">
		         
		      <div class="slidewrap">
		          <ul class="slidelist">
		            <li>
		               <a>
		                  <label for="slide03" class="left"></label>
		                  <a href="/board/detail"><img src="/resources/image/main3.png"></a>
		                  <label for="slide02" class="right"></label>
		               </a>
		            </li>
		            <li>
		               <a>
		                  <label for="slide01" class="left"></label>
		                  <a href="/board/detail"><img src="/resources/image/main2.png"></a>
		                  <label for="slide03" class="right"></label>
		               </a>
		            </li>
		            <li>
		               <a>
		                  <label for="slide02" class="left"></label>
		                  <a href="/board/detail"><img src="/resources/image/main01.png"></a>
		                  <label for="slide01" class="right"></label>
		               </a>
		            </li>
		          </ul>
		      </div>
          </div>
		  </main>
		  <table class="table">
		  	<thead>
		  		<tr>	
		  			<th>상품번호</th>
		  			<th>상품명</th>
		  			<th>종류</th>
		  		</tr>
		  	</thead>
		  	<tbody>
		  		<c:forEach var="board" items="${boardList }">
					<tr>
						<td>${board.boardNum}</td>
						<td><a href="/board/detail?boardNum=${board.boardNum }">${board.name }</a></td>
						<td>${board.kind }</td>
					</tr>
				</c:forEach> 
		  	</tbody>
		  </table>
		  
		   <sec:authorize access="isAuthenticated()">
		   	<form action="/chatting" method="get">
		    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		    <input type="hidden" name="userId" value="<sec:authentication property="principal.user.userId" />"/>
		    <input type="hidden" name="room_id" value="<sec:authentication property="principal.user.userId" />"/>
		    <input type="submit" value="채팅방 입장"/>
		    <p>UserVO : <sec:authentication property="principal.user" /></p>
			 </form>
		   </sec:authorize>
		   
		   
		   <sec:authorize access="isAuthenticated()">
		   	<form action="/chatcreate" method="get">
		    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		    <input type="hidden" name="userId" value="<sec:authentication property="principal.user.userId" />"/>
		    <input type="hidden" name="room_id" value="<sec:authentication property="principal.user.userId" />"/>
		    <input type="submit" value="채팅방 만들기"/>
		    <p>UserVO : <sec:authentication property="principal.user" /></p>
			 </form>
		   </sec:authorize>
		 



		 <hr/>
	
		  <footer>

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
				<hr id="hh">
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
				<div class="row img">
					<div class="col-md-4"><br/><br/>
						<svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-coin" viewBox="0 0 16 16">
						  <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
						</svg><br/>입금확인
					</div>
					<div class="col-md-4"><br/><br/>
						<svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-clock-history" viewBox="0 0 16 16">
						  <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z"/>
						  <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z"/>
						  <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z"/>
						</svg><br/>배송지연
					</div>
					<div class="col-md-4"><br/><br/>
						<svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor" class="bi bi-emoji-dizzy" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M9.146 5.146a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zm-5 0a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 1 1 .708.708l-.647.646.647.646a.5.5 0 1 1-.708.708L5.5 7.207l-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zM10 11a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
						</svg><br/>미확인입금자
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
		</div>
</footer>

		
    
    <script>
    
    const modal = document.getElementById("modal")
    function modalOn() {
        modal.style.display = "flex"
    }
    function isModalOn() {
        return modal.style.display === "flex"
    }
    function modalOff() {
        modal.style.display = "none"
    }
    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modalOn()
    })
    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
        modalOff()
    })
    modal.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })
    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
    

    </script>

</body>
</html>