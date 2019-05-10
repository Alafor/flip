package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.MsgDto;

public interface IMsgDao {
	/*public void aaaa();*/
	
	
	public CharSequence count_receive(String msg_email);

	public List<MsgDto> getmsglist(String msg_email);

	
}
