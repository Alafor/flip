package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.AnswerBoardDto;

public interface IAnswerBoardDao {
	
	//문의게시판 리스트 가져오기
	public List<AnswerBoardDto> getAllList();
	//문의게시판 글 입력하기
	public boolean ansinsert(AnswerBoardDto dto);
	//비밀글 체크하기
	public int checkedMember(int seq);
	//문의글 상세보기
	public AnswerBoardDto getBoard(int seq);
	//문의글 수정하기
	public boolean updateBoard(AnswerBoardDto dto);
	//문의글 삭제하기
	public boolean mulDel(int seq);
	//문의글 답글달기(한번에 )
	public int replyBoardUpdate(int seq);
	public int replyBoardInsert(AnswerBoardDto dto);
	

}
