package com.hk.flip.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.AnswerBoardDto;

@Repository
public class AnswerBoardDao implements IAnswerBoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	String namespace = "com.hk.flip.AnswerBoard.";


	@Override
	public List<AnswerBoardDto> getAllList() {	
		return sqlSession.selectList(namespace+"boardlist");
	}


	@Override
	public boolean ansinsert(AnswerBoardDto dto) {
		int cnt=sqlSession.insert(namespace+"insertboard", dto);
		return cnt>0?true:false;
	}


	@Override
	public int checkedSecret(int seq) {		
		return sqlSession.selectOne(namespace+"checksecret", seq);
	}


	@Override
	public AnswerBoardDto getBoard(int seq) {
		return sqlSession.selectOne(namespace+"getboard", seq);
	}


	@Override
	public boolean updateBoard(AnswerBoardDto dto) {
		int cnt = sqlSession.update(namespace+"updateboard", dto);
		return cnt>0?true:false;
	}
	
	
	
	
	
}
