<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
.join_tit {
		text-align : center;
		font-size : 60px;
		color : #ff7d9e;
	}
	#nemo {
		width : 200px;
		height : 60px;
		color : white;
		background-color : black;
		border-radius : 10px;
		left : 550px;
		position:absolute;
	}
	
	#idch {
		border : none;
		color : white;
		background-color : #ff7d9e;
		border-radius : 10px;
	}
	#joinTry {
		border : none;
		width : 200px;
		height : 60px;
		color : white;
		background-color : #ff7d9e;
		border-radius : 10px;
	}
	#back {
		border : grey;
		width : 200px;
		height : 60px;
		color : grey;
		background-color : none;
		border-radius : 10px;
	}
	.but {
	 	text-align : center;
	}
	
	input { 
		margin : 20px;
		border-top : none;
		border-left : none;
		border-right : none;
		boader-bottom : 2px;
	}

	
	.first {align-self: center;}
	.second {align-self: center;}
	.third {align-self: center;}
	.fourth {align-self: center;}
	.fifth {align-self: center;}
	.sixth {align-self: center;}


	
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
	
	header{
		   background: white;
		   height: 215px;
		   padding:50px;
		   margin:0px;
		   }
		   main{
		   background: white;
		   min-height:700px;
		   margin-top:150px;
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
			
			.banner{
		  margin-left:-50px;
		  margin-top:-50px;
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


</div>

<main>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
	
			<h1 class="join_tit">My Page</h1>
			<hr>
			<form action="/userUpdateForm" method="post">
				<div class="row">
					<div class="col-md-2 offset-md-1 first">
					아이디 
					</div>
					<div class="col-md-9">
						<input type="text" name="userId" value="<sec:authentication property="principal.user.userId" />" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 third">
					이름 
					</div>
					<div class="col-md-9">
						<input type="text" name="uname" value="<sec:authentication property="principal.user.uname" />" readonly><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 fourth">
					이메일 
					</div>
					<div class="col-md-9">
						<input type="text" name="email" value="<sec:authentication property="principal.user.email" />" readonly><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 fifth">
					휴대전화 
					</div>
					<div class="col-md-9">
						<input type="text" name="p_num" value="<sec:authentication property="principal.user.p_num" />" readonly><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 sixth">
					주소 
					</div>
					<div class="col-md-9">
						<input type="text" name="addr" value="<sec:authentication property="principal.user.addr" />" readonly><br/>
					</div>
				</div>

				
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div class="but">
				<button id="joinTry" type="submit">정보수정하기</button><a href="/main"><button id="back" type="button">메인페이지</button></a>
				</div>
			</form>
				<div class="row">
					<div class="col-md-12">
						<a href="/userOut"><button id="nemo">회원탈퇴</button></a>
					</div>
				</div>
		</div>
		<div class="col-md-3"></div>
		</div>
	</div>
	
	</main>
<div class="footer"></div>	
</body>
</html>