package com.itlaiba.itlaibashare.users.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itlaiba.itlaibashare.users.mapper.UsersMapper;
import com.itlaiba.itlaibashare.users.pojo.Users;
import com.itlaiba.itlaibashare.users.pojo.UsersExample;
import com.itlaiba.itlaibashare.users.pojo.UsersExample.Criteria;
import com.itlaiba.itlaibashare.users.service.UsersService;

/**
 * 业务层 * 
 * @author 杜翔
 * @版本 V 1.0 
 * @date 2018年6月14日 上午12:19:07
 */
@Service
@Transactional
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersMapper usersMapper;
	
	/**
	 * 登陆方法，添加多条件查询
	 */
	public List<Users> selectByExample(UsersExample example,Users users) throws RuntimeException{
		try {
			/*
			 * 通过自动生成的example对象获取criteria
			 * 通过criteria的方法添加多个值的条件查询
			 * */
			Criteria criteria = example.createCriteria();
			criteria.andLoginIdEqualTo(users.getLoginId());
			criteria.andLoginPwdEqualTo(users.getLoginPwd());
			List<Users> list = usersMapper.selectByExample(example);
			return list;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}

}
