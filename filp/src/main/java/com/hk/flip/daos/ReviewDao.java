package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao implements IReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlsettion;
	
	String nameSpace = "com.hk.flip.";
	
	public ReviewDao() {
		// TODO Auto-generated constructor stub
	}

}
