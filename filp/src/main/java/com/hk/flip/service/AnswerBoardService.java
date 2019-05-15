package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hk.flip.daos.IAnswerBoardDao;
import com.hk.flip.dtos.AnswerBoardDto;
import com.hk.flip.dtos.PagingDto;

@Service
public class AnswerBoardService implements IAnswerBoardService {
	
	@Autowired
	private IAnswerBoardDao ansDao;

	@Override
	public List<AnswerBoardDto> getAllList(PagingDto paging) {	
		return ansDao.getAllList(paging);
	}

	@Override
	public boolean ansinsert(AnswerBoardDto dto) {	
		return ansDao.ansinsert(dto);
	}

	@Override
	public int checkedMember(int seq) {
		
		return ansDao.checkedMember(seq);
	}

	@Override
	public AnswerBoardDto getBoard(int seq) {
		return ansDao.getBoard(seq);
	}

	@Override
	public boolean updateBoard(AnswerBoardDto dto) {	
		return ansDao.updateBoard(dto);
	}

	@Override
	public boolean mulDel(int seq) {
		return ansDao.mulDel(seq);
	}
	
	@Transactional
	@Override
	public boolean replyBoard(AnswerBoardDto dto) {
		ansDao.replyBoardUpdate(dto.getBoard_seq());
		System.out.println("리플서비스:"+dto.getBoard_seq());
		int cnt = ansDao.replyBoardInsert(dto);
		return cnt>0?true:false;
	}

	@Override
	public int selectTotalPaging() {
		return ansDao.selectTotalPaging();
	}

	@Override
	public int AnswerCount() {	
		return ansDao.AnswerCount();
	}

}
