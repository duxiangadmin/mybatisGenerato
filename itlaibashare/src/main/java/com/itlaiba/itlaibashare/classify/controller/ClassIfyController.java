package com.itlaiba.itlaibashare.classify.controller;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itlaiba.itlaibashare.classify.pojo.BlogClassify;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassifyExample;
import com.itlaiba.itlaibashare.classify.service.ClassIfyImpl;

@Controller
@RequestMapping("/classify")
public class ClassIfyController {

	@Autowired
	private ClassIfyImpl impl;
	
//	@RequestMapping("/selectify")
//	public void list(BlogClassifyExample example,HttpServletRequest req){
//		List<BlogClassify> list = impl.list(example);
//		req.setAttribute("classifys", list);
//	}
}
