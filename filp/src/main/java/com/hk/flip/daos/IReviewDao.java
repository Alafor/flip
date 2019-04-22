package com.hk.flip.daos;

import com.hk.flip.dtos.ReviewDto;

public interface IReviewDao {
	
	public boolean cReview(ReviewDto dto); //강의 후기 등록

}
