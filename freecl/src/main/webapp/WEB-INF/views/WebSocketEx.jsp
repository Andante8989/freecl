<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
  let ws;
  let userid = '${param.id}'; //파라미터로 넘겨서 설정할 (내) 아이디
  
  function connect(){
	  // 웹소켓 객체 생성하는 부분
	  // 핸들러 등록(연결 생성, 메시지 수신, 연결 종료)
	  
	  // url 연결할 서버의 경로
	  ws = new WebSocket('ws://localhost:52000/WebSocket');
	  
	  ws.onopen = function(){
		  console.log('연결 생성');
		  register();
	  };
	  
	  ws.onmessage = function(e){
		  console.log('메시지 받음');
		  let data = e.data;
		  // alert("받은 메시지 :" + data);
		  addMsg(data);
	  };
	  
	  ws.onmessage = function(e){
		  console.log('연결 끊김');
	  };
  }
  
    function addMsg(msg) { // 원래 채팅 메시지에 방금 받은 메시지 더해서 설정하기
    	let chat = $('#msgArea').val();
        chat = chat + "\n상대방 : " + msg;
        $('#msgArea').val(chat);
    	
    }
    
    function register(){ // 메시지 수신을 위한 서버에 id 등록하기
    	let msg = {
    	    type : "register", //메시지 구분하는 구분자 - 상대방 아이디와 메시지 포함해서
    	    userid : '${param.id}'
      };
      ws.send(JSON.stringify(msg));
    	
    }
    
    function sendMsg(){
    	// let msg = $("chatMsg").val();
    	// ws.send(userid + " : " + msg);
    	let msg = {
    			type : "chat", // 메시지 구분하는 구분자 - 상대방 아이디와 메시지 포함해서 보냄
    			target : $("#targetUser").val(),
    			message : $("#chatMsg").val()
    	};
    	ws.send(JSON.stringify(msg));
    };
    
    // 페이지가 로딩되면 connect 실행
    $(function(){
    	connect();
    	$('#btnSend').on("click",function(){
    		let chat = $("#msgArea").val();
    		chat = chat + "\n나 : " + $("#chatMsg").val();
    		$("#msgArea").val(chat);
    		sendMsg();
    		$("#chatMsg").val("");
    	})
    });
  
</script>

</head>
<body>

   <textarea row="5" cols="30" id="msgArea">
   </textarea>  <!-- 채팅 내용 올라갈 화면 -->
   <br> 메시지 : <input type="text" id="chatMsg"> <!-- 메시지 보내는 부분 -->
   <br> 상대 아이디 : <input type="text" id="targetUser"> <!-- 채팅 상대 아이디 작성 부분 -->
   <br>
   <input type="button" value="전송" id="btnSend">

</body>
</html>