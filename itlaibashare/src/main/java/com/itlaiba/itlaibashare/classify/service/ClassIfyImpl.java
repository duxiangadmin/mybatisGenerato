package com.itlaiba.itlaibashare.classify.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itlaiba.itlaibashare.classify.mapper.BlogClassifyMapper;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassify;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassifyExample;

@Service
@Transactional
public class ClassIfyImpl {

	@Autowired
	private BlogClassifyMapper mapper;
	
	public List<BlogClassify> list(BlogClassifyExample example){
		return mapper.selectByExample(example);
	}
}
