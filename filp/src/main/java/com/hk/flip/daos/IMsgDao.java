package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.MsgDto;

public interface IMsgDao {
	/*public void aaaa();*/
	
	
	public CharSequence count_receive(String msg_email);

	public List<MsgDto> getmsglist(String msg_email);//쪽지 리스트 가져오기

	public int readConfirm(int msg_seq);//쪽지 읽음 여부 확인
	public MsgDto detailmsg(int msg_seq);//쪽지 상세보기

	public boolean muldelmsg(String[] seqs);


	
}
