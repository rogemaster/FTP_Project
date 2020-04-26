package com.ftp.projectboard;

import java.util.*;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;




@Service("ftp_projectBoardService")
public class Ftp_projectBoardServiceImpl implements Ftp_projectBoardService{
	
	@Resource(name = "ftp_projectBoardDAO")
	private Ftp_projectBoardDAO dao;
	
	@Override
	public int boardCnt(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.boardCnt(vo);
	}
	 
	@Override
	public List<Ftp_projectBoardVO> all_board_list(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.all_board_list(vo);
	}
	
	@Override
	public List<Ftp_projectBoardVO> search_writer_list(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.search_writer_list(vo);
	}
	
	@Override
	public List<Ftp_projectBoardVO> search_content_list(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.search_content_list(vo);
	}
	
	
	
	
	
	
	
	@Override
	public String board_save(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.board_save(vo);
	}
	
	@Override
	public int board_update(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.board_update(vo);
	}
	
	@Override
	public Ftp_projectBoardVO board_view(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.board_view(vo);
	}

	@Override
	public int board_delete(Ftp_projectBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.board_delete(vo);
	}





}
