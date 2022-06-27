<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style>
	.notice {
		text-align : center;
	}
	th, td { text-align : center;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
	<h2>header자리</h2>
</div>
<div class="contianer">
	<div class="row">
		<div class="notice">
			<h1>notice</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>	
						<th>글쓴이</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="notice" items="${noticeList }">
					<tr>
						<td>${notice.nt_num }</td>
						<td><a href="/board/noticeDetail?nt_num=${notice.nt_num }">${notice.nt_title }</a></td>
						<td>${notice.nt_writer }</td>
						<td>${notice.nt_date }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-1">
		</div>
	</div>
</div>
</body>
</html>