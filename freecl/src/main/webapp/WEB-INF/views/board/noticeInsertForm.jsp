<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.form, .re { 
		margin-left : 530px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공지사항 글쓰기 페이지입니다.</h1>

<form class="form" action="/board/noticeInsert" method="post">
	<input type="text" name="nt_title" placeholder="제목을 입력하세요" required><br/>
	<textarea cols="50" rows="12" name="nt_content" placeholder="내용을 입력하세요" required></textarea><br/>
	<input type="text" name="nt_writer" placeholder="글쓰는 사람" required><br/>
	<input type="submit" value="글쓰기">
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
</form>
<a class="re" href="/board/notice"><button>돌아가기</button></a>
</body>
</html>