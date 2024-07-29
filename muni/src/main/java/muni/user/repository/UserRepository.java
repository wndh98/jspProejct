package muni.user.repository;

import java.util.List;

import muni.paging.Pagination;
import muni.user.dto.UserDto;

public interface UserRepository {
	int save(UserDto user);

	UserDto findById(String userId);

	UserDto loginFindById(String userId);

	UserDto findByCoNum(String userCoNum);

	int findByAllCnt();

	List<UserDto> selectUserList(Pagination pagination);
	
}



