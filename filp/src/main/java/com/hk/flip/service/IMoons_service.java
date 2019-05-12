package com.hk.flip.service;

import com.hk.flip.dtos.MsgDto;

public interface IMoons_service {

	public boolean sendAllMSG(MsgDto msg);

	public boolean sendMSG(MsgDto msg);

}
