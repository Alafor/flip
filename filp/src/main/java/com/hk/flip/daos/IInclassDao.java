package com.hk.flip.daos;

import java.util.List;

import com.hk.flip.dtos.ClassDto;

public interface IInclassDao {

	public boolean addInclass(int member_id, int class_seq);

	public boolean checkInclass(String id, int seq);

	public List<ClassDto> getAllMyInclass(int member_seq);

	public boolean delMyinclass(int member_seq, String[] class_seqs);




}
