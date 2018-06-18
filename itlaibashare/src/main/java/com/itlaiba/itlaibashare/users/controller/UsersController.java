package com.itlaiba.itlaibashare.users.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itlaiba.itlaibashare.users.pojo.Users;
import com.itlaiba.itlaibashare.users.pojo.UsersExample;
import com.itlaiba.itlaibashare.users.service.UsersService;

/**
 * user控制层
 * 这里是管理员登陆的控制层
 * @author 杜翔
 * @版本 V 1.0 
 * @date 2018年6月14日 上午12:15:41
 */
@Controller
@RequestMapping("/user")
public class UsersController {

	@Autowired
	private UsersService usersService;
	
	/*
	 * 用户登陆的方法
	 * example主要用来作为条件查询
	 * 因为用户登录查询需要账号及密码，这里注册一个users对象保存登陆时调教的账号密码
	 * */
	@RequestMapping("/login")
	public String login(UsersExample example,Users users,HttpServletRequest request){
		List<Users> list = null;
		try {
			list = usersService.selectByExample(example, users);
		} catch (Exception e) {
			
		}
//		如果查询出来的list的大小不是0就说明查询成功，是由数据的转发到控制台界面
		if(list!=null && list.size()>0){
			request.getSession().setAttribute("users", list.get(0));			
			return "main/main";
		}else{
			request.setAttribute("msg", "账号或密码错误");
			request.setAttribute("user", users);
			return "forward:/login.jsp";
		}
	}
}
