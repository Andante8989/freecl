<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>${param.room_id }</h1>
<h1>${param.userId }님,환영합니다.</h1>

<form action="/chatting?userId=${param.userId }&room_id=${room_id}" method="get">
	    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<input type="hidden" name="userId" value="${param.userId }" />
	 	<input type="hidden" name="room_id" value="${param.room_id }" />
        <input type="submit" value="${param.room_id }방 으로 들어가기"/>
    </form>





</body>
</html>