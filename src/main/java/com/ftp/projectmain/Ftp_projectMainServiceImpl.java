package com.ftp.projectmain;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;




@Service("ftp_projectMainService")
public class Ftp_projectMainServiceImpl implements Ftp_projectMainService{
	
	@Resource(name = "ftp_projectMainDAO")
	private Ftp_projectMainDAO dao;
	 
	@Override
	public int test(Ftp_projectMainVO vo) throws Exception {
		return dao.test(vo);
	}

}
