package com.ftp.projectboard;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("ftp_projectBoardDAO")
public class Ftp_projectBoardDAO {
	
	@Autowired
	private SqlMapClient sql;


	//@SuppressWarnings("unchecked")
	public int boardCnt(Ftp_projectBoardVO vo) throws SQLException {
		
		return (Integer) sql.queryForObject("ftp_projectBoardDAO.boardCnt", vo);
	}
	
	
	
	public List<Ftp_projectBoardVO> all_board_list(Ftp_projectBoardVO vo) throws SQLException {
		
		return (List<Ftp_projectBoardVO>) sql.queryForList("ftp_projectBoardDAO.all_board_list", vo);
	}
	
	public List<Ftp_projectBoardVO> search_writer_list(Ftp_projectBoardVO vo) throws SQLException {
		
		return (List<Ftp_projectBoardVO>) sql.queryForList("ftp_projectBoardDAO.search_writer_list", vo);
	}
	
	public List<Ftp_projectBoardVO> search_content_list(Ftp_projectBoardVO vo) throws SQLException {
		
		return (List<Ftp_projectBoardVO>) sql.queryForList("ftp_projectBoardDAO.search_content_list", vo);
	}

	public String board_save(Ftp_projectBoardVO vo) throws SQLException {
		
		return (String)sql.insert("ftp_projectBoardDAO.board_save", vo);
	}
	
	public Ftp_projectBoardVO board_view(Ftp_projectBoardVO vo) throws SQLException {
		
		return (Ftp_projectBoardVO) sql.queryForObject("ftp_projectBoardDAO.board_view", vo);
	}
	
	
	
	
	
	public int board_update(Ftp_projectBoardVO vo) throws SQLException {
		
		return (Integer)sql.update("ftp_projectBoardDAO.board_update", vo);
	}
	
	
	public int board_delete(Ftp_projectBoardVO vo) throws SQLException {
		
		return (Integer)sql.delete("ftp_projectBoardDAO.board_delete", vo);
	}
}
