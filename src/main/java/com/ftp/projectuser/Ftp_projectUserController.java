package com.ftp.projectuser;

import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;







 
 

@Controller
public class Ftp_projectUserController {
	
	@Resource(name = "ftp_projectUserService")
	private Ftp_projectUserService service;
	
	@RequestMapping(value = "/ftp_project1_user/ftp_project1_user_list.do")
	public String ftpproject1_user_list(ModelMap model, Ftp_projectUserVO vo, WebRequest wr) throws Exception {
		
		if(wr.getAttribute("id", wr.SCOPE_SESSION) == null) {
			return "views/user/login";
		}else if (wr.getAttribute("id", wr.SCOPE_SESSION).equals("master")){
			return "views/user/list";
		}else {
			return "views/board/list";
		}
		
	}
	
	@RequestMapping(value = "/ftp_project1_user/ftp_project1_user_join.do")
	public String ftpproject1_user_join(HttpServletRequest req, Ftp_projectUserVO vo) throws Exception {
		
		if(req.getParameter("id") == null && req.getParameter("pw") == null) {
			return "views/user/join";
		}else if(req.getParameter("id") != null && req.getParameter("pw") != null){
			
			// 가입화면에서 가입 버튼 눌렀을때 db에 아이디가 있으면 있다고 알림 없으면 가입 승인
			
			return "";
		}else {	
			
			return "";
		}
		
	}
	
	
	
}
