package com.ftp.projectmain;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("ftp_projectMainDAO")
public class Ftp_projectMainDAO {
	
	@Autowired
	private SqlMapClient sql;


	//@SuppressWarnings("unchecked")
	public int test(Ftp_projectMainVO vo) throws SQLException {	
		
		return (Integer)sql.queryForObject("ftp_projectMainDAO.test",vo);
	}

	public List<Ftp_projectMainVO> List_Ftpboard(Ftp_projectMainVO vo) throws SQLException {
		return sql.queryForList("ftp_projectMainDAO.List_Ftpboard", vo);
	}

}
