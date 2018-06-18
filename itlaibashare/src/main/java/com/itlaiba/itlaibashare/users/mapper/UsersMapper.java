package com.itlaiba.itlaibashare.users.mapper;

import com.itlaiba.itlaibashare.users.pojo.Users;
import com.itlaiba.itlaibashare.users.pojo.UsersExample;
import com.itlaiba.itlaibashare.users.pojo.UsersKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
    long countByExample(UsersExample example);

    int deleteByExample(UsersExample example);

    int deleteByPrimaryKey(UsersKey key);

    int insert(Users record);

    int insertSelective(Users record);

    List<Users> selectByExample(UsersExample example);

    Users selectByPrimaryKey(UsersKey key);

    int updateByExampleSelective(@Param("record") Users record, @Param("example") UsersExample example);

    int updateByExample(@Param("record") Users record, @Param("example") UsersExample example);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}