package muni.user.repository;

import java.util.List;

import muni.user.dto.UserDeliveryDto;

public interface UserDeliveryRepo {

	List<UserDeliveryDto> deliList(String userId);

	int insert(UserDeliveryDto ud);

	UserDeliveryDto findById(int udNum);

	int update(UserDeliveryDto ud);

}
