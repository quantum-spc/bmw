package web.baemin.review.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.baemin.board.dto.Board;
import web.baemin.review.dto.Review;
import web.baemin.review.mapper.ReviewMapper;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ReviewServiceImpl implements ReviewService{

    private final ReviewMapper reviewMapper;

    @Override
    public List<Review> reviewList() {
        List<Review> reviewList = reviewMapper.reviewList();
        log.info("reviewList : {}", reviewList.toString());

        return reviewList;
    }

    @Override
    public Review reviewRead(String id) {

        Review review = reviewMapper.reviewRead(id);

        return review;
    }

    @Override
    public void reviewInsert(Review review) {
        reviewMapper.reviewInsert(review);

    }

    @Override
    public void reviewUpdate(Review review) {
        reviewMapper.reviewUpdate(review);

    }
}
