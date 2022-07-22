<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${param.userId }님,환영합니다.</h1>
<h1>${param.room_id }방으로.</h1>

    <form action="/chatlist" method="get">
           <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				방 이름 : <input type="text" name="room_id"><br>
				<input type="hidden" name="userId" value="${param.userId }" />
				<button type="button">취소</button>
				<input type="submit" value="생성"></input>
     </form>
</body>
</html>