package com.hk.flip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.flip.daos.IAnswerBoardDao;
import com.hk.flip.dtos.AnswerBoardDto;

@Service
public class AnswerBoardService implements IAnswerBoardService {
	
	@Autowired
	private IAnswerBoardDao ansDao;

	@Override
	public List<AnswerBoardDto> getAllList() {	
		return ansDao.getAllList();
	}

	@Override
	public boolean ansinsert(AnswerBoardDto dto) {	
		return ansDao.ansinsert(dto);
	}

	@Override
	public int checkedSecret(int seq) {
		
		return ansDao.checkedSecret(seq);
	}

	@Override
	public AnswerBoardDto getBoard(int seq) {
		return ansDao.getBoard(seq);
	}

	@Override
	public boolean updateBoard(AnswerBoardDto dto) {	
		return ansDao.updateBoard(dto);
	}

}
