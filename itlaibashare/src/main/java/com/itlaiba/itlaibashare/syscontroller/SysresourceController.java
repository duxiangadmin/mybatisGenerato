package com.itlaiba.itlaibashare.syscontroller;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itlaiba.itlaibashare.category.pojo.Category;
import com.itlaiba.itlaibashare.category.service.CategoryService;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassify;
import com.itlaiba.itlaibashare.classify.pojo.BlogClassifyExample;
import com.itlaiba.itlaibashare.classify.service.ClassIfyImpl;

/**
 * 用来作为系统数据加载的handler
 * @author 杜翔
 * @版本 V 1.0 
 * @date 2018年6月14日 上午12:15:04
 */
@Controller
public class SysresourceController {

	@Autowired
	ServletContext application;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ClassIfyImpl impl;
	
	/*@PostConstruct
	public void category(){
		try {
			List<Category> categories = categoryService.selectList();
			application.setAttribute("categorys",categories);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/
	
	@PostConstruct
	public void list(){
		List<BlogClassify> list = impl.list(null);
		application.setAttribute("classifys", list);
	}

}