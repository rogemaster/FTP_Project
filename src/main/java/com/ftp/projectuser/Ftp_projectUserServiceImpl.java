package com.ftp.projectuser;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;




@Service("ftp_projectUserService")
public class Ftp_projectUserServiceImpl implements Ftp_projectUserService{
	
	@Resource(name = "ftp_projectUserDAO")
	private Ftp_projectUserDAO dao;
	 
	@Override
	public int test(Ftp_projectUserVO vo) throws Exception {
		return dao.test(vo);
	}

}
