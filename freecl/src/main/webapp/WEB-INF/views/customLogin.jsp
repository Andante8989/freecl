<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<style>
	input { 
		margin : 5px;
		border-top : none;
		border-left : none;
		border-right : none;
		boader-bottom : 2px;
	}
	
	.log{
		background-color : black;
		color :white;
	}
	.ti {
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

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
	 <!-- 상단의 버튼 부분 -->
	 
			 <ul class="top">
			 		<a href="/join">
			        <button class="btn btn-light w-btn-pink-outline" type="button" style="background-color: white;">
				        회원가입
				    </button>
				    </a>
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
	
</div>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<h1 class="ti">로그인 화면입니다.</h1>
			<hr/>
			<form action="/login" method="post">
				<input class="form-control" type="text" name="username" placeholder="아이디를 입력하세요"><br/>
				<input class="form-control" type="text" name="password" placeholder="비밀번호를 입력하세요"><br/>
				자동로그인 : <input type="checkbox" name="remember-me"><br/>
				<input class="form-control log" type="submit" value="로그인하기">
				<!-- 삭제하면 admin/admin 입력해도 로그인 실패함 -->
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
			</form>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
<div class="footer"></div>
	
	<h2><c:out value="${error }" /></h2>
	<h2><c:out value="${logout }" /></h2>
	
	
</body>
</html>