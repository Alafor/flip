package com.hk.flip.ws;


import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.hk.flip.daos.IMsgDao;
import com.hk.flip.daos.MsgDao;




@Repository
public class SocketHandler extends TextWebSocketHandler{
	
	 @Autowired
		SqlSession sqlsession;
	 @Autowired
	 	private IMsgDao msgDao;
	 
		private final Logger logger = LogManager.getLogger(getClass());
	  @Override

		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		  
		}

	  @Override

		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		  
		}

	 @Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		 	System.out.println("message1:"+message);
		 	
			MsgDao dao = sqlsession.getMapper(MsgDao.class);

			this.logger.info(message.getPayload());
			System.out.println("1");
			System.out.println("message.getPayload():"+message.getPayload());
			System.out.println("2");
			session.sendMessage(new TextMessage(dao.count_receive_note(message.getPayload())));
											/*	msgDao.aaaa(message.getPayload());*/
	

			

		}



	
	

}
