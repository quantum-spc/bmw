package web.baemin.review.mapper;

import org.apache.ibatis.annotations.Mapper;
import web.baemin.review.dto.Review;

import java.util.List;

@Mapper
public interface ReviewMapper {

    List<Review> reviewList();

    Review reviewRead(String id);

    void reviewInsert(Review review);

    void reviewUpdate(Review review);
}
