package com.hk.flip.service;

import com.hk.flip.dtos.ReviewDto;

public interface IReviewService {
	
	//강의 후기 작성
	public boolean cReview(ReviewDto dto);
}
