package com.ftp.projectuser;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("ftp_projectUserDAO")
public class Ftp_projectUserDAO {
	
	@Autowired
	private SqlMapClient sql;


	//@SuppressWarnings("unchecked")
	public int test(Ftp_projectUserVO vo) throws SQLException {	
		
		return (Integer)sql.queryForObject("ftp_projectUserDAO.test",vo);
	}


}
