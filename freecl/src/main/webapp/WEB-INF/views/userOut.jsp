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
		<div class="col-md-3"></div>
		<div class="col-md-6">
	
			<h1 class="join_tit">회원 정보 확인</h1>
			<hr>
				
				<div class="row">
					<div class="col-md-2 offset-md-1 first">
					아이디 
					</div>
					<div class="col-md-9">
						<input type="text" id="uu" name="userId" value="<sec:authentication property="principal.user.userId" />" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 offset-md-1 third">
					이름 
					</div>
					<div class="col-md-9">
						<input type="text" id="nn" name="uname" value="<sec:authentication property="principal.user.uname" />" readonly><br/>
					</div>
				</div>

				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div class="but">
				<button id="joinTry" type="button">회원탈퇴</button><a href="/main"><button id="back" type="button">메인페이지</button></a>
				</div>
			
		</div>
		<div class="col-md-3"></div>
		</div>
	</div>
<div class="footer"></div>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
	

/*
$("#joinTry").on("click", function(e){
	 e.preventDefault();
     let userId = $("#uu").val();
     let uname = $("#nn").val();
     if(uname.length < 1) {
    	 alert("이름을 입력해주세요.");
     } else {
    	 if(confirm("정말 탈퇴하시겠습니까?")) {
        	 $("#del").submit();
         } else {
        	 
         }
     }
     console.log(userId);
     console.log(uname);
    

});*/

$("#joinTry").on("click", function(){
	 var id = $("#uu").val();
	  if(confirm("정말 탈퇴하시겠습니까?")) {
        	
         
	$.ajax({
		url : "/userDelete",
		type : 'delete',
	    contentType : 'text/html; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
	    data: id ,
		beforeSend : function(xhr){
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		},
		header : {
			"Content-Type" : "application/json",
			"X-HTTP-Method-Override" : "DELETE"
		},
		success: function(result){
			if(result == 'SUCCESS'){
				alert("회원 탈퇴가 완료되었습니다."); 
				window.location.href = "/main"
		    }else{
		         alert("다시한번 시도해주세요.");
		    }
		},
	    error: function (request,status,errorData){   
	    	alert('error code: '+request.status+"\n"
	    			+'message:' +request.reponseText+'\n'
	    			+ 'error :'+  errorData);
	    }
	
	});
	  }
}); 







</script>
</body>
</html>