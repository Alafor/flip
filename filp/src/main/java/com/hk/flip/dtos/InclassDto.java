package com.hk.flip.dtos;

public class InclassDto {

	private int seq;
	private String id;
	
	public InclassDto(int seq, String id) {
		this.seq = seq;
		this.id = id;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
