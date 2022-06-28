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
<h1>공지사항 수정 페이지입니다.</h1>
${notice }
<form class="form" action="/board/noticeUpdate" method="post">
	<input type="hidden" name="nt_num" value="${notice.nt_num }">
	<input type="text" name="nt_title" value="${notice.nt_title }" readonly><br/>
	<textarea cols="50" rows="12" name="nt_content" required>${notice.nt_content }</textarea><br/>
	<input type="text" name="nt_writer" value="${notice.nt_writer }" readonly><br/>
	<input type="submit" value="수정하기">
</form>
<a class="re" href="/board/notice"><button>돌아가기</button></a>
</body>
</html>