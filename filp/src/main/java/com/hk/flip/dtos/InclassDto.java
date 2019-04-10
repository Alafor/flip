package com.hk.flip.dtos;

public class InclassDto {

	private int seq;
	private String inclass_id;
	
	public InclassDto(int seq, String inclass_id) {
		this.seq = seq;
		this.inclass_id = inclass_id;
	}

	public InclassDto() {
		// TODO Auto-generated constructor stub
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getInclass_id() {
		return inclass_id;
	}

	public void setInclass_id(String inclass_id) {
		this.inclass_id = inclass_id;
	}

}
