package com.hk.flip.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ReviewDto;

@Repository
public class ReviewDao implements IReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	String nameSpace = "com.hk.flip.";
	
	public ReviewDao() {
		// TODO Auto-generated constructor stub
	}
	//강의 후기 등록
	@Override
	public boolean cReview(ReviewDto dto) {
		int count=sqlsession.insert(nameSpace+"cReview", dto);
		return count>0?true:false;
	}


}
