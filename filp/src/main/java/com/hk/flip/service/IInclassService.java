package com.hk.flip.service;

import java.util.List;

import com.hk.flip.dtos.InclassDto;

public interface IInclassService {
	public List<InclassDto> myClass(int memberSeq);
}
