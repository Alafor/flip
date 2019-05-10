package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.MsgDto;

public interface IMsgService {

	public CharSequence count_receive(String msg_email);

	public List<MsgDto> getmsglist(String msg_email);

}
