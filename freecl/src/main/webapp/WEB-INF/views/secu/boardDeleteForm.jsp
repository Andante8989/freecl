<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 번호를 입력해주십시오</h1>
<form action="/secu/boardDelete" method="post">
	<input type="text" name="boardNum">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
	<input type="submit" value="입력">
</form>
</body>
</html>