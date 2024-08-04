package muni.order.repository;

import java.util.List;

import muni.order.dto.UserWishDto;

public interface UserWishRepo {

	int insertWish(UserWishDto userWish);

	UserWishDto selectWish(UserWishDto userWish);

	List<UserWishDto> selectWishList(String userId);

}
