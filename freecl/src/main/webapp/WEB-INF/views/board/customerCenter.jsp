<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<style>
	h1 {
		text-align : center;		
	}
	
	a {
		text-decoration-line: none;
		
	}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>고객센터 페이지입니다.</h2>
<hr/>
<div class="header">
<h1>고객센터</h1>
</div>
<div class="container">
	<div class="row">
		<table class="table">
			<thead>
				<tr>
					<th></th>
				</tr>
			</thead>
			<tbody class="vv">
				<c:forEach var="CustomerBoard" items="${customerList }">
					<tr>
						<td>${CustomerBoard.cc_categori }</td>
						<td class="con">${CustomerBoard.cc_title }</td>
					</tr>
					<tr>
						<td class="content" style="display:none;">${CustomerBoard.cc_content }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<hr/>
<div class="footer">

</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(".con").on("click", function() {
		console.log(this);
		$(".content").show();
	});

</script>


</body>
</html>