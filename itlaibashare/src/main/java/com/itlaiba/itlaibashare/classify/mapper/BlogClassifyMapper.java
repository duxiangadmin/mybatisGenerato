package com.itlaiba.itlaibashare.classify.mapper;

import com.itlaiba.itlaibashare.classify.pojo.BlogClassify;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassifyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogClassifyMapper {
    long countByExample(BlogClassifyExample example);

    int deleteByExample(BlogClassifyExample example);

    int deleteByPrimaryKey(Integer classId);

    int insert(BlogClassify record);

    int insertSelective(BlogClassify record);

    List<BlogClassify> selectByExample(BlogClassifyExample example);

    BlogClassify selectByPrimaryKey(Integer classId);

    int updateByExampleSelective(@Param("record") BlogClassify record, @Param("example") BlogClassifyExample example);

    int updateByExample(@Param("record") BlogClassify record, @Param("example") BlogClassifyExample example);

    int updateByPrimaryKeySelective(BlogClassify record);

    int updateByPrimaryKey(BlogClassify record);
}