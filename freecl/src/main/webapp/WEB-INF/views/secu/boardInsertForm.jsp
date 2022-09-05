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
<form action="/secu/boardInsert" method="post" accept-charset="utf-8" enctype="multipart/form-data">
상품이름 : <input type="text" name="name" placeholder="30자 이내입니다" required><br/>
상품내용 : <input type="text" name="content" placeholder="50자 이내입니다" required><br/>
	<div class="uploadDiv">
상품이미지 : <input type="file" id ="fileItem" name='uploadFile' style="height:30px;"><br/>
	</div>
상품종류 : <select class="form-select" name="kind" aria-label="Default select example">
		  <option selected>카테고리를 설정해주세요</option>
		  <option value="바지">바지</option>
		  <option value="상의">상의</option>
		  <option value="모자">모자</option>
		</select>

상품가격 : <input type="text" name="price" required><br/>
상품수량 : <input type="text" name="amount" required><br/>
색상 : <input type="checkbox" name="color" value="red">red&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="blue">blue&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="black">black&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="brown">brown&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="white">white&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="ivory">ivory&nbsp;&nbsp;&nbsp;
	<input type="checkbox" name="color" value="green">green<br>
	

사이즈 : <input type="checkbox" name="sizeName" value="s" >s&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="sizeName" value="m">m&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="sizeName" value="L">L&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="sizeName" value="XL">XL<br/>
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
<input type="submit" value="상품등록하기">
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";

let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB


	function fileCheck(fileName, fileSize){
	
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}

	$("input[type='file']").on("change", function(e){
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		
		$.ajax({
			beforeSend : function(xhr) { 
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			url: '/secu/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json'
		});	
	
	});
	




</script>
</body>
</html>
