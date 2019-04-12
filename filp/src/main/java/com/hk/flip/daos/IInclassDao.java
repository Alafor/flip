package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IInclassDao {

	boolean addInclass(String id, int seq);

	boolean checkInclass(String id, int seq);

	List<ClassDto> getAllMyInclass(String id);

	boolean delMyinclass(String id, String[] seq);

}
