package com.hk.flip.dtos;

public class SearchDto {
	private int search_seq;
	private String search_word;
	private int search_count;
	public SearchDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchDto(int search_seq, String search_word, int search_count) {
		super();
		this.search_seq = search_seq;
		this.search_word = search_word;
		this.search_count = search_count;
	}
	@Override
	public String toString() {
		return "SearchDto [search_seq=" + search_seq + ", search_word=" + search_word + ", search_count=" + search_count
				+ "]";
	}
	public int getSearch_seq() {
		return search_seq;
	}
	public void setSearch_seq(int search_seq) {
		this.search_seq = search_seq;
	}
	public String getSearch_word() {
		return search_word;
	}
	public void setSearch_word(String search_word) {
		this.search_word = search_word;
	}
	public int getSearch_count() {
		return search_count;
	}
	public void setSearch_count(int search_count) {
		this.search_count = search_count;
	}
	
	
}	
