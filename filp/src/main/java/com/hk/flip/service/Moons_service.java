package com.hk.flip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.dtos.MsgDto;

@Service 
public class Moons_service implements IMoons_service {
	
	@Autowired
	IMoonsDao moonsDao;
	
	@Override
	public boolean sendAllMSG(MsgDto msg) {
		return moonsDao.sendAllMSG(msg);
	}

	@Override
	public boolean sendMSG(MsgDto msg) {
		return moonsDao.sendMSG(msg);
	}

}
