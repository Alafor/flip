package com.hk.flip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IMsgDao;

@Service
public class MsgService implements IMsgService {
	
	@Autowired
	private IMsgDao msgDao;
	
	@Override
	public CharSequence count_receive(String msg_email) {
		System.out.println("서비스인데여기는 오냐?");
		return msgDao.count_receive(msg_email);
			
	}

}
