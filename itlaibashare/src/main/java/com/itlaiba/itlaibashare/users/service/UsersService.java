package com.itlaiba.itlaibashare.users.service;

import java.util.List;

import com.itlaiba.itlaibashare.users.pojo.Users;
import com.itlaiba.itlaibashare.users.pojo.UsersExample;

public interface UsersService {
	List<Users> selectByExample(UsersExample example,Users users) throws RuntimeException;
}
