package com.ftp.projectmain;

import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class Ftp_projectMainController {
	
	@Resource(name = "ftp_projectMainService")
	private Ftp_projectMainService service;
	
	@RequestMapping(value = "/ftp_project_main/ftp_project_main.do", method = RequestMethod.POST)
	public String ftp_project_main(ModelMap model, Ftp_projectMainVO vo) throws Exception {
		
		
		return "views/ftpproject_main";
		
	}
	
	@RequestMapping(value = "/ftp_project_pop/ftp_project_pop.do")
	public String pop(ModelMap model, Ftp_projectMainVO vo) throws Exception {
		System.out.println("Connect?");
		
		
		return "views/pop/pop";
		
	}
	
}
