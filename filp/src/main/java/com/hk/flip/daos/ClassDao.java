package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassDao implements IClassDao {

	@Autowired
	private SqlSessionTemplate sqlsettion;
	
	String nameSpace = "com.hk.flip.";
	
	public ClassDao() {
		// TODO Auto-generated constructor stub
	}

}
