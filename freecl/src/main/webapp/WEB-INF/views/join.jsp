<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<style>
	.join_tit {
		text-align : center;
		font-size : 60px;
		color : #ff7d9e;
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
	
			<h1 class="join_tit">JOIN US</h1>
			<hr>
			<form action="/join" method="post">
				<div class="row">
					<div class="col-md-2 offset-md-1 first">
					아이디 
					</div>
					<div class="col-md-9">
						<input type="text" name="userId" required><button type="button" id="idCh">아이디 중복확인</button><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 second">
					비밀번호  
					</div>
					<div class="col-md-9">
						<input type="text" name="upw" required><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 third">
					이름 
					</div>
					<div class="col-md-9">
						<input type="text" name="uname" required><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 fourth">
					이메일 
					</div>
					<div class="col-md-9">
						<input type="text" name="email" required><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 fifth">
					휴대전화 
					</div>
					<div class="col-md-9">
						<input type="text" name="p_num" required><br/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 sixth">
					주소 
					</div>
					<div class="col-md-9">
						<input type="text" name="addr" required><br/>
					</div>
				</div>

				<input type="checkbox" name="role" value="ROLE_ADMIN" >어드민 권한&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="role" value="ROLE_MEMBER">정회원 권한&nbsp;&nbsp;&nbsp;
				<input type="checkbox" name="role" value="ROLE_USER">준회원 권한<br/>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div class="but">
				<button id="joinTry" type="submit">가입하기</button><a href="/main"><button id="back" type="button">취소</button></a>
				</div>
			</form>
		</div>
		<div class="col-md-3"></div>
		</div>
	</div>
<div class="footer"></div>	
	
	
	
	
	
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	$("#idCh").on("click", function() {
		let id = $(this).prev().val();
		console.log(id);
		
		$.ajax({
			beforeSend : function(xhr) { 
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			type : 'post',
			url : '/joinIdCheck',
			data : {id:id},
			success:function(check) {
				console.log("join.jsp에서 결과값 체크");
				console.log(check);
				if(check != 1) {
					alert("사용 가능한 아이디 입니다.");
				} else {
					alert("이미 사용중인 아이디 입니다.");
				}
			}
		});
	});
	
	
	
	
	
	
	
	</script>
	
	
	
	
	
</body>
</html>