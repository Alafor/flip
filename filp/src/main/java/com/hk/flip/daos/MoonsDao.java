package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.MsgDto;
import com.hk.flip.service.IMoonsDao;

@Repository
public class MoonsDao implements IMoonsDao {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	private String namespace = "com.hk.flip.moons_MSG.";

	@Override
	public boolean sendAllMSG(MsgDto msg) {
		return sqlsession.insert(namespace+"sendAllMSG", msg)>0?true:false;
	}

	@Override
	public boolean sendMSG(MsgDto msg) {
		return sqlsession.insert(namespace+"sendMSG", msg)>0?true:false;
	}

}
