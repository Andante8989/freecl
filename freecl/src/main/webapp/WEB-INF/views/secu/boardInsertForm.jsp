<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>상품 등록하기</h1>
<form action="/secu/boardInsert" method="post">
상품이름 : <input type="text" name="name" placeholder="30자 이내입니다" required><br/>
상품내용 : <input type="text" name="content" placeholder="50자 이내입니다" required><br/>
상품이미지 : 일단없음<br/>
상품종류 : <select class="form-select" name="kind" aria-label="Default select example">
		  <option selected>카테고리를 설정해주세요</option>
		  <option value="바지">바지</option>
		  <option value="상의">상의</option>
		  <option value="모자">모자</option>
		</select>

상품가격 : <input type="text" name="price" required><br/>
상품수량 : <input type="text" name="amount" required><br/>
색상 : <input type="text" name="color" required><br/>
사이즈 : <input type="text" name="sizeName" required><br/>
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
<input type="submit" value="상품등록하기">
</form>
</body>
</html>