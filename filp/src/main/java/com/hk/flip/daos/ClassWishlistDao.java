package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassWishlistDao implements IClassWishlistDao {

	@Autowired
	private SqlSessionTemplate sqlsettion;
	
	String nameSpace = "com.hk.flip.";
	
	public ClassWishlistDao() {
		// TODO Auto-generated constructor stub
	}

}
