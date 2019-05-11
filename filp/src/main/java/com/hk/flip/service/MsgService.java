package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hk.flip.daos.IMsgDao;
import com.hk.flip.dtos.MsgDto;

@Service
public class MsgService implements IMsgService {
	
	@Autowired
	private IMsgDao msgDao;
	
	@Override
	public CharSequence count_receive(String msg_email) {
		System.out.println("서비스인데여기는 오냐?");
		return msgDao.count_receive(msg_email);
			
	}

	@Override
	public List<MsgDto> getmsglist(String msg_email) {
		
		return msgDao.getmsglist(msg_email);
	}
	
	@Transactional
	@Override
	public MsgDto detailmsg(int msg_seq) {
		msgDao.readConfirm(msg_seq);
		return msgDao.detailmsg(msg_seq);
	}

	@Override
	public boolean muldelmsg(String[] seqs) {
		
		return msgDao.muldelmsg(seqs);
	}

}
