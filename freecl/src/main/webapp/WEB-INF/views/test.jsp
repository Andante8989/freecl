<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>Ajax Test</h2>
  
  <div>
      <div>
         REPLYER <input type="text" name="replyer" id="newReplyWriter">
      </div>
      <div>
         REPLY TEXT <input type="text" name="reply" id="newReplyText">
      </div>
      <button id="replyAddBtn">ADD REPLY</button>
   </div>
   
   
   
   <!-- 댓글달리는 영역 -->
   <ul id="replies">
   
   </ul>
   
   <div id="modDiv" style="display:none;">
       <div class="modal-title"></div>
       <div>
          <input type="text" id="replytext">
       </div>
       <div>
           <button type="button" id="replyModBtn">수정하기</button>
           <button type="button" id="replyDelBtn">삭제하기</button>
           <button type="button" id="closeBtn">닫기</button>
       </div>
   </div>
   
   <!-- jquery는 이곳에 -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script>
		let bno = 3;
		
		function getAllList(){
			let str = "";
			// json 데이터를 얻어오는 로직 실행
			$.getJSON("/replies/all/" + bno, function(data){
				$(data).each(
					function(){
						console.log(this);
						// 백틱 문자열 사이에 변수를 넣고 싶다면 \${변수명} 을 적습니다.
						// 원래는 \를 왼쪽에 붙일 필요는 없지만
						// jsp에서는 el표기문법이랑 겹치기 때문에 el이 아님을 보여주기 위해
						// 추가로 왼쪽에 \를 붙입니다.
	str+=
	`<li data-rno='\${this.rno}' class='replyLi'>\${this.rno}:\${this.reply} <button>수정/삭제</button></li>`;
				});
				console.log(str);
				$("#replies").html(str);
			});			
		}
		getAllList();
		
		////////////////////////////
		//////글 등록로직
		////////////////////////////
	
      $("#replyAddBtn").on("click", function(){
    	 let replyer = $("#newReplyWriter").val();  // 받아오기
    	 let reply = $("#newReplyText").val();  
    	 
    	 $.ajax({
    		 type : 'post',
    		 url : '/replies',
    		 headers : {
    			 "Content-Type" : "application/json",
    			 "X-HTTP-Method-Override" : "POST"
    		 },
    		 dataType : 'text',
    		 data : JSON.stringify({
    			 bno : bno,
    			 replyer : replyer,
    			 reply : reply
    		 }),
    		 success : function(result){
    			 if(result == 'SUCCESS'){
    				 
    				 alert("등록 되었습니다.");
    				 getAllList();
    			 }
    		 }
    		 
    	 });
    	 
      });// 글 등록로직 종료
      
</script>
</body>
</html>