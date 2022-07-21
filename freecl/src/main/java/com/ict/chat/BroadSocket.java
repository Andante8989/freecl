package com.ict.chat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

// WebSocket 호스트 설정
@ServerEndpoint("/broadsocket")
public class BroadSocket {
	
	// 접속 된 클라이언트 WebSocket session 관리 리스트
	private static List<Session> sessionUsers = Collections.synchronizedList(new ArrayList<>());
	// 메시지에서 유저 명을 취득하기 위한 정규식 표현
	private static Pattern pattern = Pattern.compile("^\\{\\{.*?\\}\\}");
	
	@OnOpen
	public void handleOpen(Session userSession) {
		sessionUsers.add(userSession);
		
		System.out.println("client is now connected...");
	}

	@OnMessage
	public void handleMessage(String message, Session userSession)throws IOException{
		// 메시지 내용을 콘솔에
		System.out.println(message);
		String name = "anonymous";
		
		Matcher matcher = pattern.matcher(message);
		
		if(matcher.find()) {
			name = matcher.group();
		}
		
		final String msg = message.replaceAll(pattern.pattern(),"");
		final String username = name.replaceFirst("^\\{\\{", "").replaceFirst("\\}\\}$", "");
		
		sessionUsers.forEach(session -> {
			if(session == userSession) {
				return;
			}
			try {
				session.getBasicRemote().sendText(username+"=>"+msg);
			}catch(IOException e) {
				e.printStackTrace();
			}
		});
	}
	@OnClose
	public void handlerClose(Session userSession) {
		sessionUsers.remove(userSession);
		System.out.println("client is now disconnected...");
	}

	public static String[] getUserKeys() {
		// TODO Auto-generated method stub
		return null;
	}

	public static void sendMessage(String key, String msg) {
		// TODO Auto-generated method stub
		
	}

}
