<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
	  
	  .mainBox {
	  		width : 1000px;
	  		height : 200px;
	  	    background: -moz-linear-gradient(top, #7AE9FF 0%, #FFFFFF 100%);
   			background: -webkit-linear-gradient(top, #7AE9FF 0%, #FFFFFF 100%);
    		background: linear-gradient(to bottom, #7AE9FF 0%, #FFFFFF 100%);
	  }
	  #bargen {
	  	background-color : black;
	  	color : white;
	  }
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


</div>
<div class="container">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<img src="/resources/image/event.jpg" >
			
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10 mainBox">
			<button type="button" id="bargen">할인쿠폰받기</button>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>
<div class="footer"></div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">


var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
let id = '<sec:authentication property="principal.user.userId" />';

		$("#bargen").on("click", function(e) {
			
			console.log(id);
			$.ajax({
				beforeSend : function(xhr) { 
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				type : 'put',
				url : '/coupon',
				data : id,
				header : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if(result == 'SUCCESS') {
						alert("쿠폰이 발급되었습니다.");

					}
				}
			});
		})




</script>
</body>
</html>