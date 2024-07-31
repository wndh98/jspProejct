package muni.user.repository;

import muni.user.dto.UserDto;

public interface UserRepository {
	int save(UserDto user);

	UserDto findById(String userId);

	UserDto loginFindById(String userId);

	UserDto findByCoNum(String userCoNum);
	
}



