package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.AnswerBoardDto;
import com.hk.flip.dtos.PagingDto;

public interface IAnswerBoardService {
	
	//문의게시판 리스트 가져오기(페이징처리)
	public List<AnswerBoardDto> getAllList(PagingDto paging);
	//문의게시판 글 추가하기
	public boolean ansinsert(AnswerBoardDto dto);
	//비밀글 본인 체크 
	public int checkedMember(int seq);
	//문의글 상세보기
	public AnswerBoardDto getBoard(int seq);
	//문의글 수정하기
	public boolean updateBoard(AnswerBoardDto dto);
	//문의글 삭제하기
	public boolean mulDel(int seq);
	//문의글 답글달기
	public boolean replyBoard(AnswerBoardDto dto);
	//문의글 리스트 갯수 가져오기
	public int selectTotalPaging();
	//문의글 무답변 갯수 가져오기
	public int AnswerCount();

}
