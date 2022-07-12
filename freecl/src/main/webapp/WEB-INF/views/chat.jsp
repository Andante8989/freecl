<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>웹소켓 채팅</title>
    
    <style>
    body {
    font-family: Arial;
    font-size: 18px;
    color: #ffffff;
    background: #202020 url(../../img/body_back.jpg) no-repeat top center fixed;
    background-size: cover;
		}
		
		#icons {
		    position: absolute;
		    bottom: 22%;
		    right: 8%;
		    width: 400px;
		    height: 80px;
		    z-index: 8;
		    transform: rotate(-57deg); 
		    -ms-transform: rotate(-57deg); 
		    -webkit-transform: rotate(-57deg); 
		    -moz-transform: rotate(-57deg);
		}
		
		#contact { 
		    float: left; 
		    cursor: pointer; 
		}
		
		
		img { 
		    max-width: 100%; 
		    height: auto; 
		}
		
		.chat{
		
		width: 100%;  
		height: 10%; 
		padding: 10px;
		margin-top:-250px;
		margin-left:30px;
		
		}
		
		#divChatData{
		  position: fixed;
		  left: 30px;
		  height: 55px;
		  padding: 1rem;
		  color: white;
		  font-weight: bold;
		  justify-content: space-between;
		  align-items: center;
		}
		
		

    </style>
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">

var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";

   let webSocket = {
		   init: function(param){
			   this._url = param.url;
			   this._initSocket();
		   },
		   sendChat: function(){
			   this._sendMessage('${param.room_id}','CMD_MSG_SEND',$('#message').val());
			   $('#message').val('');
		   },
		   sendEnter: function(){
			   this._sendMessage('${param.room_id}','CMD_ENTER', $('#message').val());
			   $('#message').val('');
		   },
		   receiveMessage: function(msgData){
			   
			   // 정의된 CMD 코드에 따라서 분기 처리
			   if(msgData.cmd == 'CMD_MSG_SEND'){
			   $('#divChatData').append('<div>' + msgData.msg + '</div>');
			   }
			   // 입장
			   else if(msgData.cmd == 'CMD_ENTER'){
				   $('#divChatData').append('<div>' + msgData.msg + '</div>');   
			    }
			   // 퇴장
			   else if(msgData.cmd == 'CMD_EXIT'){
				   $('#divChatData').append('<div>' + msgData.msg + '</div>');
			   }
		    },
		   
		   closeMessage: function(str){
			   $('#divChatData').append('<div>' + '연결 끊김 : ' + str + '</div>');
		   },
		   disconnect: function(){
			   this._socket.close();
		   },
		   _initSocket: function(){
			   this._socket = new SockJS(this._url);
			   this._socket.onopen = function(evt){
				   webSocket.sendEnter();
			   };
			   this._socket.onmessage = function(evt){
				   webSocket.receiveMessage(JSON.parse(evt.data));
			   };
			   this._socket.onclose = function(evt){
				   webSocket.closeMessage(JSON.parse(evt.data));
			   }
		   },
		   _sendMessage: function(room_id, cmd, msg){
			   let msgData = {
					   room_id : room_id,
					   cmd : cmd,
					   msg : msg
			   };
			   let jsonData = JSON.stringify(msgData);
			   this._socket.send(jsonData);
		   }
   };
</script>
<script type="text/javascript">
    $(window).on('load',function(){
    	webSocket.init({ url: '<c:url value="/chat" />' });
    });
</script>

</head>
<body>

	<div style="width: 500px; height: 700px; padding: 10px; border: solid 1px #ele3e9;">
	     <div id="divChatData"></div>
	</div>   

<div class="chat">
    <input type="text" id="message" size="110" onkeypress="if(event.keyCode==13){webSocket.sendChat();}"/>
    <input type="button" id="btnSend" value="채팅 전송" onclick="webSocket.sendChat()"/>
</div>

<div id="icons">
            <div id="contact">
                <img src="img/icon_contact.png" alt="" />
            </div>
            <img src="img/icon_links.png" alt="" />
        </div>
    
</body>
</html>