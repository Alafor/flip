package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AnswerBoardDao implements IAnswerBoardDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	String nameSpace = "com.hk.flip.";
	
	public AnswerBoardDao() {
		// TODO Auto-generated constructor stub
	}
}
