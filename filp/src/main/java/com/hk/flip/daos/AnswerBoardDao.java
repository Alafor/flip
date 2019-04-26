package com.hk.flip.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.AnswerBoardDto;
import com.hk.flip.dtos.PagingDto;

@Repository
public class AnswerBoardDao implements IAnswerBoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	String namespace = "com.hk.flip.AnswerBoard.";


	@Override
	public List<AnswerBoardDto> getAllList(PagingDto paging) {	
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start",paging.getStart());
		map.put("last",paging.getLast());	
		return sqlSession.selectList(namespace+"boardlist",map);
		/*return sqlSession.selectList(namespace+"boardlist"+paging);*/
	}


	@Override
	public boolean ansinsert(AnswerBoardDto dto) {
		int cnt=sqlSession.insert(namespace+"insertboard", dto);
		return cnt>0?true:false;
	}

	//파라미터로 받은 값으로 seq값 board_member_seq값 가져오기
	@Override
	public int checkedMember(int seq) {		
		return sqlSession.selectOne(namespace+"checkedMember", seq);
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


	@Override
	public boolean mulDel(int seq) {	
		int cnt=sqlSession.update(namespace+"muldelboard", seq);
		return cnt>0?true:false;
	}


	@Override
	public int replyBoardUpdate(int seq) {	
		System.out.println("리플:"+seq);
		return sqlSession.update(namespace+"replyupdate", seq);
	}


	@Override
	public int replyBoardInsert(AnswerBoardDto dto) {
		return sqlSession.insert(namespace+"replyinsert", dto);
	}


	@Override
	public int selectTotalPaging() {
		return sqlSession.selectOne(namespace+"selectTotalPaging");
	}


	
	
	
	
	
}
