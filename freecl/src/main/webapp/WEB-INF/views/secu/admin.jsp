<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>운영자님 안녕하세요</h1>
<a href="/secu/boardInsertForm"><button>상품등록하기</button></a>
<a href="/secu/boardDeleteForm"><button>상품삭제하기</button></a>
<button>DB관리</button>
<a href="/customLogout"><button>로그아웃</button></a>
<a href="/main"><button>메인페이지로 이동</button></a>
<p>principal : <sec:authentication property="principal"/></p>
<p>UserVO : <sec:authentication property="principal.user" /></p>
</body>
</html>