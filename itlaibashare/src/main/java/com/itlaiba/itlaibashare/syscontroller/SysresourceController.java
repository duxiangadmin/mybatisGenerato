package com.itlaiba.itlaibashare.syscontroller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

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
	

}